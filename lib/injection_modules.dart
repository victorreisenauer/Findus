import 'package:injectable/injectable.dart';
import 'package:lrs_data_client/lrs_api.dart';
import 'package:hive/hive.dart';
import 'package:data_connection_checker/data_connection_checker.dart';

@registerModule
abstract class RegisterModule {
  Api api(String url) => Api(url);
  Box box(String name) => Hive.box(name);
  DataConnectionChecker dataConnectionChecker() => dataConnectionChecker();
}
