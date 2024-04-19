import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";

import "../../../../../application/lesson/exercise/exercises/template_0004/template0004_bloc.dart";
import "../../../../../domain/lesson/lesson_barrel.dart";
import "../template.dart";
import "widgets/body.dart";

class Template0004 extends Template {
  @override
  final ExerciseType type = ExerciseType("sampleType3");
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
