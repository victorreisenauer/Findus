import 'package:flutter/material.dart';
import 'package:lrs_app_v3/domain/lesson/exercise/validated_value_objects.dart';
import 'package:lrs_app_v3/presentation/pages/exercise/templates/template_barrel.dart';

main() {
  runApp(_testApp());
}

class _testApp extends StatelessWidget {
  Map dataMap = {
    "1": "Autobahn",
    "2": ["1", "3", "2", "4"],
    "3": 3,
  };
  @override
  Widget build(BuildContext context) {
    ExerciseData data = ExerciseData(dataMap);
    return MaterialApp(
      home: Scaffold(
          body: Template0004(
        data: data,
      )),
    );
  }
}
