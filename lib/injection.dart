import 'package:cloud_functions/cloud_functions.dart';
import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:lrs_app_v3/injection.iconfig.dart';

// Builds instance of GetIt to use for entire project.
final GetIt getIt = GetIt.instance;

// Configures injection.
@injectableInit
void configureInjection({String env = Environment.prod}) =>
    $initGetIt(getIt, environment: env);

// registers external classes for injection in prod environment
@registerModule
abstract class RegisterModules {
  @lazySingleton
  FirebaseAuth get firebaseAuth => FirebaseAuth.instance;
  @injectable
  DataConnectionChecker dataConnectionChecker() => DataConnectionChecker();
  @lazySingleton
  CloudFunctions get cloudFunctions => CloudFunctions(region: 'europe-west1');
}
