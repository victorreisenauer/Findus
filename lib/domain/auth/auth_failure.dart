import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_failure.freezed.dart';

@freezed

/// Failure to handle authentication exceptions.
/// Examples: Authentication cancelled by user, server returned error, email is already in use
/// or invalid email and password combination
abstract class AuthFailure with _$AuthFailure {
  const factory AuthFailure.loginRequired() = LoginRequired;
  const factory AuthFailure.cancelledByUser() = CancelledByUser;
  // Serves as a "catch all" failure if we don't know what exactly went wrong
  const factory AuthFailure.serverError() = ServerError;
  const factory AuthFailure.emailAlreadyInUse() = EmailAlreadyInUse;
  const factory AuthFailure.invalidEmailAndPasswordCombination() =
      InvalidEmailAndPasswordCombination;
}
