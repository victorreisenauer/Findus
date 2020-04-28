import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lrs_app_v3/application/lesson/exercise/exercises/template_0001/template_0001_bloc.dart';
import 'package:lrs_app_v3/domain/lesson/lesson_barrel.dart';
import 'package:lrs_app_v3/presentation/pages/exercise/templates/template.dart';
import 'package:lrs_app_v3/presentation/pages/exercise/templates/template_0001/widgets/body.dart';

class Template0001 extends Template {
  final ExerciseType type = ExerciseType('sampleType1');
  final ExerciseData exerciseData;

  Template0001({this.exerciseData});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => Template0001Bloc(exerciseData: exerciseData),
      child: Template_1Body(),
    );
  }
}
