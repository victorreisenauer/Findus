import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'exercise_1_event.dart';
part 'exercise_1_state.dart';
part 'exercise_1_bloc.freezed.dart';

@injectable
class Exercise_1Bloc extends Bloc<Exercise_1Event, Exercise_1State> {
  @override
  Exercise_1State get initialState => Exercise_1State.initial();

  @override
  Stream<Exercise_1State> mapEventToState(
    Exercise_1Event event,
  ) async* {}
}
