import 'package:mockito/mockito.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:dartz/dartz.dart';

import 'package:lrs_app_v3/infrastructure/lesson/mock_lesson_repository.dart';
import 'package:lrs_app_v3/application/lesson/lesson_bloc.dart';
import 'package:lrs_app_v3/infrastructure/sample_data/sample_barrel.dart';
import 'package:lrs_app_v3/domain/lesson/exercise.dart';
import 'package:lrs_app_v3/domain/lesson/lesson.dart';
import 'package:lrs_app_v3/domain/lesson/value_objects.dart';
import 'package:lrs_app_v3/domain/core/value_objects.dart';

void main() {
  SampleLessonGenerator sampler = SampleLessonGenerator();
  SampleExerciseGenerator exSampler = SampleExerciseGenerator();
  Lesson sampleLesson = sampler.getSampleObject();
  ObjectList<Lesson> sampleLessonList = sampler.getSampleObjectList();
  Exercise sampleExercise = sampleLesson.exerciseList.getOrCrash()[0];
  Exercise sampleExerciseNext = sampleLesson.exerciseList.getOrCrash()[1];

  group('LessonBloc => ', () {
    test('emits Initial state [] on initialization', () {
      final bloc = LessonBloc(mockLessonRepository);
      expectLater(bloc, emits(LessonState.initial()));
      bloc.close();
    });

    test(
        'emits [Initial, LessonLoading, LessonLoaded(Lesson)] on successful FetchLessonById Event',
        () {
      when(mockLessonRepository.getLessonById(any))
          .thenAnswer((_) async => Right(sampleLesson));
      final bloc = LessonBloc(mockLessonRepository);
      bloc.add(LessonEvent.fetchLessonById(sampleLesson.id));
      expectLater(
          bloc,
          emitsInOrder([
            LessonState.initial(),
            LessonState.lessonLoading(),
            LessonState.lessonLoaded(sampleLesson),
          ]));
      bloc.close();
    });
    test(
        'emits [Initial, LessonLoading, LessonError(e)] on unsuccessful FetchLessonById Event',
        () {
      when(mockLessonRepository.getLessonById(any))
          .thenAnswer((_) async => Left(sampler.getSampleFailure()));
      final bloc = LessonBloc(mockLessonRepository);
      bloc.add(LessonEvent.fetchLessonById(sampler.getSampleObject().id));
      expectLater(
          bloc,
          emitsInOrder([
            LessonState.initial(),
            LessonState.lessonLoading(),
            LessonState.lessonError(sampler.getSampleFailure()),
          ]));
      bloc.close();
    });
    test(
        'emits [Initial, LessonsLoading, AllLessonsLoaded(LessonList)] on successful FetchAllLessons Event',
        () {
      when(mockLessonRepository.getUserLessons())
          .thenAnswer((_) async => Right(sampleLessonList));
      final bloc = LessonBloc(mockLessonRepository);
      bloc.add(LessonEvent.fetchAllLessons());
      expectLater(
          bloc,
          emitsInOrder([
            LessonState.initial(),
            LessonState.lessonLoading(),
            LessonState.allLessonsLoaded(sampleLessonList),
          ]));
      bloc.close();
    });
    test(
        'emits [Initial, LessonsLoading, LessonError(e)] on unsuccessful FetchAllLessons Event',
        () {
      when(mockLessonRepository.getUserLessons())
          .thenAnswer((_) async => Left(sampler.getSampleFailure()));
      final bloc = LessonBloc(mockLessonRepository);
      bloc.add(LessonEvent.fetchAllLessons());
      expectLater(
          bloc,
          emitsInOrder([
            LessonState.initial(),
            LessonState.lessonLoading(),
            LessonState.lessonError(sampler.getSampleFailure()),
          ]));
      bloc.close();
    });
  });

  group('LessonBloc =>', () {
    test(' emits [LessonStarted] on successful startLesson Event', () {
      final bloc = LessonBloc(mockLessonRepository);
      bloc.add(LessonEvent.startLesson(sampleLesson));
      expectLater(
          bloc,
          emitsInOrder([
            LessonState.initial(),
            LessonState.lessonStarted(sampleExercise)
          ]));
      bloc.close();
    });
    test('emits [LessonAdvanced] on advanceLesson Event', () {
      final bloc = LessonBloc(mockLessonRepository);
      bloc.add(LessonEvent.advanceLesson());
      expectLater(
          bloc,
          emitsInOrder([
            LessonState.initial(),
            LessonState.lessonAdvanced(sampleExerciseNext)
          ]));
      bloc.close();
    });
    test('emits [] on finishLesson Event', () {});
    test('emits [] on abortLesson Event', () {});
  });
}
