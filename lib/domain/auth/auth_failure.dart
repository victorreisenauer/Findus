import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_failure.freezed.dart';

@freezed

/// Failure to handle authentication exceptions.
/// Examples: Authentication cancelled by user, server returned error, email is already in use
/// or invalid email and password combination
abstract class AuthFailure with _$AuthFailure {
  const factory AuthFailure.loginRequired() = LoginRequired;
  const factory AuthFailure.cancelledByUser() = CancelledByUser;
  const factory AuthFailure.serverError() = ServerError;
  const factory AuthFailure.emailAlreadyInUse() = EmailAlreadyInUse;
  const factory AuthFailure.invalidEmailAndPasswordCombination() =
      InvalidEmailAndPasswordCombination;
  const factory AuthFailure.deviceOffline() = DeviceOffline;
  const factory AuthFailure.accountNotFound() = AccountNotFound;
}
