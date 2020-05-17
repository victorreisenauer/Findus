import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lrs_app_v3/application/lesson/exercise/exercises/template_0004/template0004_bloc.dart';
import 'package:lrs_app_v3/domain/lesson/lesson_barrel.dart';
import 'package:lrs_app_v3/presentation/pages/exercise/templates/template.dart';
import 'package:lrs_app_v3/presentation/pages/exercise/templates/template_0004/widgets/body.dart';

class Template0004 extends Template {
  final ExerciseType type = ExerciseType('sampleType3');
  final ExerciseData data;

  Template0004({this.data});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => Template0004Bloc(exerciseData: data),
      child: Template0004Body(),
    );
  }
}
