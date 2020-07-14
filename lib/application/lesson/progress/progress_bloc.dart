import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'progress_event.dart';
part 'progress_state.dart';

part 'progress_bloc.freezed.dart';

@injectable
class ProgressBloc extends Bloc<ProgressEvent, ProgressState> {
  int _lessonLength;
  List<bool> _answersTracker = [];

  ProgressBloc() : super(ProgressState.initial());

  @override
  Stream<ProgressState> mapEventToState(
    ProgressEvent event,
  ) async* {
    yield* event.map(startProgress: (e) async* {
      _answersTracker = [];
      _lessonLength = e.lessonLength;
      yield ProgressState.progressUpdated(_lessonLength, _answersTracker);
    }, updateProgress: (e) async* {
      if (e.correct) {
        _answersTracker.add(true);
      } else {
        _answersTracker.add(false);
      }
      yield ProgressState.progressUpdated(_lessonLength, _answersTracker);
    });
  }
}
