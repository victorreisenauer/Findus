part of 'exercise_bloc.dart';

@freezed
abstract class ExerciseEvent with _$ExerciseEvent {
  const factory ExerciseEvent.buildExercise() = BuildExercise;
}
