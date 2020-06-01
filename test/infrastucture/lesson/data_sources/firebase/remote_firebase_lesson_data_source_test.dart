import 'dart:convert';

import 'package:cloud_functions/cloud_functions.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:lrs_app_v3/domain/core/value_objects_barrel.dart';
import 'package:lrs_app_v3/infrastructure/core/remote_exceptions.dart';
import 'package:lrs_app_v3/infrastructure/lesson/lesson_barrel.dart';
import 'package:mockito/mockito.dart';

// set up mock classes and instances

class MockCloudFunctions extends Mock implements CloudFunctions {}

class MockHttpsCallable extends Mock implements HttpsCallable {}

class MockHttpsResult extends Mock implements HttpsCallableResult {}

main() {
  // Dependencies
  CloudFunctions cloudFunctions = MockCloudFunctions();

  // Production object with mocked dependencies
  RemoteLessonDataSourceFacade testRemoteData =
      RemoteFirebaseLessonDataSource(cloudFunctions);

  // Instantiate objects for testing
  String testUserIdStr = "a4cdeb10-a285-11ea-bed0-ab5e0a04210d";
  UniqueId testUserId = UniqueId.fromUniqueId(testUserIdStr);

  Map testLessonData = LessonModel(
    exerciseList: [],
    id: "fakeId",
    assignedToUserId: testUserIdStr,
  ).toJson();

  MockHttpsCallable testHttpsCallable = MockHttpsCallable();
  MockHttpsResult testResult = MockHttpsResult();

  // Tests
  group('RemoteFirebaseLessonDataSource =>', () {
    group('on getAvailableLessonData =>', () {
      group('if user is authenticated =>', () {
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
      });

      group('if user is not authenticated =>', () {
        setUp(() {
          when(cloudFunctions.getHttpsCallable(functionName: "getLessons"))
              .thenThrow(Exception());
          // Todo: throw HttpsError()
        });
        test('on httpsError, throws NoLoggedInUserException', () {
          expect(testRemoteData.getAvailableLessonData(),
              throwsA(NoLoggedInUserException));
        });
      });
    });
    group('on pushResults => ', () {
      test('if successful, pushes results', () {});
    });
    group('on close =>', () {
      test('closes connection to firebase server', () {});
    });
  });
}
