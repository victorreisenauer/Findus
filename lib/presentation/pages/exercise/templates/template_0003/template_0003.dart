import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lrs_app_v3/application/lesson/exercise/exercises/template_0003/template0003_bloc.dart';
import 'package:lrs_app_v3/domain/lesson/exercise/validated_value_objects.dart';
import 'package:lrs_app_v3/presentation/pages/exercise/templates/template.dart';
import 'package:lrs_app_v3/presentation/pages/exercise/templates/template_0003/widgets/body.dart';

class Template0003 extends Template {
  final ExerciseType type = ExerciseType('sampleType3');
  final ExerciseData data;

  Template0003({this.data});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => Template0003Bloc(exerciseData: data),
      child: Template0003Body(),
    );
  }
}
