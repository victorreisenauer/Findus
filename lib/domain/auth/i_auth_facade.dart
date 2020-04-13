import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';

import 'auth_failure.dart';
import 'value_objects.dart';
import 'package:lrs_app_v3/domain/auth/user.dart';


/// Facade(an Entitiy) that connects ApiAuth and GoogleSignIn into one interface. 
/// Serves as abstraction step, so BLoCs in the application layer dont depend
/// on classes from infrastructure layer.
abstract class IAuthFacade { 

  Future<Option<User>> getSignedInUser();

  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({
    @required EmailAddress emailAddress,
    @required Password password,
  });

  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    @required EmailAddress emailAddress,
    @required Password password,
  });

  Future<Either<AuthFailure, Unit>> signInWithGoogle();

  Future<void> signOut();
}
