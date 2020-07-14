import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';
import 'package:lrs_app_v3/domain/core/value_objects_barrel.dart';
import 'package:lrs_app_v3/domain/lesson/lesson_barrel.dart';
import 'package:meta/meta.dart';

part 'lesson_bloc.freezed.dart';
part 'lesson_event.dart';
part 'lesson_state.dart';

@injectable
class LessonBloc extends Bloc<LessonEvent, LessonState> {
  final LessonFacade _lessonFacade;
  Lesson _currentLesson;

  LessonBloc(this._lessonFacade) : super(LessonState.initial());

  @override
  Stream<LessonState> mapEventToState(
    LessonEvent event,
  ) async* {
    yield* event.map(fetchAllLessonIds: (_) async* {
      yield const LessonState.lessonLoading();
      await _lessonFacade.update();
      yield await _lessonFacade.getLessonIdsForUser().then((either) =>
          either.fold((f) => LessonState.lessonError(f), (idStream) => LessonState.lessonIdStreamLoaded(idStream)));
    }, startLesson: (e) async* {
      yield LessonLoading();
      final failureOrLesson = await _lessonFacade.getLessonById(e.id);
      yield failureOrLesson.fold((f) => LessonError(f), (lesson) {
        this._currentLesson = lesson;
        final ObjectList<Exercise> exerciseList = _currentLesson.exerciseList;
        return LessonStarted(exerciseList);
      });
    }, finishLesson: (e) async* {
      LessonResult result = LessonResult(id: _currentLesson.id, resultList: e.results.toImmutableList());
      await _lessonFacade.saveResult(result);
      yield LessonFinished();
    }, abortLesson: (e) async* {
      yield LessonAborted();
    });
  }
}
