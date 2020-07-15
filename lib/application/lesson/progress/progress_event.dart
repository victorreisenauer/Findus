part of "progress_bloc.dart";

@freezed
abstract class ProgressEvent with _$ProgressEvent {
  // ignore: avoid_positional_boolean_parameters
  const factory ProgressEvent.updateProgress(bool correct) = UpdateProgress;
  const factory ProgressEvent.startProgress(int lessonLength) = StartProgress;
}
