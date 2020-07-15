import "package:auto_route/auto_route_annotations.dart";

import "../pages/exercise/exercise_page.dart";
import "../pages/overview/overview_page.dart";
import "../pages/sign_in/sign_in_page.dart";
import "../pages/welcome/welcome_page.dart";

@MaterialAutoRouter(generateNavigationHelperExtension: true)
class $Router {
  @initial
  WelcomePage welcomePage;
  SignInPage signInPage;
  OverviewPage overviewPage;
  ExercisePage exercisePage;
}
