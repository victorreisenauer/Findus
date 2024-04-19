import "dart:async";

import "package:auto_route/auto_route.dart";
import "package:bloc/bloc.dart";
import "package:dartz/dartz.dart";
import "package:freezed_annotation/freezed_annotation.dart";
import "package:meta/meta.dart";

import "../../../domain/core/value_objects.dart";
import "../../../domain/lesson/exercise/exercise.dart";
import "../../../domain/lesson/exercise/exercise_result.dart";
import "../../../domain/lesson/exercise/validated_value_objects.dart";
import "../../../domain/lesson/template/template_failure.dart";
import "../../../injection.dart";
import "../../../presentation/pages/exercise/templates/template.dart";
import "../../../presentation/pages/exercise/templates/template_0001/template_0001.dart";
import "../../../presentation/pages/exercise/templates/template_0002/template_0002.dart";
import "../../../presentation/routes/router.gr.dart";
import "../lesson_bloc.dart";

part "exercise_bloc.freezed.dart";
part "exercise_event.dart";
part "exercise_state.dart";

class ExerciseBloc extends Bloc<ExerciseEvent, ExerciseState> {
  final ObjectList<Exercise> exerciseList;
  int _index = 0;
  List<ExerciseResult> _results;

  ExerciseBloc({@required this.exerciseList}) : super(ExerciseState.initial());

  // TODO: this template lookup needs some serious work
  // this is unstable, because there can be multiple with the same type, there could be none of that type,
  // instantiating every template with exercisedata before lookup might be inefficient
  Either<TemplateFailure, Template> templateLookup(ExerciseType type, ExerciseData exerciseData) {
    var templates = [
      Template0001(exerciseData: exerciseData),
      Template0002(exerciseData: exerciseData),
    ];
    for (var temp in templates) {
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
        var exercise = exerciseList.getOrCrash()[0];
        var failureOrTemplate = templateLookup(exercise.type, exercise.data);
        yield failureOrTemplate.fold(
          (f) => ExerciseState.exerciseError(f),
          (v) {
            print("this was called");
            return ExerciseState.exerciseBuilt(v);
          },
        );
      },
      buildNextExercise: (_) async* {
        if (_index < exerciseList.length) {
          var exercise = exerciseList.getOrCrash()[_index++];
          var failureOrTemplate = templateLookup(exercise.type, exercise.data);
          yield failureOrTemplate.fold(
            (f) => ExerciseState.exerciseError(f),
            (v) {
              return ExerciseState.exerciseBuilt(v);
            },
          );
        } else {
          getIt<LessonBloc>().add(LessonEvent.finishLesson(_results));
          await ExtendedNavigator.ofRouter<Router>().pushOverviewPage();
          yield ExerciseState.allExercisesCompleted();
        }
      },
      abortExercise: (_) async* {
        await ExtendedNavigator.ofRouter<Router>().pushOverviewPage();
        ;
      },
      finishExercise: (e) async* {
        _results.add(e.result);
        yield ExerciseState.exerciseFinished();
      },
    );
  }
}
