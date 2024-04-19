part of "template0003_bloc.dart";

@freezed
abstract class Template0003State with _$Template0003State {
  const factory Template0003State.initial() = Initial;
  const factory Template0003State.showText(String text) = ShowText;
  const factory Template0003State.showQuestion(String text, List<String> answers) = ShowQuestion;
  const factory Template0003State.showCorrection(String text, List<String> answers, List<Color> colors) =
      ShowCorrection;
  const factory Template0003State.exerciseFinished() = ExerciseFinished;
}
