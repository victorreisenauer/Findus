import 'dart:convert';

import 'package:cloud_functions/cloud_functions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:lrs_app_v3/infrastructure/lesson/lesson_barrel.dart';
import 'package:lrs_app_v3/injection.dart';
import 'package:mockito/mockito.dart';

// set up mock classes and instances

class MockCloudFunctions extends Mock implements CloudFunctions {}

class MockHttpsCallable extends Mock implements HttpsCallable {}

class MockHttpsResult extends Mock implements HttpsCallableResult {}

main() {
  // Initialize flutter binding
  WidgetsFlutterBinding.ensureInitialized();

  // configure dependency injection
  configureInjection();

  // Dependencies
  CloudFunctions cloudFunctions = MockCloudFunctions();

  // Production object with mocked dependencies
  RemoteLessonDataSourceFacade testRemoteData =
      RemoteFirebaseLessonDataSource(cloudFunctions);

  RemoteLessonDataSourceFacade prodRemoteData =
      getIt<RemoteLessonDataSourceFacade>();

  String testUserIdStr = "a4cdeb10-a285-11ea-bed0-ab5e0a04210d";
  String lessonResultModelId = "fakeId";

  // Instantiate objects for testing
  Map testLessonData = LessonModel(
    exerciseList: [],
    id: "fakeId",
    assignedToUserId: "a4cdeb10-a285-11ea-bed0-ab5e0a04210d",
  ).toJson();
  MockHttpsCallable testHttpsCallable = MockHttpsCallable();
  MockHttpsResult testResult = MockHttpsResult();

  LessonResultModel lessonResultModel = LessonResultModel(
      assignedToUserId: testUserIdStr,
      id: lessonResultModelId,
      resultsList: []);

  // Tests
  group('RemoteFirebaseLessonDataSource =>', () {
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

      /*
      test('interaction works', () {
        print(prodRemoteData.getAvailableLessonData().first);
      });
      */
    });
    group('on pushResults => ', () {
      setUp(() {
        when(cloudFunctions.getHttpsCallable(functionName: "submitLesson"))
            .thenAnswer((realInvocation) => testHttpsCallable);
        when(testHttpsCallable.call()).thenAnswer((_) async => testResult);
      });
      test('calls cloud function', () async {
        await testRemoteData.pushResult(lessonResultModel);
        verify(cloudFunctions.getHttpsCallable(functionName: "submitLesson"));
      });

      /*
      test('interaction works', () {
        prodRemoteData.pushResult(lessonResultModel);
      });
      */
    });
  });
}
