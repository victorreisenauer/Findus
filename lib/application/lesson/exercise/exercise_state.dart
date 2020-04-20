part of 'exercise_bloc.dart';

@freezed
abstract class ExerciseState with _$ExerciseState {
  const factory ExerciseState.initial() = Initial;
  const factory ExerciseState.exerciseBuilt(Template builtExercise) =
      ExerciseBuilt;
  const factory ExerciseState.exerciseError(TemplateFailure error) =
      ExerciseError;
  const factory ExerciseState.exerciseCompleted() = ExerciseCompleted;
}
