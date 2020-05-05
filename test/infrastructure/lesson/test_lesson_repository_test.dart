import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import 'package:lrs_app_v3/infrastructure/lesson/test_lesson_repository.dart';

main() {
  group('TestLessonRepository => ', () {
    // on getUserLessonIds, should go through sample cache and look up ids, return in a stream
    // on getLessonById it should go through cache and get lesson by id
    // should be able to put sample exercises in sample db
    // should save lessonResults in cache every time save results is called
    // should be able to return specific result
  });
}
