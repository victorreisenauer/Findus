// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:auto_route/router_utils.dart';
import 'package:lrs_app_v3/presenation/pages/initial_page.dart';
import 'package:lrs_app_v3/presenation/pages/home_page.dart';
import 'package:lrs_app_v3/presenation/pages/exercise_page.dart';

class Router {
  static const initialPage = '/';
  static const homePage = '/home-page';
  static const exercisePage = '/exercise-page';
  static GlobalKey<NavigatorState> get navigatorKey =>
      getNavigatorKey<Router>();
  static NavigatorState get navigator => navigatorKey.currentState;

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case Router.initialPage:
        return MaterialPageRoute(
          builder: (_) => InitialPage(),
          settings: settings,
        );
      case Router.homePage:
        if (hasInvalidArgs<String>(args, isRequired: true)) {
          return misTypedArgsRoute<String>(args);
        }
        final typedArgs = args as String;
        return MaterialPageRoute(
          builder: (_) => HomePage(page: typedArgs),
          settings: settings,
        );
      case Router.exercisePage:
        if (hasInvalidArgs<ExercisePageArguments>(args, isRequired: true)) {
          return misTypedArgsRoute<ExercisePageArguments>(args);
        }
        final typedArgs = args as ExercisePageArguments;
        return MaterialPageRoute(
          builder: (_) => ExercisePage(
              exerciseId: typedArgs.exerciseId, type: typedArgs.type),
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
