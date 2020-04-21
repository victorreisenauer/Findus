import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lrs_app_v3/application/lesson/exercise/exercises/exerciseBloc_1/exercise_1_bloc.dart';
import 'package:lrs_app_v3/domain/lesson/value_objects.dart';
import 'package:lrs_app_v3/presenation/pages/exercise/templates/template.dart';
import 'package:lrs_app_v3/presenation/pages/exercise/templates/template_1/widgets/body.dart';

class Temp0001 extends Template {
  final ExerciseType type = ExerciseType('sampleType1');
  final ExerciseData exerciseData;

  Temp0001({this.exerciseData});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => Exercise_1Bloc(exerciseData: exerciseData),
      child: Template_1Body(),
    );
  }
}
