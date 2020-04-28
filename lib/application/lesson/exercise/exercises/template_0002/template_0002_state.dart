part of 'template_0002_bloc.dart';

@freezed
abstract class Template0002State with _$Template0002State {
  const factory Template0002State.initial() = Initial;
  const factory Template0002State.showExercise(List<String> answers,
      List<Color> colors, String help, bool showNextButton) = ShowExercise;
}
