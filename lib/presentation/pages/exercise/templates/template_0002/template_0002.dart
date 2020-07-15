import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";

import "../../../../../application/lesson/exercise/exercises/template_0002/template_0002_bloc.dart";
import "../../../../../domain/lesson/lesson_barrel.dart";
import "../template.dart";
import "widgets/body.dart";

class Template0002 extends Template {
  @override
  final ExerciseType type = ExerciseType("sampleType2");
  @override
  final ExerciseData exerciseData;

  Template0002({this.exerciseData});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => Template0002Bloc(exerciseData: exerciseData),
      child: Template0002Body(),
    );
  }
}
