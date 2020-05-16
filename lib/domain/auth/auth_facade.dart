import 'package:dartz/dartz.dart';
import 'package:lrs_app_v3/domain/auth/auth_barrel.dart';
import 'package:lrs_app_v3/domain/auth/auth_failure.dart';
import 'package:meta/meta.dart';

abstract class AuthFacade {
  Future<Either<AuthFailure, User>> getUser();
  Future<Option<AuthFailure>> signInWithEmailAndPassword({
    @required EmailAddress emailAddress,
    @required Password password,
  });
  Future<void> signOut();
}
