import 'package:injectable/injectable.dart';
import 'package:get_it/get_it.dart';

import 'package:lrs_app_v3/injection.iconfig.dart';

final GetIt getIt = GetIt.instance;

@injectableInit
void configureInjection(String env) =>
    $initGetIt(getIt, environment: env);
    