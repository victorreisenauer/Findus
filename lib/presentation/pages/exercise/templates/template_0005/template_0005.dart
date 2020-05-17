import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lrs_app_v3/application/lesson/exercise/exercises/template_0005/template0005_bloc.dart';
import 'package:lrs_app_v3/domain/lesson/exercise/validated_value_objects.dart';
import 'package:lrs_app_v3/presentation/pages/exercise/templates/template.dart';

import 'widgets/body.dart';

class Template0005 extends Template {
  ExerciseType type = ExerciseType('sampleType5');
  ExerciseData data;

  Template0005({this.data});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => Template0005Bloc(exerciseData: data),
      child: Template0005Body(),
    );
  }
}
