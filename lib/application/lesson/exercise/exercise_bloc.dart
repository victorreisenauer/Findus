import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:auto_route/auto_route.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lrs_app_v3/presentation/pages/exercise/templates/template_0001/template_0001.dart';
import 'package:lrs_app_v3/presentation/pages/exercise/templates/template_0002/template_0002.dart';
import 'package:meta/meta.dart';
import 'package:dartz/dartz.dart';

import 'package:lrs_app_v3/injection.dart';
import 'package:lrs_app_v3/application/lesson/lesson_bloc.dart';
import 'package:lrs_app_v3/domain/lesson/lesson_barrel.dart';
import 'package:lrs_app_v3/domain/core/value_objects.dart';
import 'package:lrs_app_v3/presentation/pages/exercise/templates/template.dart';
import 'package:lrs_app_v3/presentation/routes/router.gr.dart';

part 'exercise_event.dart';
part 'exercise_state.dart';

part 'exercise_bloc.freezed.dart';

class ExerciseBloc extends Bloc<ExerciseEvent, ExerciseState> {
  final ObjectList<Exercise> exerciseList;
  int _index = 0;
  List<ExerciseResult> _results;

  ExerciseBloc({@required this.exerciseList}) : super(ExerciseState.initial());

  // TODO: this template lookup needs some serious work
  // this is unstable, because there can be multiple with the same type, there could be none of that type,
  // instantializing every template with exercisedata before lookup might be inefficient
  Either<TemplateFailure, Template> templateLookup(ExerciseType type, ExerciseData exerciseData) {
    List templates = [
      Template0001(exerciseData: exerciseData),
      Template0002(exerciseData: exerciseData),
    ];
    for (Template temp in templates) {
      if (temp.type == type) {
        return right(temp);
      }
    }
    print("Not template found for type $type");
    return left(TemplateFailure.templateNotFound());
  }

  @override
  Stream<ExerciseState> mapEventToState(
    ExerciseEvent event,
  ) async* {
    yield* event.map(
      buildFirstExercise: (_) async* {
        Exercise exercise = exerciseList.getOrCrash()[0];
        Either<TemplateFailure, Template> failureOrTemplate = templateLookup(exercise.type, exercise.data);
        yield failureOrTemplate.fold(
          (f) => ExerciseState.exerciseError(f),
          (v) {
            print("this was called");
            return ExerciseState.exerciseBuilt(v);
          },
        );
      },
      buildNextExercise: (_) async* {
        if (this._index < this.exerciseList.length) {
          Exercise exercise = exerciseList.getOrCrash()[_index++];
          Either<TemplateFailure, Template> failureOrTemplate = templateLookup(exercise.type, exercise.data);
          yield failureOrTemplate.fold(
            (f) => ExerciseState.exerciseError(f),
            (v) {
              return ExerciseState.exerciseBuilt(v);
            },
          );
        } else {
          getIt<LessonBloc>().add(LessonEvent.finishLesson(this._results));
          ExtendedNavigator.ofRouter<Router>().pushOverviewPage();
          yield ExerciseState.allExercisesCompleted();
        }
      },
      abortExercise: (_) async* {
        ExtendedNavigator.ofRouter<Router>().pushOverviewPage();
        ;
      },
      finishExercise: (e) async* {
        this._results.add(e.result);
        yield ExerciseState.exerciseFinished();
      },
    );
  }
}
