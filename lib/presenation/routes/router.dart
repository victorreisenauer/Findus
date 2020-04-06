import 'package:auto_route/auto_route_annotations.dart';

import 'package:lrs_app_v3/presenation/pages/initial_page.dart';
import 'package:lrs_app_v3/presenation/pages/home_page.dart';
import 'package:lrs_app_v3/presenation/pages/exercise_page.dart';

@autoRouter
class $Router {
  @initial
  InitialPage initialPage;

  HomePage homePage;
  ExercisePage exercisePage;
}