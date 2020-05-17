import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';
import 'package:lrs_app_v3/dev_env_sample_data.dart';
import 'package:lrs_app_v3/domain/auth/auth_barrel.dart';
import 'package:lrs_app_v3/infrastructure/auth/firebase_auth/firebase_user_mapper.dart';
import 'package:lrs_app_v3/infrastructure/core/network_info.dart';
import 'package:meta/meta.dart';
import 'package:mockito/mockito.dart';

@RegisterAs(AuthFacade, env: Environment.prod)
class FirebaseAuthRepository implements AuthFacade {
  final FirebaseAuth _firebaseAuth;
  final NetworkInfo _networkInfo;
  final FirebaseUserMapper _userMapper;

  FirebaseAuthRepository(
      this._firebaseAuth, this._networkInfo, this._userMapper);

  Future<Option<AuthFailure>> signUpWithEmailAndPassword({
    @required EmailAddress emailAddress,
    @required Password password,
  }) async {
    if (await _networkInfo.isConnected) {
      try {
        _firebaseAuth.createUserWithEmailAndPassword(
          email: emailAddress.getOrCrash(),
          password: password.getOrCrash(),
        );
        return none();
      } on PlatformException catch (e) {
        if (e.code == 'ERROR_WEAK_PASSWORD') {
          return optionOf(AuthFailure.weakPassword());
        }
        if (e.code == 'ERROR_INVALID_EMAIL') {
          return optionOf(AuthFailure.invalidEmail());
        }
        if (e.code == 'ERROR_EMAIL_ALREADY_IN_USE') {
          return optionOf(AuthFailure.emailAlreadyInUse());
        } else
          return optionOf(AuthFailure.serverError());
      }
    } else {
      return optionOf(AuthFailure.deviceOffline());
    }
  }

  Future<Either<AuthFailure, User>> getUser() async {
    if (await _networkInfo.isConnected) {
      return _firebaseAuth.currentUser().then((user) {
        if (user == null) {
          return left(AuthFailure.loginRequired());
        } else {
          return right(_userMapper
              .toDomain(user)); // turn firebase user into domain user
        }
      });
    } else {
      return left(AuthFailure.deviceOffline());
    }
  }

  Future<Option<AuthFailure>> signInWithEmailAndPassword({
    @required EmailAddress emailAddress,
    @required Password password,
  }) async {
    if (await _networkInfo.isConnected) {
      try {
        _firebaseAuth.signInWithEmailAndPassword(
          email: emailAddress.getOrCrash(),
          password: password.getOrCrash(),
        );
        return none();
      } on PlatformException catch (e) {
        if (e.code == 'ERROR_INVALID_EMAIL' ||
            e.code == 'ERROR_WRONG_PASSWORD') {
          return optionOf(AuthFailure.invalidEmailAndPasswordCombination());
        } else if (e.code == 'ERROR_USER_NOT_FOUND') {
          return optionOf(AuthFailure.accountNotFound());
        } else {
          return optionOf(AuthFailure.serverError());
        }
      }
    } else {
      return optionOf(AuthFailure.deviceOffline());
    }
  }

  Future<void> signOut() async {
    _firebaseAuth.signOut();
  }
}

@RegisterAs(AuthFacade, env: Environment.dev)
class DevFirebaseAuthRepository extends FirebaseAuthRepository {
  final FirebaseAuth _firebaseAuth;
  final NetworkInfo _networkInfo;
  final FirebaseUserMapper _userMapper;

  DevFirebaseAuthRepository(
      this._firebaseAuth, this._networkInfo, this._userMapper)
      : super(_firebaseAuth, _networkInfo, _userMapper);

  @override
  Future<Option<AuthFailure>> signInWithEmailAndPassword(
      {EmailAddress emailAddress, Password password}) {
    final EmailAddress devEmail = DevData.devUser.emailAddress;
    final Password devPassword = DevData.devUserPassword;
    return super.signInWithEmailAndPassword(
        emailAddress: devEmail, password: devPassword);
  }

  @override
  Future<Option<AuthFailure>> signUpWithEmailAndPassword(
      {EmailAddress emailAddress, Password password}) {
    final EmailAddress devEmail = DevData.devUser.emailAddress;
    final Password devPassword = DevData.devUserPassword;
    return super.signUpWithEmailAndPassword(
        emailAddress: devEmail, password: devPassword);
  }
}

@RegisterAs(AuthFacade, env: Environment.test)
class TestFirebaseAuthRepository extends Mock implements AuthFacade {}
