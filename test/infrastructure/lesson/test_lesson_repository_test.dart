import 'package:flutter_test/flutter_test.dart';

import '../../../lib/infrastructure/lesson/test_lesson_repository.dart';

TestLessonRepository testRepo = TestLessonRepository();

main() {
  group('TestLessonRepository =>', () {
    test('returns sampleLessonFailure if lessonId was not found in lessonList', () {
      // first update entitiy objects to not hold validators if data is passed from data models
    });

    test('returns sampleLesson on getLessonById', () {
      
    });

    test('returns sampleLessonList on getUserLessons', () {});
  });
}
