import "package:flutter/material.dart";

import "../../../../domain/lesson/lesson_barrel.dart";

abstract class Template extends StatelessWidget {
  final ExerciseData exerciseData;
  Template({Key key, @required this.exerciseData}) : super(key: key);

  ExerciseType get type;
}
