// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:auto_route/auto_route.dart';
import 'package:lrs_app_v3/presenation/pages/sign_in/sign_in_page.dart';
import 'package:lrs_app_v3/presenation/pages/home/home_page.dart';
import 'package:lrs_app_v3/presenation/pages/exercise/exercise_page.dart';
import 'package:lrs_app_v3/presenation/pages/welcome/welcome_page.dart';

class Router {
  static const signInPage = '/';
  static const homePage = '/home-page';
  static const exercisePage = '/exercise-page';
  static const welcomePage = '/welcome-page';
  static final navigator = ExtendedNavigator();
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case Router.signInPage:
        return MaterialPageRoute<dynamic>(
          builder: (_) => SignInPage(),
          settings: settings,
        );
      case Router.homePage:
        return MaterialPageRoute<dynamic>(
          builder: (_) => HomePage(),
          settings: settings,
        );
      case Router.exercisePage:
        if (hasInvalidArgs<ExercisePageArguments>(args, isRequired: true)) {
          return misTypedArgsRoute<ExercisePageArguments>(args);
        }
        final typedArgs = args as ExercisePageArguments;
        return MaterialPageRoute<dynamic>(
          builder: (_) => ExercisePage(
              exerciseId: typedArgs.exerciseId, type: typedArgs.type),
          settings: settings,
        );
      case Router.welcomePage:
        return MaterialPageRoute<dynamic>(
          builder: (_) => WelcomePage(),
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
  final String exerciseId;
  final String type;
  ExercisePageArguments({@required this.exerciseId, @required this.type});
}
