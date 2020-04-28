part of 'base_template_bloc.dart';

@freezed
abstract class BaseTemplateState with _$BaseTemplateState {
  const factory BaseTemplateState.initial() = Initial;
  const factory BaseTemplateState.show(bool showHelp, bool showAbort) = Show;
}
