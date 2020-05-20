import 'package:flutter_test/flutter_test.dart';

main() {
  group('[Env: test] LocalLessonRepository => ', () {
    group('on cacheLessonModel =>', () {
      test('if successful, caches LessonModel by id', () async {});
    });
    group('on getLessonModelIds =>', () {
      test('if cache is empty, raise CacheEmpty Exception', () {});
      test('if successful, returns lessonModel Ids ', () {});
    });

    group('on getLessonModelById(lessonId)', () {
      test('if successful, returns LessonModel ', () {});
      test('if cache empty, raise CacheEmptyException', () {});
      test('if lessonId not found in cache, raise KeyNotFoundException', () {});
    });
  });
}
