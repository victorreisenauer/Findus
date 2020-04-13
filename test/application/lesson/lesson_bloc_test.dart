import 'package:mockito/mockito.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:dartz/dartz.dart';

import 'package:lrs_app_v3/infrastructure/lesson/mock_lesson_repository.dart';
import 'package:lrs_app_v3/application/lesson/lesson_bloc.dart';
import 'package:lrs_app_v3/domain/lesson/lesson.dart';

import 'package:lrs_app_v3/domain/core/value_objects.dart';
import 'package:lrs_app_v3/domain/lesson/value_objects.dart';

import 'package:lrs_app_v3/domain/lesson/lesson_failure.dart';



void main() {
  group('LessonBloc => ', () {
    ExerciseList _exerciseList = ExerciseList([]);
    UniqueId _exerciseId = UniqueId();
    Lesson _lesson = Lesson(exerciseList: _exerciseList, id: _exerciseId);
    LessonFailure _lessonFailure = LessonFailure.unexpected();
    LessonList _lessonList = LessonList([]);

    test('emits initial state on initialization', () {
      final bloc = LessonBloc(mockLessonRepository);
      expectLater(
        bloc,
        emits(LessonState.initial())
      );
      bloc.close();
    });

    test('emits [initial, LessonLoading, LessonLoaded(Lesson)] on successful FetchLessonById Event', () {
      when(mockLessonRepository.getLessonById(any))
        .thenAnswer((_) async => Right(_lesson));
      final bloc = LessonBloc(mockLessonRepository);
      bloc.add(LessonEvent.fetchLessonById(1));
      expectLater(
        bloc,
        emitsInOrder([
          LessonState.initial(),
          LessonState.lessonLoading(),
          LessonState.lessonLoaded(_lesson),
        ])
      );
      bloc.close();
    });
    test('emits [initial, LessonLoading, LessonError(e)] on unsuccessful FetchLessonById Event', () {
      when(mockLessonRepository.getLessonById(any))
        .thenAnswer((_) async => Left(_lessonFailure));
      final bloc = LessonBloc(mockLessonRepository);
      bloc.add(LessonEvent.fetchLessonById(1));
      expectLater(
        bloc,
        emitsInOrder([
          LessonState.initial(),
          LessonState.lessonLoading(),
          LessonState.lessonError(_lessonFailure),
        ])
      );
      bloc.close();
    });
    test('emits [initial, AllLessonsLoading, AllLessonsLoaded(LessonList)] on successful FetchAllLessons Event', () {
      when(mockLessonRepository.getUserLessons())
        .thenAnswer((_) async => Right(_lessonList));
      final bloc = LessonBloc(mockLessonRepository);
      bloc.add(LessonEvent.fetchAllLessons());
      expectLater(
        bloc,
        emitsInOrder([
          LessonState.initial(),
          LessonState.allLessonsLoading(),
          LessonState.allLessonsLoaded(_lessonList),
        ])
      );
      bloc.close();
    });
    test('emits [initial, AllLessonsLoading, AllLessonsError(e)] on unsuccessful FetchAllLessons Event', () {
      when(mockLessonRepository.getUserLessons())
        .thenAnswer((_) async => Left(_lessonFailure));
      final bloc = LessonBloc(mockLessonRepository);
      bloc.add(LessonEvent.fetchAllLessons());
      expectLater(
        bloc,
        emitsInOrder([
          LessonState.initial(),
          LessonState.allLessonsLoading(),
          LessonState.allLessonsError(_lessonFailure),
        ])
      );
      bloc.close();
    });


  });
}