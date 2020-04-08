import 'package:mockito/mockito.dart';
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



@RegisterAs(IAuthFacade, env:Environment.test)
@lazySingleton
///Repository that catches all Exceptions and returns them as Failures.

class MockApiAuthRepository extends Mock implements IAuthFacade{
  final lrs_api.Api _api;
  final ApiUserMapper _apiUserMapper;

  MockApiAuthRepository(
    this._api,
    this._apiUserMapper,
  );

  @override
  Future<Option<User>> getSignedInUser() async => this._api
  .currentUser.then((u) => optionOf(_apiUserMapper.toDomain(u)));

  @override
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({
    @required EmailAddress emailAddress,
    @required Password password,
  }) async {
    final emailAddressStr = emailAddress.value.getOrElse(() => 'INVALID EMAIL');
    final passwordStr = password.value.getOrElse(() => 'INVALID PASSWORD');
    try {
      _api.create(username: emailAddressStr,password: passwordStr);
      return _api.currentUser.then((_) => right(unit));
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
      _api.login(username: emailAddressStr, password: passwordStr);
      return await _api.currentUser.then((_) => right(unit));
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
    _api.logout();
  }
}