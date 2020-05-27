import 'package:cloud_functions/cloud_functions.dart';
import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:firebase_auth/firebase_auth.dart';
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
  FirebaseAuth get firebaseAuth => FirebaseAuth.instance;
  @prod
  DataConnectionChecker dataConnectionChecker() => DataConnectionChecker();
  @prod
  @lazySingleton
  CloudFunctions get cloudFunctions => CloudFunctions.instance;
}

// registers external classes for injection in dev environment
@registerModule
abstract class DevModules {
  @dev
  @lazySingleton
  FirebaseAuth get firebaseAuth => FirebaseAuth.instance;
  @dev
  DataConnectionChecker dataConnectionChecker() => DataConnectionChecker();
  @dev
  @lazySingleton
  CloudFunctions get cloudFunctions => CloudFunctions.instance;
}

// registers mocked external classes for injection in test environment
@registerModule
abstract class TestModules {
  @test
  @lazySingleton
  FirebaseAuth get firebaseAuth => MockFirebaseAuth();
  @test
  Boxes get boxes => TestBoxes();
  @test
  DataConnectionChecker dataConnectionChecker() => MockDataConnectionChecker();
  @test
  @lazySingleton
  CloudFunctions get cloudFunctions => MockCloudFunctions();
}

// mocked external classes for test environment
class MockApi extends Mock implements Api {}

class MockFirebaseAuth extends Mock implements FirebaseAuth {}

class MockDataConnectionChecker extends Mock implements DataConnectionChecker {}

class MockCloudFunctions extends Mock implements CloudFunctions {}
