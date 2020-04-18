import 'package:mockito/mockito.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:dartz/dartz.dart';

import 'package:lrs_app_v3/infrastructure/lesson/mock_lesson_repository.dart';
import 'package:lrs_app_v3/application/lesson/lesson_bloc.dart';
import 'package:lrs_app_v3/infrastructure/sample_data/sample_lesson.dart';
import 'package:lrs_app_v3/domain/lesson/lesson.dart';
import 'package:lrs_app_v3/domain/lesson/value_objects.dart';

void main() {
  SampleLessonGenerator sampler = SampleLessonGenerator();
  Lesson sampleLesson = sampler.getSampleObject();
  ObjectList<Lesson> sampleLessonList = sampler.getSampleObjectList();

  group('LessonBloc => ', () {
    test('emits initial state on initialization', () {
      final bloc = LessonBloc(mockLessonRepository);
      expectLater(bloc, emits(LessonState.initial()));
      bloc.close();
    });

    test(
        'emits [initial, LessonLoading, LessonLoaded(Lesson)] on successful FetchLessonById Event',
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
        'emits [initial, LessonLoading, LessonError(e)] on unsuccessful FetchLessonById Event',
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
        'emits [initial, AllLessonsLoading, AllLessonsLoaded(LessonList)] on successful FetchAllLessons Event',
        () {
      when(mockLessonRepository.getUserLessons())
          .thenAnswer((_) async => Right(sampleLessonList));
      final bloc = LessonBloc(mockLessonRepository);
      bloc.add(LessonEvent.fetchAllLessons());
      expectLater(
          bloc,
          emitsInOrder([
            LessonState.initial(),
            LessonState.allLessonsLoading(),
            LessonState.allLessonsLoaded(sampleLessonList),
          ]));
      bloc.close();
    });
    test(
        'emits [initial, AllLessonsLoading, AllLessonsError(e)] on unsuccessful FetchAllLessons Event',
        () {
      when(mockLessonRepository.getUserLessons())
          .thenAnswer((_) async => Left(sampler.getSampleFailure()));
      final bloc = LessonBloc(mockLessonRepository);
      bloc.add(LessonEvent.fetchAllLessons());
      expectLater(
          bloc,
          emitsInOrder([
            LessonState.initial(),
            LessonState.allLessonsLoading(),
            LessonState.allLessonsError(sampler.getSampleFailure()),
          ]));
      bloc.close();
    });
  });
}
