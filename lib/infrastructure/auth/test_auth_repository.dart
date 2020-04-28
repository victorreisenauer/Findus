import 'package:injectable/injectable.dart';
import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';

import 'package:lrs_app_v3/domain/auth/auth_barrel.dart';
import 'package:lrs_app_v3/domain/core/value_objects_barrel.dart';

@RegisterAs(IAuthFacade, env: Environment.test)
@lazySingleton

/// TestAuthRepository does not do any real user authorization. It models the apiAuthRepository.
/// Available login is email: "testUser@test.com", password: "testUser"
class TestAuthRepository implements IAuthFacade {
  User _currentUser;

  @override
  Future<Option<User>> getSignedInUser() async {
    return optionOf(this._currentUser);
  }

  @override
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({
    @required EmailAddress emailAddress,
    @required Password password,
  }) async {
    final emailAddressStr = emailAddress.value.getOrElse(() => 'INVALID EMAIL');
    final passwordStr = password.value.getOrElse(() => 'INVALID PASSWORD');
    if (emailAddressStr == "testUser@test.com" && passwordStr == "testUser") {
      StringSingleLine userName = StringSingleLine("TestUser");
      UniqueId testId = UniqueId();
      this._currentUser =
          User(emailAddress: emailAddress, name: userName, id: testId);
      return right(unit);
    } else {
      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    @required EmailAddress emailAddress,
    @required Password password,
  }) async {
    final emailAddressStr = emailAddress.value.getOrElse(() => 'INVALID EMAIL');
    final passwordStr = password.value.getOrElse(() => 'INVALID PASSWORD');
    if (emailAddressStr == "testUser@test.com" && passwordStr == "testUser") {
      StringSingleLine userName = StringSingleLine("TestUser");
      UniqueId testId = UniqueId();
      this._currentUser =
          User(emailAddress: emailAddress, name: userName, id: testId);
      return right(unit);
    } else {
      return left(const AuthFailure.invalidEmailAndPasswordCombination());
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithGoogle() {
    return null;
  }

  @override
  Future<void> signOut() async {
    this._currentUser = null;
  }
}
