part of 'base_template_bloc.dart';

@freezed
abstract class BaseTemplateEvent with _$BaseTemplateEvent {
  const factory BaseTemplateEvent.showHelpPressed() = ShowHelpPressed;
  const factory BaseTemplateEvent.showAbortPressed() = ShowAbortPressed;
  const factory BaseTemplateEvent.showHelpDismissed() = ShowHelpDismissed;
  const factory BaseTemplateEvent.showAbortDismissed() = ShowAbortDismissed;
  const factory BaseTemplateEvent.showStandardScreen() = ShowStandardScreen;
}
