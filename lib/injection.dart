import 'package:injectable/injectable.dart';
import 'package:get_it/get_it.dart';

import 'package:lrs_app_v3/injection.iconfig.dart';

final GetIt getIt = GetIt.instance;

@injectableInit
void configureInjection(String environment) =>
    $initGetIt(getIt, environment: environment);

abstract class Env {
  static const dev = 'dev';
  static const prod = 'prod';
}