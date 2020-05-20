import 'package:flutter_test/flutter_test.dart';
import 'package:lrs_app_v3/domain/lesson/lesson_barrel.dart';
import 'package:lrs_app_v3/infrastructure/core/network_info.dart';
import 'package:lrs_app_v3/infrastructure/lesson/lesson_barrel.dart';
import 'package:lrs_app_v3/injection.dart';

// set up mock classes and instances

// Specifically test that all calls are made correctly for FirebaseLessonRepository.
// Data and inner workings are irrelevant for now. Those are tested in dev and prod environments.
// Makes mostly use of 'verify()' tests.
main() {
  // setup environment
  TestWidgetsFlutterBinding.ensureInitialized();
  configureInjection(Env.test);

  // Injectable dependencies
  LocalLessonDataSourceFacade localData = getIt<LocalLessonDataSourceFacade>();
  RemoteLessonDataSourceFacade remoteData =
      getIt<RemoteLessonDataSourceFacade>();
  NetworkInfo networkInfo = getIt<NetworkInfo>();

  // Production object with mocked dependencies
  LessonFacade testLessonRepo = LessonRepository(
      localData: localData, remoteData: remoteData, networkInfo: networkInfo);

  // Objects for testing

  // Tests
  group('[env: test] FirebaseLessonRepository', () {
    group('on update => ', () {
      group(
          'if online, gets all lessons from server and pushes unpushed results from cache',
          () {
        test('gets all lessons from server', () {});
        test('stores them in cache one by one', () {});
        test('gets results from cache', () {});
        test('pushes results one by one', () {});
        test('then deletes results one by one (immediately after push)', () {});
      });
      group('if offline =>', () {
        test('returns a LessonFailure.deviceOffline', () {});
      });
    });
    group('on getUserLessonIds => ', () {
      test('should get User Lesson Ids from cache', () {});
    });
    group('on get LessonById =>', () {
      test('should get a specific lesson by its id', () {});
    });
    group('on saveResult =>', () {
      test('should cache a LessonResult', () {});
    });
  });
}
