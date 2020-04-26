part of 'exercise_2_bloc.dart';

@freezed
abstract class Exercise_2Event with _$Exercise_2Event {
  const factory Exercise_2Event.startExercise() = StartExercise;
  const factory Exercise_2Event.playSound() = PlaySound;
  const factory Exercise_2Event.answerSelected({int selectedAnswer}) =
      AnswerSelected;
  const factory Exercise_2Event.nextButtonPressed() = NextPressed;
}
