import 'package:flutter/material.dart';

import 'package:lrs_app_v3/domain/lesson/value_objects.dart';
import 'package:lrs_app_v3/presenation/pages/exercise/templates/template.dart';

class Temp0002 extends Template {
  final ExerciseType type = ExerciseType('sampleType2');
  final ExerciseData exerciseData;

  Temp0002({this.exerciseData});

  @override
  Widget build(BuildContext context) {
    return Center(child: Text("This is Temp0002 consuming data $exerciseData"));
  }
}
