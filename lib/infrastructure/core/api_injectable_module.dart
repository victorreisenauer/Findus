import 'package:injectable/injectable.dart';
import 'package:lrs_data_client/lrs_api.dart';


@registerModule
abstract class ApiInjectableModule {
  @lazySingleton
  Api get api => Api();
}