import 'package:lrs_app_v3/presenation/routes/router.gr.dart';
import 'package:flutter/material.dart';

class InitialPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              child: Text('Go to SECOND'),
              onPressed: () => navigateToSecond(context),
            ),
            SizedBox(height: 10),
            RaisedButton(
              child: Text('Go to THIRD'),
              onPressed: () => navigateToThird(context),
            ),
          ],
        ),
      ),
    );
  }

  void navigateToSecond(BuildContext context) {
    Router.navigator.pushNamed(Router.homePage, arguments: 'home_page');
  }

  void navigateToThird(BuildContext context) {
    Router.navigator.pushNamed(
      Router.exercisePage,
      arguments: ExercisePageArguments(
        exerciseId: 'Bob',
        type: 'syllables',
      ),
    );
  }
}