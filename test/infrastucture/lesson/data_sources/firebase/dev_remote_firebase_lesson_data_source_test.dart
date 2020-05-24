import 'package:cloud_functions/cloud_functions.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:lrs_app_v3/infrastructure/lesson/lesson_barrel.dart';
import 'package:lrs_app_v3/injection.dart';
import 'package:mockito/mockito.dart';

// set up mock classes and instances

// Specifically test that all calls are made correctly for RemoteFirebaseLessonDataSource.
// Data and inner workings are irrelevant for now. Those are tested in dev and prod environments.
// Makes mostly use of 'verify()' tests.
main() {
  // setup environment
  TestWidgetsFlutterBinding.ensureInitialized();
  configureInjection(Env.test);

  // Dependencies
  CloudFunctions cloudFunctions = getIt<CloudFunctions>();

  // Production object with mocked dependencies
  RemoteLessonDataSourceFacade testRemoteData =
      RemoteFirebaseLessonDataSource(cloudFunctions);

  // Instantiate objects for testing

  // Tests
  group('[Env: test] RemoteFirebaseLessonDataSource =>', () {
    group('on getAvailableLessonData =>', () {
      test('calls cloud function to get users', () {
        when(cloudFunctions.getHttpsCallable(functionName: "getLessons"));
        verify(cloudFunctions.getHttpsCallable(functionName: "getLessons"));
      });
    });
    group('on pushResults => ', () {
      test('', () {});
    });
    group('on close =>', () {
      test('closes connection to ...', () {});
    });
  });
}
