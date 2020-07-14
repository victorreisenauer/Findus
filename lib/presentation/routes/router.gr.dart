// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lrs_app_v3/domain/core/value_objects.dart';
import 'package:lrs_app_v3/domain/lesson/exercise/exercise.dart';
import 'package:lrs_app_v3/presentation/pages/exercise/exercise_page.dart';
import 'package:lrs_app_v3/presentation/pages/overview/overview_page.dart';
import 'package:lrs_app_v3/presentation/pages/sign_in/sign_in_page.dart';
import 'package:lrs_app_v3/presentation/pages/welcome/welcome_page.dart';

abstract class Routes {
  static const welcomePage = '/';
  static const signInPage = '/sign-in-page';
  static const overviewPage = '/overview-page';
  static const exercisePage = '/exercise-page';
}

class Router extends RouterBase {
  //This will probably be removed in future versions
  //you should call ExtendedNavigator.ofRouter<Router>() directly
  static ExtendedNavigatorState get navigator => ExtendedNavigator.ofRouter<Router>();

  @override
  Route<dynamic> onGenerateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case Routes.welcomePage:
        return MaterialPageRoute<dynamic>(
          builder: (context) => WelcomePage(),
          settings: settings,
        );
      case Routes.signInPage:
        return MaterialPageRoute<dynamic>(
          builder: (context) => SignInPage(),
          settings: settings,
        );
      case Routes.overviewPage:
        return MaterialPageRoute<dynamic>(
          builder: (context) => OverviewPage(),
          settings: settings,
        );
      case Routes.exercisePage:
        if (hasInvalidArgs<ExercisePageArguments>(args, isRequired: true)) {
          return misTypedArgsRoute<ExercisePageArguments>(args);
        }
        final typedArgs = args as ExercisePageArguments;
        return MaterialPageRoute<dynamic>(
          builder: (context) => ExercisePage(key: typedArgs.key, exerciseList: typedArgs.exerciseList),
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
  final Key key;
  final ObjectList<Exercise> exerciseList;
  ExercisePageArguments({this.key, @required this.exerciseList});
}

//**************************************************************************
// Navigation helper methods extension
//***************************************************************************

extension RouterNavigationHelperMethods on ExtendedNavigatorState {
  Future pushWelcomePage() => pushNamed(Routes.welcomePage);
  Future pushSignInPage() => pushNamed(Routes.signInPage);
  Future pushOverviewPage() => pushNamed(Routes.overviewPage);
  Future pushExercisePage({
    Key key,
    @required ObjectList<Exercise> exerciseList,
  }) =>
      pushNamed(Routes.exercisePage, arguments: ExercisePageArguments(key: key, exerciseList: exerciseList));
}
