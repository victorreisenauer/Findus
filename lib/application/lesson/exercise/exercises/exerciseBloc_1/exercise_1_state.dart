part of 'exercise_1_bloc.dart';

@freezed
abstract class Exercise_1State with _$Exercise_1State {
  const factory Exercise_1State.initial() = Initial;
  const factory Exercise_1State.showExercise(List<dynamic> text,
      List<dynamic> answers, String centerButtonText, bool correctionMode,
      [String messageToUser]) = ShowExercise;
}
