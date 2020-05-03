import 'package:auto_route/auto_route_annotations.dart';

import 'package:lrs_app_v3/presentation/pages/sign_in/sign_in_page.dart';
import 'package:lrs_app_v3/presentation/pages/overview/overview_page.dart';
import 'package:lrs_app_v3/presentation/pages/exercise/exercise_page.dart';
import 'package:lrs_app_v3/presentation/pages/welcome/welcome_page.dart';

@MaterialAutoRouter(generateNavigationHelperExtension: true)
class $Router {
  @initial
  WelcomePage welcomePage;
  SignInPage signInPage;
  OverviewPage overviewPage;
  ExercisePage exercisePage;
}
