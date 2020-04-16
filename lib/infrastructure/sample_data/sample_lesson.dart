import 'package:lrs_app_v3/domain/lesson/lesson.dart';
import 'package:lrs_app_v3/domain/lesson/value_objects.dart';
import 'package:lrs_app_v3/domain/core/value_objects.dart';
import 'package:lrs_app_v3/domain/lesson/lesson_failure.dart';
import 'sample_exercise.dart';

LessonList sampleLessonList = LessonList([sampleLesson1, sampleLesson2, sampleLesson3]);

Lesson sampleLesson1 = Lesson(
  exerciseList: ExerciseList(sampleExerciseList.value.fold(
    (failure) => null,
    (value) => value
    )),
  id: UniqueId(),
  );

Lesson sampleLesson2 = Lesson(
  exerciseList: ExerciseList([sampleExercise2]),
  id: UniqueId(),
  );

Lesson sampleLesson3 = Lesson(
  exerciseList: ExerciseList([sampleExercise3, sampleExercise2, sampleExercise3, sampleExercise1]),
  id: UniqueId(),
  );


// some sample LessonFailures

final LessonFailure sampleLessonFailure = LessonFailure.unexpected();