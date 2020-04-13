import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import 'package:lrs_app_v3/domain/lesson/value_objects.dart';
import 'package:lrs_app_v3/domain/lesson/lesson.dart';
import 'package:lrs_app_v3/domain/lesson/lesson_failure.dart';
import 'package:lrs_app_v3/domain/lesson/i_lesson_facade.dart';
import 'package:lrs_app_v3/domain/core/value_objects.dart';
import 'package:lrs_app_v3/domain/lesson/exercise.dart';


final Exercise sampleExercise = Exercise(id: UniqueId(), type: ExerciseType("syllables"), data: ExerciseData({}));
final Lesson sampleLesson = Lesson(exerciseList: ExerciseList([sampleExercise, sampleExercise, sampleExercise]), id: UniqueId(),);
final LessonFailure lessonError = LessonFailure.unexpected();
final LessonList sampleLessonList = LessonList([sampleLesson, sampleLesson, sampleLesson, sampleLesson]);


@RegisterAs(ILessonFacade, env: Environment.test)
@lazySingleton
class TestLessonRepository implements ILessonFacade {
  Future<Either<LessonFailure, Lesson>> getLessonById(UniqueId id) async {
    if (id == sampleLesson.id) {
      return right(sampleLesson);
    } else {
      return left(lessonError);
    }
  }

  Future<Either<LessonFailure, LessonList>> getUserLessons() async {
    return right(sampleLessonList);
  }
}