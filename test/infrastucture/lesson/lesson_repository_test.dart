import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:lrs_app_v3/domain/core/value_objects.dart';
import 'package:lrs_app_v3/domain/lesson/lesson_barrel.dart';
import 'package:lrs_app_v3/infrastructure/core/local_exceptions.dart';
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
  String testUserIdStr = "a4cdeb10-a285-11ea-bed0-ab5e0a04210d";
  UniqueId testUserId = UniqueId.fromUniqueId(testUserIdStr);

  String testLessonIdStr = "112ca4f0-a285-11ea-dd94-eb9bcd40b4a0";
  UniqueId testLessonId = UniqueId.fromUniqueId(testLessonIdStr);

  String testLessonResultIdStr = "222ca4f0-a285-11ea-dd94-eb9bcd90b4a0";
  UniqueId testLessonResultId = UniqueId.fromUniqueId(testLessonResultIdStr);

  LessonResultModel testLessonResultModel1 = LessonResultModel(
    id: testLessonResultIdStr,
    resultsList: [],
    assignedToUserId: testUserIdStr,
  );

  // Tests
  group('LessonRepository', () {
    group('on update => ', () {
      setUp(() {
        when(remoteData.getAvailableLessonData())
            .thenAnswer((realInvocation) async* {
          for (int i = 0; i < 3; i++) {
            yield MockLessonModel();
          }
        });
        when(localData.getLessonResultIdsForUser(testUserId))
            .thenAnswer((_) async* {
          for (int i = 0; i < 3; i++) {
            yield testLessonResultId;
          }
        });
        when(localData.getLessonResultModelById(testLessonResultId))
            .thenAnswer((_) async => testLessonResultModel1);

        clearInteractions(localData);
        clearInteractions(remoteData);
      });
      test('checks if device is online', () {
        when(networkInfo.isConnected).thenAnswer((_) async => true);
        testLessonRepo.update(testUserId);
        verify(networkInfo.isConnected);
      });
      group('if online => ', () {
        setUp(() {
          when(networkInfo.isConnected)
              .thenAnswer((realInvocation) async => true);
        });
        test('gets all lessons from remote data', () async {
          await testLessonRepo.update(testUserId);

          // should get data once
          verify(remoteData.getAvailableLessonData()).called(1);
        });
        test('stores them in cache one by one', () async {
          await testLessonRepo.update(testUserId);

          // should be called 3 times, because remoteData.getAvailableLessonData
          // returns 3 lessonModelJsons (stubbed above)
          verify(localData.cacheLessonModel(any)).called(3);
        });
        test('gets results from cache', () async {
          await testLessonRepo.update(testUserId);

          // should be called 1 time to get all lessonResultIds
          verify(localData.getLessonResultIdsForUser(testUserId)).called(1);
        });
        test(
            'gets from cache, pushes to server, then deletes results one by one',
            () async {
          await testLessonRepo.update(testUserId);
          // should be called 3 times, because localData.getLessonResultIdsForUser
          // returns 3 testLessonResultIds (stubbed above)
          // and each of those ids is used to get result from cache
          verify(localData.getLessonResultModelById(any)).called(3);
          // then push it to remoteData
          verify(remoteData.pushResult(any)).called(3);
          // finally delete entry in cache
          verify(localData.removeLessonResultModelById(any)).called(3);
        });

        test('if successful, returns none()', () async {
          expect(await testLessonRepo.update(testUserId), isA<None>());
        });
      });
      group('if offline =>', () {
        test('returns a LessonFailure.deviceOffline', () async {
          when(networkInfo.isConnected)
              .thenAnswer((realInvocation) async => false);

          var response = await testLessonRepo.update(testUserId);

          var option = response.fold(() => null, (a) => a);
          expect(option, isInstanceOf<LessonFailure>());
        });
      });
    });
    group('on getUserLessonIds => ', () {
      test('if there are any, should get Lesson Ids from cache', () async {
        when(localData.getLessonIdsForUser(testUserId)).thenAnswer((_) async* {
          for (int i = 0; i < 3; i++) {
            yield testLessonId;
          }
        });

        var response = await testLessonRepo.getLessonIdsForUser(testUserId);
        response.fold(
            (l) => l,
            (r) => r.toList().then((value) {
                  expect(value, [testLessonId, testLessonId, testLessonId]);
                }));
      });

      test('on CacheEmptyException, returns LessonFailure.noCachedLessons',
          () async {
        when(localData.getLessonIdsForUser(testUserId))
            .thenThrow(CacheEmptyException);

        var response = await testLessonRepo.getLessonIdsForUser(testUserId);

        expect(response.fold((l) => l, (r) => r), isA<NoCachedLessons>());
      });
    });
    group('on getLessonById =>', () {
      test('should get a specific lesson by its id from cache', () async {
        // act
        var response = await testLessonRepo.getLessonById(testLessonId);

        // expect Lesson with testLessonId to be returned
        expect(response.fold((l) => l, (r) => r), isA<Lesson>());

        // verify correct calls are made
        verify(localData.getLessonModelById(testLessonId)).called(1);
      });
    });
    group('on saveResult =>', () {
      test('if successful, should cache a LessonResult, then return none()',
          () async {
        when(localData.cacheLessonResultModel(any)).thenAnswer((_) => null);
        // expect a none option to be returned
        var response = await testLessonRepo.saveResult(
            testLessonResultModel1.toDomain(), testUserId);
        expect(response.fold(() => none(), (a) => a), isA<None>());

        // make sure relevant calls are made
        verify(localData.cacheLessonResultModel(any)).called(1);
      });
    });
  });
}
