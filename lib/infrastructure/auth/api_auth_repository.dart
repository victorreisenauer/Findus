import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';

import 'package:lrs_data_client/lrs_api.dart' as lrs_api;
import 'package:lrs_app_v3/domain/auth/i_auth_facade.dart';
import 'package:lrs_app_v3/domain/auth/user.dart';
import 'package:lrs_app_v3/domain/auth/auth_failure.dart';
import 'package:lrs_app_v3/domain/auth/value_objects.dart';
import 'api_user_mapper.dart';

// @dev with @env once we work with real user data, then create another repo
// that works with dev data

@dev
@RegisterAs(IAuthFacade)
@lazySingleton
///Repository that catches all Exceptions and returns them as Failures.
///This repository only serves as placeholder, as implementation will happen only after
///testing all other layers (except presentation).
class ApiAuthRepository implements IAuthFacade {
  // temporary local initialization
  final lrs_api.Api api  = lrs_api.Api("https://api.lrs.hndrk.xyz/");
  final ApiUserMapper _apiUserMapper = ApiUserMapper();

  ApiAuthRepository(init());

  init() async {
    
    if (!await api.checkConnection()) {
      print("ERROR: no connection to the server");
    }

      // Session was supplied and is invalid...
    if (!await api.validateSession() && api.session != null) {
      print("ERROR: Your session is invalid.");
    }
  }

  @override
  Future<Option<User>> getSignedInUser() async => this.api
  .currentUser.then((u) => optionOf(_apiUserMapper.toDomain(u)));

  @override
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({
    @required EmailAddress emailAddress,
    @required Password password,
  }) async {
    final emailAddressStr = emailAddress.value.getOrElse(() => 'INVALID EMAIL');
    final passwordStr = password.value.getOrElse(() => 'INVALID PASSWORD');
    try {
      api.create(username: emailAddressStr,password: passwordStr);
      return api.currentUser.then((_) => right(unit));
    } on PlatformException catch (e) {
      if (e.code == 'ERROR_EMAIL_ALREADY_IN_USE') {
        return left(const AuthFailure.emailAlreadyInUse());
      } else {
        return left(const AuthFailure.serverError());
      }
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    @required EmailAddress emailAddress,
    @required Password password,
  }) async {
    final emailAddressStr = emailAddress.value.getOrElse(() => 'INVALID EMAIL');
    final passwordStr = password.value.getOrElse(() => 'INVALID PASSWORD');
    try {
      api.login(username: emailAddressStr, password: passwordStr);
      return await api.currentUser.then((_) => right(unit));
    } on PlatformException catch (e) {
      if (e.code == 'ERROR_WRONG_PASSWORD' ||
          e.code == 'ERROR_USER_NOT_FOUND') {
        return left(const AuthFailure.invalidEmailAndPasswordCombination());
      }
      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithGoogle() {
    return null;
  }
  
  @override
  Future<void> signOut() async {
    api.logout();
  }
}