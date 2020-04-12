import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'lesson_event.dart';
part 'lesson_state.dart';

class LessonBloc extends Bloc<LessonEvent, LessonState> {
  @override
  LessonState get initialState => LessonInitial();

  @override
  Stream<LessonState> mapEventToState(
    LessonEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
