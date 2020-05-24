import 'dart:convert';

import 'package:cloud_functions/cloud_functions.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:lrs_app_v3/infrastructure/lesson/lesson_barrel.dart';
import 'package:lrs_app_v3/injection.dart';
import 'package:mockito/mockito.dart';

// set up mock classes and instances

class MockCloudFunctions extends Mock implements CloudFunctions {}

class MockHttpsCallable extends Mock implements HttpsCallable {}

class MockHttpsResult extends Mock implements HttpsCallableResult {}

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
  Map testLessonData = LessonModel(exerciseList: [], id: "fakeId").toJson();
  MockHttpsCallable testHttpsCallable = MockHttpsCallable();
  MockHttpsResult testResult = MockHttpsResult();

  // Tests
  group('[Env: test] RemoteFirebaseLessonDataSource =>', () {
    group('on getAvailableLessonData =>', () {
      setUp(() {
        when(cloudFunctions.getHttpsCallable(functionName: "getLessons"))
            .thenAnswer((realInvocation) => testHttpsCallable);
        when(testHttpsCallable.call()).thenAnswer((_) async => testResult);
        when(testResult.data).thenReturn(jsonEncode(testLessonData));
      });
      test('calls cloud function to get lessons', () async {
        await testRemoteData.getAvailableLessonData().toList();
        verify(cloudFunctions.getHttpsCallable(functionName: "getLessons"));
      });

      test('returns lesson stream', () {
        return testRemoteData.getAvailableLessonData().forEach((model) {
          expect(model.toJson(), testLessonData);
        });
      });
      test('on httpsError, throws "NoUserLoggedInException"', () {});
    });
    group('on pushResults => ', () {
      test('', () {});
    });
    group('on close =>', () {
      test('closes connection to firebase server', () {});
    });
  });
}
