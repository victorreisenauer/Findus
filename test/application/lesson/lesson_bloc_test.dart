import 'package:mockito/mockito.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:dartz/dartz.dart';

import 'package:lrs_app_v3/infrastructure/lesson/test_lesson_repository.dart';
import 'package:lrs_app_v3/application/lesson/lesson_bloc.dart';
import 'package:lrs_app_v3/infrastructure/sample_data/sample_barrel.dart';
import 'package:lrs_app_v3/domain/lesson/lesson_barrel.dart';
import 'package:lrs_app_v3/domain/lesson/lesson.dart';
import 'package:lrs_app_v3/domain/core/value_objects.dart';

void main() {
  SampleLessonGenerator sampler = SampleLessonGenerator();
  SampleExerciseGenerator exSampler = SampleExerciseGenerator();
  Lesson sampleLesson = sampler.getSampleObject();
  ObjectList<Lesson> sampleLessonList = sampler.getSampleObjectList();
  List<UniqueId> sampleLessonListIds = sampler.getSampleObjectListIds();

  Exercise sampleExercise = sampleLesson.exerciseList.getOrCrash()[0];
  Exercise sampleExerciseNext = sampleLesson.exerciseList.getOrCrash()[1];

  TestLessonRepository testLessonRepo = TestLessonRepository();

  group('LessonBloc => ', () {
    test('emits Initial state [] on initialization', () {
      final bloc = LessonBloc(testLessonRepo);
      expectLater(bloc, emits(LessonState.initial()));
    });

    test(
        'emits [Initial, LessonLoading, allLessonIdsLoaded(ObjectList<Ids>)] on successful FetchAllLessonIds Event',
        () {
      final bloc = LessonBloc(testLessonRepo);
      bloc.add(LessonEvent.fetchAllLessonIds());
      expectLater(
          bloc,
          emitsInOrder([
            LessonState.initial(),
            LessonState.lessonLoading(),
            LessonState.allLessonIdsLoaded(sampleLessonListIds),
            LessonState.allLessonIdsLoaded(sampleLessonListIds),
            LessonState.allLessonIdsLoaded(sampleLessonListIds),
          ]));
    });

    test(
        'emits [Initial, LessonLoading, LessonStarted] on successfulStartLesson Event',
        () {
      final bloc = LessonBloc(testLessonRepo);
      bloc.add(LessonEvent.startLesson(sampleLesson.id));
      expectLater(
          bloc,
          emitsInOrder([
            LessonState.initial(),
            LessonState.lessonLoading(),
            LessonState.lessonStarted(sampleLesson.exerciseList.getOrCrash()[0],
                sampleLesson.exerciseList.length),
          ]));
    });
    test(
        'emits [Initial, LessonLoading, LessonStarted, LessonAdvanced] on StartLesson, then AdvanceLesson Event',
        () {
      final bloc = LessonBloc(testLessonRepo);
      bloc.add(LessonEvent.startLesson(sampleLesson.id));
      bloc.add(LessonEvent.advanceLesson());

      expectLater(
          bloc,
          emitsInOrder([
            LessonState.initial(),
            LessonState.lessonLoading(),
            LessonState.lessonStarted(sampleLesson.exerciseList.getOrCrash()[0],
                sampleLesson.exerciseList.length),
            LessonState.lessonAdvanced(
                sampleLesson.exerciseList.getOrCrash()[1])
          ]));
    });
  });
}
