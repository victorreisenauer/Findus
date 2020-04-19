import 'package:flutter_test/flutter_test.dart';

import 'package:lrs_app_v3/domain/core/value_objects.dart';
import '../../../lib/infrastructure/lesson/test_lesson_repository.dart';
import 'package:lrs_app_v3/domain/lesson/value_objects.dart';
import 'package:lrs_app_v3/domain/lesson/lesson.dart';

main() async {
  TestLessonRepository testRepo = TestLessonRepository();

  var eitherObj = await testRepo.getUserLessons();
  print(eitherObj.fold((_) => null, (lessons) => lessons.getOrCrash()));
  group('TestLessonRepository =>', () {
    test('returns sampleLessonFailure if lessonId was not found in lessonList',
        () {
      // first update entitiy objects to not hold validators if data is passed from data models
    });

    test('returns sampleLesson on getLessonById', () async {
      var failureOrLesson = await testRepo.getLessonById(UniqueId());
      expect(
          failureOrLesson.fold((_) => null, (lesson) => lesson), isA<Lesson>());
    });

    test('returns sampleLessonList on getUserLessons', () async {
      var failureOrLessons = await testRepo.getUserLessons();
      expect(failureOrLessons.fold((_) => null, (lessons) => lessons),
          isA<ObjectList<Lesson>>());
    });
  });
}
