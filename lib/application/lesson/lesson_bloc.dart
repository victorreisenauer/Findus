import 'dart:async';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:mockito/mockito.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:lrs_app_v3/domain/core/value_objects.dart';
import 'package:lrs_app_v3/domain/lesson/i_lesson_facade.dart';
import 'package:lrs_app_v3/domain/lesson/lesson.dart';
import 'package:lrs_app_v3/domain/lesson/exercise.dart';
import 'package:lrs_app_v3/domain/lesson/lesson_failure.dart';
import 'package:lrs_app_v3/domain/lesson/value_objects.dart';

part 'lesson_event.dart';
part 'lesson_state.dart';

part 'lesson_bloc.freezed.dart';

@injectable
class LessonBloc extends Bloc<LessonEvent, LessonState> {
  final ILessonFacade _lessonFacade;
  int _index = 0;
  Lesson _currentLesson;

  LessonBloc(this._lessonFacade);

  StreamSubscription<Either<LessonFailure, List<UniqueId>>>
      _lessonStreamSubscription;

  @override
  LessonState get initialState => LessonState.initial();

  @override
  Stream<LessonState> mapEventToState(
    LessonEvent event,
  ) async* {
    yield* event.map(fetchAllLessonIds: (e) async* {
      yield const LessonState.lessonLoading();
      await _lessonStreamSubscription?.cancel();
      _lessonStreamSubscription = _lessonFacade
          .getUserLessonIds()
          .listen((lessons) => add(LessonEvent.lessonIdsReceived(lessons)));
    }, lessonIdsReceived: (e) async* {
      yield e.ids.fold(
        (f) => LessonState.lessonError(f),
        (ids) => LessonState.allLessonIdsLoaded(ids),
      );
    }, startLesson: (e) async* {
      yield LessonLoading();
      final failureOrLesson = await _lessonFacade.getLessonById(e.id);
      yield failureOrLesson.fold((f) => LessonError(f), (lesson) {
        this._index = 0;
        this._currentLesson = lesson;
        final Exercise exercise =
            _currentLesson.exerciseList.getOrCrash()[_index];
        final int lessonLength = _currentLesson.exerciseList.length;
        return LessonStarted(exercise, lessonLength);
      });
    }, advanceLesson: (e) async* {
      this._index++;
      final Exercise exercise =
          _currentLesson.exerciseList.getOrCrash()[_index];
      yield LessonAdvanced(exercise);
    }, finishLesson: (e) async* {
      _lessonFacade.saveResults(e.results);
      yield LessonFinished();
    }, abortLesson: (e) async* {
      yield LessonAborted();
    });
  }

  @override
  Future<void> close() async {
    await _lessonStreamSubscription.cancel();
    return super.close();
  }
}
