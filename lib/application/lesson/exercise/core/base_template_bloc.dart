import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

part 'base_template_event.dart';
part 'base_template_state.dart';
part 'base_template_bloc.freezed.dart';

class BaseTemplateBloc extends Bloc<BaseTemplateEvent, BaseTemplateState> {
  BaseTemplateBloc() : super(BaseTemplateState.initial());

  @override
  Stream<BaseTemplateState> mapEventToState(
    BaseTemplateEvent event,
  ) async* {
    yield* event.map(showAbortDismissed: (e) async* {
      yield BaseTemplateState.show(false, false);
    }, showAbortPressed: (e) async* {
      yield BaseTemplateState.show(false, true);
    }, showHelpDismissed: (e) async* {
      yield BaseTemplateState.show(false, false);
    }, showHelpPressed: (e) async* {
      yield BaseTemplateState.show(true, false);
    }, showStandardScreen: (e) async* {
      yield BaseTemplateState.show(false, false);
    });
  }
}
