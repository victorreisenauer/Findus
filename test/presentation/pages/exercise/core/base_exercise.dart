import 'package:flutter/material.dart';
import 'package:lrs_app_v3/presentation/pages/core/base_exercise.dart';

main() {
  runApp(_BaseExerciseTestApp());
}

class _BaseExerciseTestApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: BaseExercise(
          help: 'Hello test',
          onAbort: () {
            print('onAbortPressed');
          },
          child: SizedBox.expand(
            child: Container(color: Colors.red),
          ),
          centerBottomBarWidget: RaisedButton(
            child: Text('Hello'),
            onPressed: () {
              print('Hello mate');
            },
          ),
        ),
      ),
    );
  }
}
