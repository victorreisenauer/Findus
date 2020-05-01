import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';

import 'package:lrs_app_v3/domain/lesson/lesson_barrel.dart';
import 'package:lrs_app_v3/domain/core/value_objects_barrel.dart';

part 'lesson_event.dart';
part 'lesson_state.dart';

part 'lesson_bloc.freezed.dart';

@injectable
class LessonBloc extends Bloc<LessonEvent, LessonState> {
  final LessonFacade _lessonFacade;
  Lesson _currentLesson;

  LessonBloc(this._lessonFacade);

  @override
  LessonState get initialState => LessonState.initial();

  @override
  Stream<LessonState> mapEventToState(
    LessonEvent event,
  ) async* {
    yield* event.map(fetchAllLessonIds: (_) async* {
      yield const LessonState.lessonLoading();
      yield _lessonFacade.getUserLessonIds().fold(
          (f) => LessonState.lessonError(f),
          (idStream) => LessonState.lessonIdStreamLoaded(idStream));
    }, startLesson: (e) async* {
      yield LessonLoading();
      final failureOrLesson = await _lessonFacade.getLessonById(e.id);
      yield failureOrLesson.fold((f) => LessonError(f), (lesson) {
        this._currentLesson = lesson;
        final ObjectList<Exercise> exerciseList = _currentLesson.exerciseList;
        return LessonStarted(exerciseList);
      });
    }, finishLesson: (e) async* {
      LessonResult result = LessonResult(
          id: _currentLesson.id, resultList: e.results.toImmutableList());
      _lessonFacade.saveResult(result);
      yield LessonFinished();
    }, abortLesson: (e) async* {
      yield LessonAborted();
    });
  }
}
