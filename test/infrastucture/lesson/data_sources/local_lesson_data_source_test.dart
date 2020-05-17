import 'package:flutter_test/flutter_test.dart';
import 'package:hive/hive.dart';
import 'package:kt_dart/collection.dart';
import 'package:lrs_app_v3/domain/core/value_objects.dart';
import 'package:lrs_app_v3/domain/lesson/lesson_barrel.dart';
import 'package:lrs_app_v3/infrastructure/core/boxes.dart';
import 'package:lrs_app_v3/infrastructure/lesson/lesson_barrel.dart';
import 'package:lrs_app_v3/injection.dart';

main() {
  configureInjection(Env.test);
  Boxes boxes = getIt<Boxes>();
  group('[Env: test] LocalLessonRepository => ', () {
    Exercise testExercise = Exercise(
        id: UniqueId(),
        type: ExerciseType("sampleType"),
        data: ExerciseData({}));
    configureInjection(Env.test);
    Hive.init('/Users/victo/OneDrive/projects/lrs_app/db');
    LocalLessonDataSource localData = getIt<LocalLessonDataSource>();

    Lesson testLesson = Lesson(
        id: UniqueId(),
        exerciseList: ObjectList<Exercise>(
            [testExercise, testExercise].toImmutableList()));

    group('on cacheLessonModel =>', () {
      test('if successful, caches LessonModel by id', () async {
        localData.cacheLessonModel(LessonModel.fromDomain(testLesson));
        var box = await boxes.lessonBox;
        Map json = box.get(testLesson.id);
        Lesson lesson = LessonModel.fromJson(json).toDomain();
        expect(lesson, testLesson);
      });
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
