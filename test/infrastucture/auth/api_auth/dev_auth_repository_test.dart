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
  configureInjection(Env.dev);
  Hive.init('/Users/victo/OneDrive/projects/lrs_app/db');

  RemoteAuthDataSource remoteData = getIt<RemoteAuthDataSource>();
  LocalAuthDataSource localData = getIt<LocalAuthDataSource>();
  NetworkInfo networkInfo = getIt<NetworkInfo>();

  AuthFacade devAuthRepo = AuthRepository(localData, remoteData, networkInfo);
  group('[Env: dev] AuthRepository =>', () {
    group('on getUser', () {
      // should check cache for active sample user
      // should get active user
      // should check if there is a session for that userId in cache
      // if so, return authenticated user

      test('', () {});
    });
    group('on signInWithEmailAndPassword', () {
      // if online, should sign in sampleUser with email and password
      // then cache session & sampleUser(active = true) & sampleUserPersonalData
      // if offline, should check if there is an active User in cache w. sampleemail
      // if so, should check personal data if password matches & check if there is a session for that email
      // if not, return AuthFailure.onlineRequired
      //
    });
  });
}
