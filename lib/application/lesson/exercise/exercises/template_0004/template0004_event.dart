part of "template0004_bloc.dart";

@freezed
abstract class Template0004Event with _$Template0004Event {
  const factory Template0004Event.startExercise() = StartExercise;
  const factory Template0004Event.answerSelected(int answer) = AnswerSelected;
}
