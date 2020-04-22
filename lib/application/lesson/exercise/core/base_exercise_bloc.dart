import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

part 'base_exercise_event.dart';
part 'base_exercise_state.dart';
part 'base_exercise_bloc.freezed.dart';

class BaseExerciseBloc extends Bloc<BaseExerciseEvent, BaseExerciseState> {
  @override
  BaseExerciseState get initialState => BaseExerciseState.initial();

  @override
  Stream<BaseExerciseState> mapEventToState(
    BaseExerciseEvent event,
  ) async* {
    yield* event.map(showAbortDismissed: (e) async* {
      yield BaseExerciseState.show(false, false);
    }, showAbortPressed: (e) async* {
      yield BaseExerciseState.show(false, true);
    }, showHelpDismissed: (e) async* {
      yield BaseExerciseState.show(false, false);
    }, showHelpPressed: (e) async* {
      yield BaseExerciseState.show(true, false);
    }, showStandardScreen: (e) async* {
      yield BaseExerciseState.show(false, false);
    });
  }
}
