part of 'auth_bloc.dart';

@freezed
abstract class AuthEvent {
  const factory AuthEvent.authCheckRequested() = AuthCheckRequested;
  const factory AuthEvent.signedOut() = SignedOut;
}
