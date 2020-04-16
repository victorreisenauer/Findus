import 'package:lrs_app_v3/domain/lesson/exercise.dart';
import 'package:lrs_app_v3/domain/core/value_objects.dart';
import 'package:lrs_app_v3/domain/lesson/value_objects.dart';

ExerciseList sampleExerciseList = ExerciseList([sampleExercise1, sampleExercise2, sampleExercise3]);
Exercise sampleExercise1 = Exercise(
  id: UniqueId(),
  type: ExerciseType("sampleExerciseType1"),
  data: ExerciseData({"1" : "somedata", "2" : [1, 2, 3], "3" : {"3.1" : "spam"}}),
);

Exercise sampleExercise2 = Exercise(
  id: UniqueId(),
  type: ExerciseType("sampleExerciseType2"),
  data: ExerciseData({"1" : "somedata2", "2" : [1, 2, 3, 4], "3" : {"3.1" : "bacon"}}),
);

Exercise sampleExercise3 = Exercise(
  id: UniqueId(),
  type: ExerciseType("sampleExerciseType3"),
  data: ExerciseData({"1" : "somedata3", "2" : [1, 2, 3, 5], "3" : {"3.1" : "and eggs"}}),
);