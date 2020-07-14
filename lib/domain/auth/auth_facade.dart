import "package:dartz/dartz.dart";
import "package:meta/meta.dart";

import "auth_barrel.dart";
import "auth_failure.dart";

/// provides all authentication methods to application layer
/// IMPORTANT: Missing implementation for offline use!
abstract class AuthFacade {
  Future<Either<AuthFailure, User>> getUser();
  Future<Option<AuthFailure>> signInWithEmailAndPassword({
    @required EmailAddress emailAddress,
    @required Password password,
  });
  Future<Option<AuthFailure>> signOut();
  Future<Option<AuthFailure>> signUpWithEmailAndPassword({
    @required EmailAddress emailAddress,
    @required Password password,
  });
}
