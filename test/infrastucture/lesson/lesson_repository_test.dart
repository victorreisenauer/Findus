import 'package:flutter_test/flutter_test.dart';

// test env works with mocked classes only

// dev environment always uses one sample user
// data for that sample user are stored in seperate sampleBoxes

// in production env, everything works like with a normal user

// i can have seperate injectable boxes class for test & prod env

main() {
  group('[Env: test] LessonRepository => ', () {
    // everything works with sample user in backend.
    group('on getUserLessonIds', () {
      // if online
      // should pull new lessons from server & cache them
      // should push lessons results to server

      // if offline
      // should check if there are cached lessons, if so return lesson ids
      // if not, return LessonFailure.noLessonsAvailable (user must go online)
    });
  });
  group('[Env: prod] LessonRepository => ', () {
    // should delete lessons older than 10 days
  });
}
