part of "template0003_bloc.dart";

@freezed
abstract class Template0003Event with _$Template0003Event {
  const factory Template0003Event.startExercise() = StartExercise;
  const factory Template0003Event.centerButtonPressed() = CenterButtonPressed;
  const factory Template0003Event.answerSelected(int index) = AnswerSelected;
}
