import 'package:flutter_test/flutter_test.dart';
import 'package:hive/hive.dart';
import 'package:lrs_app_v3/infrastructure/core/boxes.dart';
import 'package:lrs_app_v3/infrastructure/lesson/lesson_barrel.dart';
import 'package:mockito/mockito.dart';

// set up mock classes & instances

class MockLessonModel extends Mock implements LessonModel {}

class MockBox extends Mock implements Box {}

class MockBoxes extends Mock implements Boxes {}

main() {
  // Dependencies
  Boxes boxes = MockBoxes();

  // Productioon object with mocked dependencies
  LocalLessonDataSourceFacade testLocalData = LocalLessonDataSource(boxes);

  // Instantiate objects for testing

  LessonModel testLessonModel = MockLessonModel();

  // set up boxes
  setUpAll(() {
    when(boxes.lessonBox).thenAnswer((_) async => MockBox());
    when(boxes.resultBox).thenAnswer((_) async => MockBox());
  });

  // Tests
  group('[Env: test] LocalLessonRepository => ', () {
    group('on cacheLessonModel =>', () {
      test('if successful, caches LessonModel by id', () async {
        when(boxes.lessonBox.then((box) => box.get(any))).thenReturn(null);
      });
    });
    group('on getLessonModelIds =>', () {
      test('if cache is empty, raise CacheEmpty Exception', () {});
      test('if successful, returns all lessonModel Ids ', () {});
    });

    group('on getLessonModelById(lessonId) =>', () {
      test('if successful, returns LessonModel ', () {});
      test('if cache empty, raises CacheEmptyException', () {});
      test(
          'if lessonId not found in cache, raises KeyNotFoundException', () {});
    });
  });
}
