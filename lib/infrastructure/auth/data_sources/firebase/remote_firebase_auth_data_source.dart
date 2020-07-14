import "package:firebase_auth/firebase_auth.dart";
import "package:flutter/services.dart";
import "package:injectable/injectable.dart";
import "package:meta/meta.dart";

import "../../../core/remote_exceptions.dart";
import "../../models/user_model.dart";
import "../remote_auth_data_source_facade.dart";
import "firebase_user_mapper.dart";

@RegisterAs(RemoteAuthDataSourceFacade)
@lazySingleton
class RemoteFirebaseAuthDataSource implements RemoteAuthDataSourceFacade {
  final FirebaseAuth _firebaseAuth;
  final FirebaseUserMapper _userMapper;

  RemoteFirebaseAuthDataSource(this._firebaseAuth, this._userMapper);

  @override
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
      if (e.code == "ERROR_WEAK_PASSWORD") {
        throw WeakPasswordException();
      } else if (e.code == "ERROR_INVALID_EMAIL") {
        throw InvalidEmailException();
      } else if (e.code == "ERROR_EMAIL_ALREADY_IN_USE") {
        throw EmailAlreadyInUseException();
      } else {
        throw UnknownRemoteException();
      }
    }
  }

  @override
  Future<UserModel> getUser() async {
    return _firebaseAuth.currentUser().then((user) {
      if (user == null) {
        throw NoLoggedInUserException();
      } else {
        return _userMapper.toUserModel(user); // turn firebase user into domain user
      }
    });
  }

  @override
  Future<void> signInWithEmailAndPassword({
    @required String emailAddress,
    @required String password,
  }) async {
    try {
      await _firebaseAuth.signInWithEmailAndPassword(
        email: emailAddress,
        password: password,
      );
    } on PlatformException catch (e) {
      if (e.code == "ERROR_INVALID_EMAIL" || e.code == "ERROR_WRONG_PASSWORD") {
        throw InvalidEmailAndPasswordCombinationException();
      } else if (e.code == "ERROR_USER_NOT_FOUND") {
        throw AccountNotFoundException();
      } else {
        //throw UnknownRemoteException();
      }
    }
  }

  @override
  Future<void> signOut() async {
    await _firebaseAuth.signOut();
  }
}
