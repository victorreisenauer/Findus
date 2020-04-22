part of 'base_exercise_bloc.dart';

@freezed
abstract class BaseExerciseState with _$BaseExerciseState {
  const factory BaseExerciseState.initial() = Initial;
  const factory BaseExerciseState.show(bool showHelp, bool showAbort) = Show;
}
