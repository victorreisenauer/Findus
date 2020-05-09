import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:lrs_app_v3/domain/lesson/exercise/validated_value_objects.dart';
import 'package:lrs_app_v3/infrastructure/sample_data/sample_barrel.dart';
import 'package:lrs_app_v3/presentation/pages/exercise/templates/template_barrel.dart';

main(List<String> args) {
  runApp(_TestApp());
}

class _TestApp extends StatelessWidget {
  String mapDecoded =
      SampleExerciseGenerator().getEncodedJsonForType("sampleType3");

  @override
  Widget build(BuildContext context) {
    ExerciseData exerciseData = ExerciseData(jsonDecode(mapDecoded)["data"]);
    return MaterialApp(
      home: Scaffold(
        body: Template0003(
          data: exerciseData,
        ),
      ),
    );
  }
}
