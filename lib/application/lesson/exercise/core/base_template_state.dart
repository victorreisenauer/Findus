part of "base_template_bloc.dart";

@freezed
abstract class BaseTemplateState with _$BaseTemplateState {
  const factory BaseTemplateState.initial() = Initial;
  // ignore: avoid_positional_boolean_parameters
  const factory BaseTemplateState.show(bool showHelp, bool showAbort) = Show;
}
