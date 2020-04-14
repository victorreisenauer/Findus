import 'package:auto_route/auto_route_annotations.dart';

import 'package:lrs_app_v3/presenation/pages/sign_in/sign_in_page.dart';
import 'package:lrs_app_v3/presenation/pages/home/home_page.dart';
import 'package:lrs_app_v3/presenation/pages/exercise/exercise_page.dart';
import 'package:lrs_app_v3/presenation/pages/welcome/welcome_page.dart';

@MaterialAutoRouter()
class $Router {
  @initial
  SignInPage signInPage;
  HomePage homePage;
  ExercisePage exercisePage;
  WelcomePage welcomePage;
}