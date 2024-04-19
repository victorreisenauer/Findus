part of "exercise_bloc.dart";

@freezed
abstract class ExerciseEvent with _$ExerciseEvent {
  const factory ExerciseEvent.buildFirstExercise() = BuildFirstExercise;
  const factory ExerciseEvent.buildNextExercise() = BuildNextExercise;
  const factory ExerciseEvent.finishExercise(ExerciseResult result) = FinishExercise;
  const factory ExerciseEvent.abortExercise() = AbortExercise;
}
