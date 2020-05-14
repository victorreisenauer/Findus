import 'package:flutter_test/flutter_test.dart';
import 'package:lrs_app_v3/domain/core/validated_value_objects.dart';
import 'package:lrs_app_v3/domain/core/value_objects.dart';
import 'package:lrs_app_v3/infrastructure/core/exceptions.dart';
import 'package:dartz/dartz.dart';
import 'package:mockito/mockito.dart';
import 'package:hive/hive.dart';

import 'package:lrs_app_v3/infrastructure/auth/auth_barrel.dart';
import 'package:lrs_app_v3/infrastructure/core/network_info.dart';
import 'package:lrs_app_v3/injection.dart';
import 'package:lrs_app_v3/domain/auth/auth_barrel.dart';

main() {
  configureInjection(Env.prod);
  Hive.init('/Users/victo/OneDrive/projects/lrs_app/db');

  RemoteAuthDataSource remoteData = getIt<RemoteAuthDataSource>();
  LocalAuthDataSource localData = getIt<LocalAuthDataSource>();
  NetworkInfo networkInfo = getIt<NetworkInfo>();

  AuthFacade prodAuthRepo = AuthRepository(localData, remoteData, networkInfo);
  group('[Env: prod] AuthRepository =>', () {
    test('', () {});
  });
}
