import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:dartz/dartz.dart';

import 'package:lrs_app_v3/domain/lesson/exercise.dart';
import 'package:lrs_app_v3/domain/lesson/value_objects.dart';
import 'package:lrs_app_v3/presenation/templates/exercise_2_temp.dart';
import 'package:lrs_app_v3/domain/lesson/template_failure.dart';
import 'package:lrs_app_v3/presenation/templates/template_list.dart';

part 'exercise_event.dart';
part 'exercise_state.dart';

part 'exercise_bloc.freezed.dart';

@injectable
class ExerciseBloc extends Bloc<ExerciseEvent, ExerciseState> {
  final ObjectList<Exercise> exerciseList;
  int _index = 0;
  List templateList = [Temp0002()];

  ExerciseBloc({@required this.exerciseList});

  @override
  ExerciseState get initialState => ExerciseState.initial();

  Either<TemplateFailure, Template> templateLookup(ExerciseType type) {
    print("exercisetype: $type");
    for (Template temp in templateList) {
      if (temp.type == type) {
        print("templatetype: ${temp.type}");
        return right(temp);
      }
    }
    print("this failed");
    return left(TemplateFailure.templateNotFound());
  }

  @override
  Stream<ExerciseState> mapEventToState(
    ExerciseEvent event,
  ) async* {
    if (event is BuildExercise) {
      Exercise exercise = exerciseList.getOrCrash()[_index++];
      Either<TemplateFailure, Template> failureOrTemplate =
          templateLookup(exercise.type);
      print(failureOrTemplate);
      yield failureOrTemplate.fold(
        (f) => ExerciseError(f),
        (v) => ExerciseBuilt(v),
      );
    }
  }
}
