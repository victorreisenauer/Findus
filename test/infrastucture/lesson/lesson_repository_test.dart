import 'package:flutter_test/flutter_test.dart';
import 'package:lrs_app_v3/domain/lesson/lesson_barrel.dart';
import 'package:lrs_app_v3/infrastructure/core/network_info.dart';
import 'package:lrs_app_v3/infrastructure/lesson/lesson_barrel.dart';
import 'package:mockito/mockito.dart';

// set up mock classes and instances

class MockLessonModel extends Mock implements LessonModel {}

class MockLessonResultModel extends Mock implements LessonResultModel {}

class MockLocalLessonDataSource extends Mock
    implements LocalLessonDataSourceFacade {}

class MockRemoteLessonDataSource extends Mock
    implements RemoteLessonDataSourceFacade {}

class MockNetworkInfo extends Mock implements NetworkInfo {}

// Specifically test that all calls are made correctly for FirebaseLessonRepository.
// Data and inner workings are irrelevant for now. Those are tested in dev and prod environments.
// Makes mostly use of 'verify()' tests.
main() {
  // Instantiate mocked dependencies
  LocalLessonDataSourceFacade localData = MockLocalLessonDataSource();
  RemoteLessonDataSourceFacade remoteData = MockRemoteLessonDataSource();
  NetworkInfo networkInfo = MockNetworkInfo();

  // Production object with mocked dependencies
  LessonFacade testLessonRepo =
      LessonRepository(localData, remoteData, networkInfo);

  // Objects for testing

  // Tests
  group('[env: test] FirebaseLessonRepository', () {
    group('checks if current user is available', () {
      test('if not, returns LessonFailure.authentificationNeeded', () {});
    });
    group('on update => ', () {
      test('checks if device is online', () {
        when(networkInfo.isConnected)
            .thenAnswer((realInvocation) async => true);
        testLessonRepo.update();
        verify(networkInfo.isConnected);
      });
      group('if online => ', () {
        setUp(() {
          when(networkInfo.isConnected)
              .thenAnswer((realInvocation) async => true);
          when(remoteData.getAvailableLessonData())
              .thenAnswer((realInvocation) async* {
            for (int i = 0; i < 3; i++) {
              yield MockLessonModel();
            }
            when(localData.getUnpushedLessonResults()).thenAnswer((_) async* {
              for (int i = 0; i < 3; i++) {
                yield MockLessonResultModel();
              }
            });
          });
        });
        test('gets all lessons from remote data', () async {
          await testLessonRepo.update();

          verify(remoteData.getAvailableLessonData());
        });
        test('stores them in cache one by one', () async {
          await testLessonRepo.update();

          verify(localData.cacheLessonModel(any)).called(3);
        });
        test('gets results from cache', () async {
          await testLessonRepo.update();

          verify(localData.getUnpushedLessonResults());
        });
        test('pushes results one by one', () async {
          await testLessonRepo.update();

          verify(remoteData.pushResult(any));
        });
        test('then deletes results one by one (immediately after push)',
            () async {
          await testLessonRepo.update();
          verify(localData.removeLessonResultsModel());
        });
      });
      group('if offline =>', () {
        test('returns a LessonFailure.deviceOffline', () async {
          when(networkInfo.isConnected)
              .thenAnswer((realInvocation) async => false);

          var response = await testLessonRepo.update();

          var option = response.fold(() => null, (a) => a);
          expect(option, isA<DeviceOffline>());
        });
      });
    });
    group('on getUserLessonIds => ', () {
      test('should get User Lesson Ids from cache', () {});
    });
    group('on get LessonById =>', () {
      test('should get a specific lesson by its id from cache', () {});
    });
    group('on saveResult =>', () {
      test('should cache a LessonResult', () {});
      test('then delete it immediately', () {});
    });
  });
}
