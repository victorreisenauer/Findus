import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:hive/hive.dart';

import 'package:lrs_app_v3/infrastructure/lesson/data_sources/local_lesson_data_source.dart';
import 'package:lrs_app_v3/infrastructure/lesson/lesson_barrel.dart';

class MockBox extends Mock implements Box {}

main() {
  group('LocalLessonDataSource =>', () {
    final Box _lessonBox = MockBox();
    final ExerciseModel _exerciseModel = ExerciseModel(
        id: "0002", data: {"hello": "hello"}, type: "sampleType1");
    final LessonModel _lessonModel = LessonModel(
        id: "0001",
        exerciseList: [_exerciseModel, _exerciseModel, _exerciseModel]);
    setUp(() {});

    test('accesses different storages based on env', () {});
    test('stores an ExerciseModel on cacheExercise', () {});
    test('stores a lessonModel on cacheLessonModel', () {});
    test('stores an ExerciseResultModel on cacheExerciseResultModel', () {});
    test('stores a LessonResultModel on cacheLessonResultModel', () {});
    test('gets all available lessonIds from cache on getLessonIds', () {});
    test('gets lessonModel from cache on getLessonById', () {});
    test('gets LessonResult by id or timestamp', () {});
    test('deletes specified results, lesson or exercise entries', () {});
    test('deletes all results, lesson or exercise entries', () {});
  });

  group('TestLocalLessonDataSource => ', () {
    test('caches exercise type', () {});
  });
}
