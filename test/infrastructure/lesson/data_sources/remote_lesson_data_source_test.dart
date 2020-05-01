import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:lrs_data_client/lrs_api.dart';

import 'package:lrs_app_v3/infrastructure/lesson/lesson_barrel.dart';

class MockApi extends Mock implements Api {}

main() {
  MockApi _api;
  RemoteLessonDataSource _remoteData;
  group('RemoteLessonDataSource =>', () {
    setUp(() {
      _api = MockApi();
      _remoteData = RemoteLessonDataSourceImpl(_api);
    });
    test('should check if api is reachable and w. active session', () async {
      // arrange
      when(_api.checkConnection()).thenAnswer((_) async => true);
      when(_api.validateSession()).thenAnswer((_) async => true);
      // act
      final response = await _remoteData.isAvailable;
      //assert

      expect(response, true);
    });

    group('if server is available', () {
      Map<String, dynamic> _mockJson = {
        "id": "0001",
        "exerciseList": {
          "total_time_spent": 19,
          "durations_listened": [14],
          "answers_given": [19, 21],
          "wrong_answers": [1]
        }
      };
      LessonModel _lessonModel = LessonModel.fromJson(_mockJson);
      List _lessonModelList = [_lessonModel, _lessonModel, _lessonModel];
      setUp(() {});
      test('should get all available lessons from api', () async {
        // arrange
        when(_api.lessonsJson).thenAnswer((_) async => jsonEncode(
            _mockJson)); // api missing _api.lessonsJson; is it a list? or single json?
        // act
        final response = _remoteData.getAvailableLessonData();
        // assert
        verify(_api.lessonsJson);
        expect(response, _lessonModelList);
      });
      test('should push results to api', () {});

      test('should close session after usage', () {
        _remoteData.close();
        verify(_api.close());
      });

      test(
          'should reopen session and get data after close() was already called',
          () {});
    });

    group('if server is unavailable', () {
      test('should throw ServerUnreachableException if server is not reachable',
          () {});
      test('should throw InvalidSessionException if there is no valid session',
          () {});
    });
  });
}
