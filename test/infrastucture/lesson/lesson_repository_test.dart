import 'package:flutter_test/flutter_test.dart';

main() {
  group('[Env: test] LessonRepository => ', () {
    group('on getUserLessonIds', () {
      // if online
      // should pull new lessons from server & cache them
      // then get cached lesson ids and return

      // if offline
      // should check if there are cached lessons, if so return lesson ids
      // if not, return LessonFailure.noLessonsAvailable (user must go online)
    });
  });
  group('[Env: prod] LessonRepository => ', () {
    // should delete lessons older than 10 days
  });

  group('[Env: dev] LessonRepository => ', () {
    // should delete lessons older than 10 days

    // if online
    // should pull new lessons for sampleUser from server & cache them
    // then get cached lesson ids and return

    // if offline
    // should check if there are cached lessons, if so return lesson ids
    // if not, return LessonFailure.noLessonsAvailable (user must go online)
  });
}
