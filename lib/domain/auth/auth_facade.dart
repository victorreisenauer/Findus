import 'package:dartz/dartz.dart';
import 'package:lrs_app_v3/domain/auth/auth_barrel.dart';
import 'package:lrs_app_v3/domain/auth/auth_failure.dart';
import 'package:meta/meta.dart';

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
