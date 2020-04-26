import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lrs_app_v3/application/lesson/exercise/exercises/exerciseBloc_2/bloc/exercise_2_bloc.dart';

import 'package:lrs_app_v3/domain/lesson/value_objects.dart';
import 'package:lrs_app_v3/presenation/pages/exercise/templates/template.dart';
import 'package:lrs_app_v3/presenation/pages/exercise/templates/template_2/widgets/body.dart';

class Temp0002 extends Template {
  final ExerciseType type = ExerciseType('sampleType2');
  final ExerciseData exerciseData;

  Temp0002({this.exerciseData});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => Exercise_2Bloc(exerciseData: exerciseData),
      child: Template_2Body(),
    );
  }
}
