import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:lrs_app_v3/injection.iconfig.dart';
import 'package:lrs_data_client/lrs_api.dart';
import 'package:mockito/mockito.dart';

import 'infrastructure/core/boxes.dart';

// Builds instance of GetIt to use for entire project.
final GetIt getIt = GetIt.instance;

// Defines environments for easy access.
// Those envs are already defined in injectable, but this way the import of
// injectable into all test files is not neccessary.
abstract class Env {
  static const String prod = 'prod';
  static const String dev = 'dev';
  static const String test = 'test';
}

// Configures injection.
@injectableInit
void configureInjection(String env) => $initGetIt(getIt, environment: env);

// registers external classes for injection in prod environment
@registerModule
abstract class ProdModules {
  @prod
  @lazySingleton
  Api get api => Api('https://api.lrs.hndrk.xyz/');
  @prod
  DataConnectionChecker dataConnectionChecker() => DataConnectionChecker();
}

// registers external classes for injection in dev environment
@registerModule
abstract class DevModules {
  @dev
  @lazySingleton
  Api get api => Api('https://api.lrs.hndrk.xyz/');
  @dev
  DataConnectionChecker dataConnectionChecker() => DataConnectionChecker();
}

// registers mocked external classes for injection in test environment
@registerModule
abstract class TestModules {
  @test
  Boxes get boxes => TestBoxes();
  @test
  @lazySingleton
  Api get api => MockApi();
  @test
  DataConnectionChecker dataConnectionChecker() => MockDataConnectionChecker();
}

// mocked external classes for test environment
class MockApi extends Mock implements Api {}

class MockDataConnectionChecker extends Mock implements DataConnectionChecker {}
