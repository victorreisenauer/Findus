part of "progress_bloc.dart";

@freezed
abstract class ProgressState with _$ProgressState {
  const factory ProgressState.initial() = Initial;
  const factory ProgressState.progressUpdated(int totalExercises, List<bool> alreadyDone) = ProgressUpdated;
}
