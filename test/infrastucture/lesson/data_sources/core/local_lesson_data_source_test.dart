import 'package:flutter_test/flutter_test.dart';
import 'package:lrs_app_v3/infrastructure/core/boxes.dart';
import 'package:lrs_app_v3/infrastructure/lesson/lesson_barrel.dart';
import 'package:lrs_app_v3/injection.dart';
import 'package:mockito/mockito.dart';

// set up mock classes & instances

class MockLessonModel extends Mock implements LessonModel {}

main() {
  // setup environment
  TestWidgetsFlutterBinding.ensureInitialized();
  configureInjection(Env.test);

  // Dependencies
  Boxes boxes = getIt<Boxes>();

  // Productioon object with mocked dependencies
  LocalLessonDataSourceFacade testLocalData = LocalLessonDataSource(boxes);

  // Instantiate objects for testing

  LessonModel testLessonModel = MockLessonModel();

  // Tests
  group('[Env: test] LocalLessonRepository => ', () {
    group('on cacheLessonModel =>', () {
      test('if successful, caches LessonModel by id', () async {
        when(boxes.lessonBox.then((box) => box.get(any)))
            .thenReturn(testLessonModel);
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
