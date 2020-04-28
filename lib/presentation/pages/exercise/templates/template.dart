import 'package:flutter/material.dart';
import 'package:lrs_app_v3/domain/lesson/lesson_barrel.dart';

abstract class Template extends StatelessWidget {
  final ExerciseData exerciseData;
  Template({Key key, @required this.exerciseData}) : super(key: key);

  ExerciseType get type;
}
