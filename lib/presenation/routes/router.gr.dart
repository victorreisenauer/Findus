// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:auto_route/auto_route.dart';
import 'package:lrs_app_v3/presenation/pages/welcome/welcome_page.dart';
import 'package:lrs_app_v3/presenation/pages/sign_in/sign_in_page.dart';
import 'package:lrs_app_v3/presenation/pages/overview/overview_page.dart';
import 'package:lrs_app_v3/presenation/pages/exercise/exercise_page.dart';
import 'package:lrs_app_v3/domain/lesson/exercise.dart';

class Router {
  static const welcomePage = '/';
  static const signInPage = '/sign-in-page';
  static const overviewPage = '/overview-page';
  static const exercisePage = '/exercise-page';
  static final navigator = ExtendedNavigator();
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case Router.welcomePage:
        return MaterialPageRoute<dynamic>(
          builder: (_) => WelcomePage(),
          settings: settings,
        );
      case Router.signInPage:
        return MaterialPageRoute<dynamic>(
          builder: (_) => SignInPage(),
          settings: settings,
        );
      case Router.overviewPage:
        return MaterialPageRoute<dynamic>(
          builder: (_) => OverviewPage(),
          settings: settings,
        );
      case Router.exercisePage:
        if (hasInvalidArgs<ExercisePageArguments>(args, isRequired: true)) {
          return misTypedArgsRoute<ExercisePageArguments>(args);
        }
        final typedArgs = args as ExercisePageArguments;
        return MaterialPageRoute<dynamic>(
          builder: (_) => ExercisePage(
              exercise: typedArgs.exercise,
              lessonLength: typedArgs.lessonLength),
          settings: settings,
        );
      default:
        return unknownRoutePage(settings.name);
    }
  }
}

//**************************************************************************
// Arguments holder classes
//***************************************************************************

//ExercisePage arguments holder class
class ExercisePageArguments {
  final Exercise exercise;
  final int lessonLength;
  ExercisePageArguments({@required this.exercise, this.lessonLength});
}
