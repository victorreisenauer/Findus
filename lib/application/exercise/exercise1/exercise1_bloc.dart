import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

part 'exercise1_event.dart';
part 'exercise1_state.dart';

part 'exercise1_bloc.freezed.dart';

class Exercise1Bloc extends Bloc<Exercise1Event, Exercise1State> {
  @override
  Exercise1State get initialState => Exercise1State.initial();

  @override
  Stream<Exercise1State> mapEventToState(
    Exercise1Event event,
  ) async* {
    print(event);
  }
}
