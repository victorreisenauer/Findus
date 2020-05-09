import 'package:injectable/injectable.dart';
import 'package:mockito/mockito.dart';
import 'package:get_it/get_it.dart';
import 'package:lrs_data_client/lrs_api.dart';
import 'package:hive/hive.dart';
import 'package:data_connection_checker/data_connection_checker.dart';

import 'package:lrs_app_v3/injection.iconfig.dart';

final GetIt getIt = GetIt.instance;

abstract class Env {
  static const String prod = 'prod';
  static const String test = 'test';
}

@injectableInit
void configureInjection(String env) => $initGetIt(getIt, environment: env);

@registerModule
abstract class RegisterModule {
  @lazySingleton
  Api get api => Api('https://api.lrs.hndrk.xyz/');
  DataConnectionChecker dataConnectionChecker() => DataConnectionChecker();
}
