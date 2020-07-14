part of "template_0002_bloc.dart";

@freezed
abstract class Template0002State with _$Template0002State {
  const factory Template0002State.initial() = Initial;
  const factory Template0002State.showExercise(
      // ignore: avoid_positional_boolean_parameters
      List<String> answers,
      List<Color> colors,
      String help,
      // ignore: avoid_positional_boolean_parameters
      bool showNextButton) = ShowExercise;
}
