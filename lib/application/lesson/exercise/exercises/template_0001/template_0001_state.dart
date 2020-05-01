part of 'template_0001_bloc.dart';

@freezed
abstract class Template0001State with _$Template0001State {
  const factory Template0001State.initial() = Initial;
  const factory Template0001State.showExercise(List<dynamic> text,
      List<dynamic> answers, String centerButtonText, bool correctionMode,
      [String messageToUser]) = ShowExercise;
}