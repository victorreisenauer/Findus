part of "template_0002_bloc.dart";

@freezed
abstract class Template0002Event with _$Template0002Event {
  const factory Template0002Event.startExercise() = StartExercise;
  const factory Template0002Event.playSound() = PlaySound;
  const factory Template0002Event.answerSelected({int selectedAnswer}) = AnswerSelected;
  const factory Template0002Event.nextButtonPressed() = NextPressed;
}
