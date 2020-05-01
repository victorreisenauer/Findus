import 'package:flutter_test/flutter_test.dart';
import 'package:lrs_app_v3/application/lesson/exercise/exercise_bloc.dart';
import 'package:lrs_app_v3/infrastructure/sample_data/sample_exercise.dart';
import 'package:lrs_app_v3/domain/lesson/lesson_barrel.dart';
import 'package:lrs_app_v3/presentation/pages/exercise/templates/template.dart';
import 'package:lrs_app_v3/presentation/pages/exercise/templates/template_0002/template_0002.dart';
import 'package:lrs_app_v3/domain/core/value_objects.dart';

void main() {
  group('LessonBloc => ', () {
    SampleExerciseGenerator sampler = SampleExerciseGenerator();
    ObjectList<Exercise> sampleExerciseList = sampler.getSampleObjectList();
    Exercise firstSampleExercise = sampleExerciseList.getOrCrash()[0];
    Exercise secondSampleExercise = sampleExerciseList.getOrCrash()[1];
    Template firstSampleExerciseTemplate =
        Template0002(exerciseData: firstSampleExercise.data);
    Template secondSampleExerciseTemplate =
        Template0002(exerciseData: secondSampleExercise.data);
    test('emits Initial state [] on initialization', () {
      final bloc = ExerciseBloc(exerciseList: sampleExerciseList);
      expectLater(bloc, emits(ExerciseState.initial()));
    });

    test(
        'emits states [Initial, ExerciseBuilt(Widget builtExercise)] on successful BuildExercise Event',
        () {
      final bloc = ExerciseBloc(exerciseList: sampleExerciseList);
      bloc.add(ExerciseEvent.buildNextExercise());
      expectLater(
          bloc,
          emitsInOrder([
            ExerciseState.initial(),
            ExerciseState.exerciseBuilt(firstSampleExerciseTemplate),
          ]));

      bloc.close();
    });
    test('emits states [Initial, ] on StartExercise Event', () {
      final bloc = ExerciseBloc(exerciseList: sampleExerciseList);
      bloc.add(ExerciseEvent.buildFirstExercise());
      bloc.add(ExerciseEvent.buildFirstExercise());
      expectLater(
          bloc,
          emitsInOrder([
            ExerciseState.initial(),
            ExerciseState.exerciseBuilt(firstSampleExerciseTemplate),
            ExerciseState.exerciseBuilt(secondSampleExerciseTemplate),
          ]));

      bloc.close();
    });
  });
}
