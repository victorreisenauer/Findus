import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';
import 'package:lrs_app_v3/dev_env_sample_data.dart';
import 'package:lrs_app_v3/infrastructure/auth/auth_barrel.dart';
import 'package:lrs_app_v3/infrastructure/core/remote_exceptions.dart';
import 'package:meta/meta.dart';
import 'package:mockito/mockito.dart';

@RegisterAs(RemoteAuthDataSourceFacade, env: Environment.prod)
@lazySingleton
class RemoteFirebaseAuthDataSource implements RemoteAuthDataSourceFacade {
  final FirebaseAuth _firebaseAuth;
  final FirebaseUserMapper _userMapper;

  RemoteFirebaseAuthDataSource(this._firebaseAuth, this._userMapper);

  Future<void> signUpWithEmailAndPassword({
    @required String emailAddress,
    @required String password,
  }) async {
    try {
      await _firebaseAuth.createUserWithEmailAndPassword(
        email: emailAddress,
        password: password,
      );
    } on PlatformException catch (e) {
      if (e.code == 'ERROR_WEAK_PASSWORD') {
        throw WeakPasswordException();
      } else if (e.code == 'ERROR_INVALID_EMAIL') {
        throw InvalidEmailException();
      } else if (e.code == 'ERROR_EMAIL_ALREADY_IN_USE') {
        throw EmailAlreadyInUseException();
      } else
        throw UnknownRemoteException();
    }
  }

  Future<UserModel> getUser() async {
    return _firebaseAuth.currentUser().then((user) {
      if (user == null) {
        throw NoLoggedInUserException();
      } else {
        return _userMapper
            .toUserModel(user); // turn firebase user into domain user
      }
    });
  }

  Future<void> signInWithEmailAndPassword({
    @required String emailAddress,
    @required String password,
  }) async {
    try {
      _firebaseAuth.signInWithEmailAndPassword(
        email: emailAddress,
        password: password,
      );
    } on PlatformException catch (e) {
      if (e.code == 'ERROR_INVALID_EMAIL' || e.code == 'ERROR_WRONG_PASSWORD') {
        throw InvalidEmailAndPasswordCombinationException();
      } else if (e.code == 'ERROR_USER_NOT_FOUND') {
        throw AccountNotFoundException();
      } else {
        throw UnknownRemoteException();
      }
    }
  }

  Future<void> signOut() async {
    _firebaseAuth.signOut();
  }
}

@RegisterAs(RemoteAuthDataSourceFacade, env: Environment.dev)
@lazySingleton
class DevRemoteFirebaseAuthDataSource extends RemoteFirebaseAuthDataSource {
  final FirebaseAuth _firebaseAuth;
  final FirebaseUserMapper _userMapper;

  DevRemoteFirebaseAuthDataSource(this._firebaseAuth, this._userMapper)
      : super(_firebaseAuth, _userMapper);

  @override
  Future<void> signInWithEmailAndPassword(
      {String emailAddress, String password}) {
    final String devEmail = DevData.devUser.emailAddress.getOrCrash();
    final String devPassword = DevData.devUserPassword.getOrCrash();
    return super.signInWithEmailAndPassword(
        emailAddress: devEmail, password: devPassword);
  }

  @override
  Future<void> signUpWithEmailAndPassword(
      {String emailAddress, String password}) {
    final String devEmail = DevData.devUser.emailAddress.getOrCrash();
    final String devPassword = DevData.devUserPassword.getOrCrash();
    return super.signUpWithEmailAndPassword(
        emailAddress: devEmail, password: devPassword);
  }
}

@RegisterAs(RemoteAuthDataSourceFacade, env: Environment.test)
@lazySingleton
class TestRemoteFirebaseAuthDataSource extends Mock
    implements RemoteAuthDataSourceFacade {}
