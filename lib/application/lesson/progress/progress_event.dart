part of 'progress_bloc.dart';

@freezed
abstract class ProgressEvent with _$ProgressEvent {
  const factory ProgressEvent.updateProgress(bool correct) = UpdateProgress;
  const factory ProgressEvent.startProgress(int lessonLength) = StartProgress;
}
