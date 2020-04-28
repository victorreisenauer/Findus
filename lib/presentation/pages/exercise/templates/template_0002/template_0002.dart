import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lrs_app_v3/application/lesson/exercise/exercises/template_0002/template_0002_bloc.dart';

import 'package:lrs_app_v3/domain/lesson/lesson_barrel.dart';
import 'package:lrs_app_v3/presentation/pages/exercise/templates/template.dart';
import 'package:lrs_app_v3/presentation/pages/exercise/templates/template_0002/widgets/body.dart';

class Template0002 extends Template {
  final ExerciseType type = ExerciseType('sampleType2');
  final ExerciseData exerciseData;

  Template0002({this.exerciseData});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => Template0002Bloc(exerciseData: exerciseData),
      child: Template_2Body(),
    );
  }
}
