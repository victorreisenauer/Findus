part of 'base_exercise_bloc.dart';

@freezed
abstract class BaseExerciseEvent with _$BaseExerciseEvent {
  const factory BaseExerciseEvent.showHelpPressed() = ShowHelpPressed;
  const factory BaseExerciseEvent.showAbortPressed() = ShowAbortPressed;
  const factory BaseExerciseEvent.showHelpDismissed() = ShowHelpDismissed;
  const factory BaseExerciseEvent.showAbortDismissed() = ShowAbortDismissed;
  const factory BaseExerciseEvent.showStandardScreen() = ShowStandardScreen;
}
