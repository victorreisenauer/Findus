import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";

import "../../../../../application/lesson/exercise/exercises/template_0001/template_0001_bloc.dart";
import "../../../../../domain/lesson/lesson_barrel.dart";
import "../template.dart";
import "widgets/body.dart";

class Template0001 extends Template {
  @override
  final ExerciseType type = ExerciseType("sampleType1");
  @override
  final ExerciseData exerciseData;

  Template0001({this.exerciseData});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => Template0001Bloc(exerciseData: exerciseData),
      child: Template0001Body(),
    );
  }
}
