import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/core/value_objects.dart';
import '../../domain/lesson/i_lesson_facade.dart';
import 'package:lrs_app_v3/domain/lesson/lesson.dart';
import 'package:lrs_app_v3/domain/lesson/lesson_failure.dart';
import 'package:lrs_app_v3/domain/lesson/value_objects.dart';

part 'lesson_event.dart';
part 'lesson_state.dart';

part 'lesson_bloc.freezed.dart';

@injectable
class LessonBloc extends Bloc<LessonEvent, LessonState> {
  final ILessonFacade _lessonFacade;

  LessonBloc(this._lessonFacade);

  @override
  LessonState get initialState => LessonState.initial();

  @override
  Stream<LessonState> mapEventToState(
    LessonEvent event,
  ) async* {
    yield* event.map(
      fetchLessonById: (e) async* {
        yield LessonLoading();
        var failureOrLesson = await _lessonFacade.getLessonById(e.id);
        yield failureOrLesson.fold(
          (f) => LessonError(f),
          (l) => LessonLoaded(l),
        );
      },
      fetchAllLessons: (e) async* {
        yield AllLessonsLoading();
        var failureOrLessonList = await _lessonFacade.getUserLessons();
        yield failureOrLessonList.fold(
          (f) => AllLessonsError(f),
          (l) => AllLessonsLoaded(l),
        );
      },
    );
  }
}
