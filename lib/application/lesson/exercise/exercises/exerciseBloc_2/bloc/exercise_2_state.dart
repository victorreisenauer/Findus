part of 'exercise_2_bloc.dart';

@freezed
abstract class Exercise_2State with _$Exercise_2State {
  const factory Exercise_2State.initial() = Initial;
  const factory Exercise_2State.showExercise(List<String> answers,
      List<Color> colors, String help, bool showNextButton) = ShowExercise;
}
