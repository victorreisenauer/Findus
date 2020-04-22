import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:dartz/dartz.dart';

import 'package:lrs_app_v3/domain/lesson/exercise.dart';
import 'package:lrs_app_v3/domain/lesson/value_objects.dart';
import 'package:lrs_app_v3/domain/lesson/template_failure.dart';
import 'package:lrs_app_v3/presenation/pages/exercise/templates/template.dart';
import 'package:lrs_app_v3/presenation/pages/exercise/templates/template_2/exercise_2_temp.dart';
//import 'package:lrs_app_v3/presenation/pages/exercise/templates/template_1/exercise_1_temp.dart';

part 'exercise_event.dart';
part 'exercise_state.dart';

part 'exercise_bloc.freezed.dart';

class ExerciseBloc extends Bloc<ExerciseEvent, ExerciseState> {
  final ObjectList<Exercise> exerciseList;
  int _index = 0;

  ExerciseBloc({@required this.exerciseList});

  @override
  ExerciseState get initialState => ExerciseState.initial();

  // TODO: this template lookup needs some serious work
  // this is unstable, because there can be multiple with the same type, there could be none of that type,
  // instantializing every template with exercisedata before lookup might be inefficient
  Either<TemplateFailure, Template> templateLookup(
      ExerciseType type, ExerciseData exerciseData) {
    List templates = [
      Temp0002(exerciseData: exerciseData),
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
    if (event is BuildExercise) {
      Exercise exercise = exerciseList.getOrCrash()[_index++];
      Either<TemplateFailure, Template> failureOrTemplate =
          templateLookup(exercise.type, exercise.data);
      yield failureOrTemplate.fold(
        (f) => ExerciseError(f),
        (v) {
          return ExerciseBuilt(v);
        },
      );
    }
  }
}
