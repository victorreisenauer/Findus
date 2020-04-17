import 'package:flutter/material.dart';

class ExercisePage extends StatelessWidget {
  final String exerciseId;
  final String type;

  const ExercisePage({@required this.exerciseId, @required this.type});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Third Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              exerciseId,
              style: Theme.of(context).textTheme.display2,
            ),
            Text(
              type,
              style: Theme.of(context).textTheme.display1,
            )
          ],
        ),
      ),
    );
  }
}
