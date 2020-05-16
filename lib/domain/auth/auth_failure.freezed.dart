// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'auth_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$AuthFailureTearOff {
  const _$AuthFailureTearOff();

  LoginRequired loginRequired() {
    return const LoginRequired();
  }

  CancelledByUser cancelledByUser() {
    return const CancelledByUser();
  }

  ServerError serverError() {
    return const ServerError();
  }

  EmailAlreadyInUse emailAlreadyInUse() {
    return const EmailAlreadyInUse();
  }

  InvalidEmailAndPasswordCombination invalidEmailAndPasswordCombination() {
    return const InvalidEmailAndPasswordCombination();
  }

  DeviceOffline deviceOffline() {
    return const DeviceOffline();
  }

  AccountNotFound accountNotFound() {
    return const AccountNotFound();
  }
}

// ignore: unused_element
const $AuthFailure = _$AuthFailureTearOff();

mixin _$AuthFailure {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loginRequired(),
    @required Result cancelledByUser(),
    @required Result serverError(),
    @required Result emailAlreadyInUse(),
    @required Result invalidEmailAndPasswordCombination(),
    @required Result deviceOffline(),
    @required Result accountNotFound(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loginRequired(),
    Result cancelledByUser(),
    Result serverError(),
    Result emailAlreadyInUse(),
    Result invalidEmailAndPasswordCombination(),
    Result deviceOffline(),
    Result accountNotFound(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loginRequired(LoginRequired value),
    @required Result cancelledByUser(CancelledByUser value),
    @required Result serverError(ServerError value),
    @required Result emailAlreadyInUse(EmailAlreadyInUse value),
    @required
        Result invalidEmailAndPasswordCombination(
            InvalidEmailAndPasswordCombination value),
    @required Result deviceOffline(DeviceOffline value),
    @required Result accountNotFound(AccountNotFound value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loginRequired(LoginRequired value),
    Result cancelledByUser(CancelledByUser value),
    Result serverError(ServerError value),
    Result emailAlreadyInUse(EmailAlreadyInUse value),
    Result invalidEmailAndPasswordCombination(
        InvalidEmailAndPasswordCombination value),
    Result deviceOffline(DeviceOffline value),
    Result accountNotFound(AccountNotFound value),
    @required Result orElse(),
  });
}

abstract class $AuthFailureCopyWith<$Res> {
  factory $AuthFailureCopyWith(
          AuthFailure value, $Res Function(AuthFailure) then) =
      _$AuthFailureCopyWithImpl<$Res>;
}

class _$AuthFailureCopyWithImpl<$Res> implements $AuthFailureCopyWith<$Res> {
  _$AuthFailureCopyWithImpl(this._value, this._then);

  final AuthFailure _value;
  // ignore: unused_field
  final $Res Function(AuthFailure) _then;
}

abstract class $LoginRequiredCopyWith<$Res> {
  factory $LoginRequiredCopyWith(
          LoginRequired value, $Res Function(LoginRequired) then) =
      _$LoginRequiredCopyWithImpl<$Res>;
}

class _$LoginRequiredCopyWithImpl<$Res> extends _$AuthFailureCopyWithImpl<$Res>
    implements $LoginRequiredCopyWith<$Res> {
  _$LoginRequiredCopyWithImpl(
      LoginRequired _value, $Res Function(LoginRequired) _then)
      : super(_value, (v) => _then(v as LoginRequired));

  @override
  LoginRequired get _value => super._value as LoginRequired;
}

class _$LoginRequired implements LoginRequired {
  const _$LoginRequired();

  @override
  String toString() {
    return 'AuthFailure.loginRequired()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LoginRequired);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loginRequired(),
    @required Result cancelledByUser(),
    @required Result serverError(),
    @required Result emailAlreadyInUse(),
    @required Result invalidEmailAndPasswordCombination(),
    @required Result deviceOffline(),
    @required Result accountNotFound(),
  }) {
    assert(loginRequired != null);
    assert(cancelledByUser != null);
    assert(serverError != null);
    assert(emailAlreadyInUse != null);
    assert(invalidEmailAndPasswordCombination != null);
    assert(deviceOffline != null);
    assert(accountNotFound != null);
    return loginRequired();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loginRequired(),
    Result cancelledByUser(),
    Result serverError(),
    Result emailAlreadyInUse(),
    Result invalidEmailAndPasswordCombination(),
    Result deviceOffline(),
    Result accountNotFound(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loginRequired != null) {
      return loginRequired();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loginRequired(LoginRequired value),
    @required Result cancelledByUser(CancelledByUser value),
    @required Result serverError(ServerError value),
    @required Result emailAlreadyInUse(EmailAlreadyInUse value),
    @required
        Result invalidEmailAndPasswordCombination(
            InvalidEmailAndPasswordCombination value),
    @required Result deviceOffline(DeviceOffline value),
    @required Result accountNotFound(AccountNotFound value),
  }) {
    assert(loginRequired != null);
    assert(cancelledByUser != null);
    assert(serverError != null);
    assert(emailAlreadyInUse != null);
    assert(invalidEmailAndPasswordCombination != null);
    assert(deviceOffline != null);
    assert(accountNotFound != null);
    return loginRequired(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loginRequired(LoginRequired value),
    Result cancelledByUser(CancelledByUser value),
    Result serverError(ServerError value),
    Result emailAlreadyInUse(EmailAlreadyInUse value),
    Result invalidEmailAndPasswordCombination(
        InvalidEmailAndPasswordCombination value),
    Result deviceOffline(DeviceOffline value),
    Result accountNotFound(AccountNotFound value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loginRequired != null) {
      return loginRequired(this);
    }
    return orElse();
  }
}

abstract class LoginRequired implements AuthFailure {
  const factory LoginRequired() = _$LoginRequired;
}

abstract class $CancelledByUserCopyWith<$Res> {
  factory $CancelledByUserCopyWith(
          CancelledByUser value, $Res Function(CancelledByUser) then) =
      _$CancelledByUserCopyWithImpl<$Res>;
}

class _$CancelledByUserCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res>
    implements $CancelledByUserCopyWith<$Res> {
  _$CancelledByUserCopyWithImpl(
      CancelledByUser _value, $Res Function(CancelledByUser) _then)
      : super(_value, (v) => _then(v as CancelledByUser));

  @override
  CancelledByUser get _value => super._value as CancelledByUser;
}

class _$CancelledByUser implements CancelledByUser {
  const _$CancelledByUser();

  @override
  String toString() {
    return 'AuthFailure.cancelledByUser()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is CancelledByUser);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loginRequired(),
    @required Result cancelledByUser(),
    @required Result serverError(),
    @required Result emailAlreadyInUse(),
    @required Result invalidEmailAndPasswordCombination(),
    @required Result deviceOffline(),
    @required Result accountNotFound(),
  }) {
    assert(loginRequired != null);
    assert(cancelledByUser != null);
    assert(serverError != null);
    assert(emailAlreadyInUse != null);
    assert(invalidEmailAndPasswordCombination != null);
    assert(deviceOffline != null);
    assert(accountNotFound != null);
    return cancelledByUser();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loginRequired(),
    Result cancelledByUser(),
    Result serverError(),
    Result emailAlreadyInUse(),
    Result invalidEmailAndPasswordCombination(),
    Result deviceOffline(),
    Result accountNotFound(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (cancelledByUser != null) {
      return cancelledByUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loginRequired(LoginRequired value),
    @required Result cancelledByUser(CancelledByUser value),
    @required Result serverError(ServerError value),
    @required Result emailAlreadyInUse(EmailAlreadyInUse value),
    @required
        Result invalidEmailAndPasswordCombination(
            InvalidEmailAndPasswordCombination value),
    @required Result deviceOffline(DeviceOffline value),
    @required Result accountNotFound(AccountNotFound value),
  }) {
    assert(loginRequired != null);
    assert(cancelledByUser != null);
    assert(serverError != null);
    assert(emailAlreadyInUse != null);
    assert(invalidEmailAndPasswordCombination != null);
    assert(deviceOffline != null);
    assert(accountNotFound != null);
    return cancelledByUser(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loginRequired(LoginRequired value),
    Result cancelledByUser(CancelledByUser value),
    Result serverError(ServerError value),
    Result emailAlreadyInUse(EmailAlreadyInUse value),
    Result invalidEmailAndPasswordCombination(
        InvalidEmailAndPasswordCombination value),
    Result deviceOffline(DeviceOffline value),
    Result accountNotFound(AccountNotFound value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (cancelledByUser != null) {
      return cancelledByUser(this);
    }
    return orElse();
  }
}

abstract class CancelledByUser implements AuthFailure {
  const factory CancelledByUser() = _$CancelledByUser;
}

abstract class $ServerErrorCopyWith<$Res> {
  factory $ServerErrorCopyWith(
          ServerError value, $Res Function(ServerError) then) =
      _$ServerErrorCopyWithImpl<$Res>;
}

class _$ServerErrorCopyWithImpl<$Res> extends _$AuthFailureCopyWithImpl<$Res>
    implements $ServerErrorCopyWith<$Res> {
  _$ServerErrorCopyWithImpl(
      ServerError _value, $Res Function(ServerError) _then)
      : super(_value, (v) => _then(v as ServerError));

  @override
  ServerError get _value => super._value as ServerError;
}

class _$ServerError implements ServerError {
  const _$ServerError();

  @override
  String toString() {
    return 'AuthFailure.serverError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ServerError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loginRequired(),
    @required Result cancelledByUser(),
    @required Result serverError(),
    @required Result emailAlreadyInUse(),
    @required Result invalidEmailAndPasswordCombination(),
    @required Result deviceOffline(),
    @required Result accountNotFound(),
  }) {
    assert(loginRequired != null);
    assert(cancelledByUser != null);
    assert(serverError != null);
    assert(emailAlreadyInUse != null);
    assert(invalidEmailAndPasswordCombination != null);
    assert(deviceOffline != null);
    assert(accountNotFound != null);
    return serverError();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loginRequired(),
    Result cancelledByUser(),
    Result serverError(),
    Result emailAlreadyInUse(),
    Result invalidEmailAndPasswordCombination(),
    Result deviceOffline(),
    Result accountNotFound(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (serverError != null) {
      return serverError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loginRequired(LoginRequired value),
    @required Result cancelledByUser(CancelledByUser value),
    @required Result serverError(ServerError value),
    @required Result emailAlreadyInUse(EmailAlreadyInUse value),
    @required
        Result invalidEmailAndPasswordCombination(
            InvalidEmailAndPasswordCombination value),
    @required Result deviceOffline(DeviceOffline value),
    @required Result accountNotFound(AccountNotFound value),
  }) {
    assert(loginRequired != null);
    assert(cancelledByUser != null);
    assert(serverError != null);
    assert(emailAlreadyInUse != null);
    assert(invalidEmailAndPasswordCombination != null);
    assert(deviceOffline != null);
    assert(accountNotFound != null);
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loginRequired(LoginRequired value),
    Result cancelledByUser(CancelledByUser value),
    Result serverError(ServerError value),
    Result emailAlreadyInUse(EmailAlreadyInUse value),
    Result invalidEmailAndPasswordCombination(
        InvalidEmailAndPasswordCombination value),
    Result deviceOffline(DeviceOffline value),
    Result accountNotFound(AccountNotFound value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class ServerError implements AuthFailure {
  const factory ServerError() = _$ServerError;
}

abstract class $EmailAlreadyInUseCopyWith<$Res> {
  factory $EmailAlreadyInUseCopyWith(
          EmailAlreadyInUse value, $Res Function(EmailAlreadyInUse) then) =
      _$EmailAlreadyInUseCopyWithImpl<$Res>;
}

class _$EmailAlreadyInUseCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res>
    implements $EmailAlreadyInUseCopyWith<$Res> {
  _$EmailAlreadyInUseCopyWithImpl(
      EmailAlreadyInUse _value, $Res Function(EmailAlreadyInUse) _then)
      : super(_value, (v) => _then(v as EmailAlreadyInUse));

  @override
  EmailAlreadyInUse get _value => super._value as EmailAlreadyInUse;
}

class _$EmailAlreadyInUse implements EmailAlreadyInUse {
  const _$EmailAlreadyInUse();

  @override
  String toString() {
    return 'AuthFailure.emailAlreadyInUse()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is EmailAlreadyInUse);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loginRequired(),
    @required Result cancelledByUser(),
    @required Result serverError(),
    @required Result emailAlreadyInUse(),
    @required Result invalidEmailAndPasswordCombination(),
    @required Result deviceOffline(),
    @required Result accountNotFound(),
  }) {
    assert(loginRequired != null);
    assert(cancelledByUser != null);
    assert(serverError != null);
    assert(emailAlreadyInUse != null);
    assert(invalidEmailAndPasswordCombination != null);
    assert(deviceOffline != null);
    assert(accountNotFound != null);
    return emailAlreadyInUse();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loginRequired(),
    Result cancelledByUser(),
    Result serverError(),
    Result emailAlreadyInUse(),
    Result invalidEmailAndPasswordCombination(),
    Result deviceOffline(),
    Result accountNotFound(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (emailAlreadyInUse != null) {
      return emailAlreadyInUse();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loginRequired(LoginRequired value),
    @required Result cancelledByUser(CancelledByUser value),
    @required Result serverError(ServerError value),
    @required Result emailAlreadyInUse(EmailAlreadyInUse value),
    @required
        Result invalidEmailAndPasswordCombination(
            InvalidEmailAndPasswordCombination value),
    @required Result deviceOffline(DeviceOffline value),
    @required Result accountNotFound(AccountNotFound value),
  }) {
    assert(loginRequired != null);
    assert(cancelledByUser != null);
    assert(serverError != null);
    assert(emailAlreadyInUse != null);
    assert(invalidEmailAndPasswordCombination != null);
    assert(deviceOffline != null);
    assert(accountNotFound != null);
    return emailAlreadyInUse(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loginRequired(LoginRequired value),
    Result cancelledByUser(CancelledByUser value),
    Result serverError(ServerError value),
    Result emailAlreadyInUse(EmailAlreadyInUse value),
    Result invalidEmailAndPasswordCombination(
        InvalidEmailAndPasswordCombination value),
    Result deviceOffline(DeviceOffline value),
    Result accountNotFound(AccountNotFound value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (emailAlreadyInUse != null) {
      return emailAlreadyInUse(this);
    }
    return orElse();
  }
}

abstract class EmailAlreadyInUse implements AuthFailure {
  const factory EmailAlreadyInUse() = _$EmailAlreadyInUse;
}

abstract class $InvalidEmailAndPasswordCombinationCopyWith<$Res> {
  factory $InvalidEmailAndPasswordCombinationCopyWith(
          InvalidEmailAndPasswordCombination value,
          $Res Function(InvalidEmailAndPasswordCombination) then) =
      _$InvalidEmailAndPasswordCombinationCopyWithImpl<$Res>;
}

class _$InvalidEmailAndPasswordCombinationCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res>
    implements $InvalidEmailAndPasswordCombinationCopyWith<$Res> {
  _$InvalidEmailAndPasswordCombinationCopyWithImpl(
      InvalidEmailAndPasswordCombination _value,
      $Res Function(InvalidEmailAndPasswordCombination) _then)
      : super(_value, (v) => _then(v as InvalidEmailAndPasswordCombination));

  @override
  InvalidEmailAndPasswordCombination get _value =>
      super._value as InvalidEmailAndPasswordCombination;
}

class _$InvalidEmailAndPasswordCombination
    implements InvalidEmailAndPasswordCombination {
  const _$InvalidEmailAndPasswordCombination();

  @override
  String toString() {
    return 'AuthFailure.invalidEmailAndPasswordCombination()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InvalidEmailAndPasswordCombination);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loginRequired(),
    @required Result cancelledByUser(),
    @required Result serverError(),
    @required Result emailAlreadyInUse(),
    @required Result invalidEmailAndPasswordCombination(),
    @required Result deviceOffline(),
    @required Result accountNotFound(),
  }) {
    assert(loginRequired != null);
    assert(cancelledByUser != null);
    assert(serverError != null);
    assert(emailAlreadyInUse != null);
    assert(invalidEmailAndPasswordCombination != null);
    assert(deviceOffline != null);
    assert(accountNotFound != null);
    return invalidEmailAndPasswordCombination();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loginRequired(),
    Result cancelledByUser(),
    Result serverError(),
    Result emailAlreadyInUse(),
    Result invalidEmailAndPasswordCombination(),
    Result deviceOffline(),
    Result accountNotFound(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidEmailAndPasswordCombination != null) {
      return invalidEmailAndPasswordCombination();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loginRequired(LoginRequired value),
    @required Result cancelledByUser(CancelledByUser value),
    @required Result serverError(ServerError value),
    @required Result emailAlreadyInUse(EmailAlreadyInUse value),
    @required
        Result invalidEmailAndPasswordCombination(
            InvalidEmailAndPasswordCombination value),
    @required Result deviceOffline(DeviceOffline value),
    @required Result accountNotFound(AccountNotFound value),
  }) {
    assert(loginRequired != null);
    assert(cancelledByUser != null);
    assert(serverError != null);
    assert(emailAlreadyInUse != null);
    assert(invalidEmailAndPasswordCombination != null);
    assert(deviceOffline != null);
    assert(accountNotFound != null);
    return invalidEmailAndPasswordCombination(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loginRequired(LoginRequired value),
    Result cancelledByUser(CancelledByUser value),
    Result serverError(ServerError value),
    Result emailAlreadyInUse(EmailAlreadyInUse value),
    Result invalidEmailAndPasswordCombination(
        InvalidEmailAndPasswordCombination value),
    Result deviceOffline(DeviceOffline value),
    Result accountNotFound(AccountNotFound value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidEmailAndPasswordCombination != null) {
      return invalidEmailAndPasswordCombination(this);
    }
    return orElse();
  }
}

abstract class InvalidEmailAndPasswordCombination implements AuthFailure {
  const factory InvalidEmailAndPasswordCombination() =
      _$InvalidEmailAndPasswordCombination;
}

abstract class $DeviceOfflineCopyWith<$Res> {
  factory $DeviceOfflineCopyWith(
          DeviceOffline value, $Res Function(DeviceOffline) then) =
      _$DeviceOfflineCopyWithImpl<$Res>;
}

class _$DeviceOfflineCopyWithImpl<$Res> extends _$AuthFailureCopyWithImpl<$Res>
    implements $DeviceOfflineCopyWith<$Res> {
  _$DeviceOfflineCopyWithImpl(
      DeviceOffline _value, $Res Function(DeviceOffline) _then)
      : super(_value, (v) => _then(v as DeviceOffline));

  @override
  DeviceOffline get _value => super._value as DeviceOffline;
}

class _$DeviceOffline implements DeviceOffline {
  const _$DeviceOffline();

  @override
  String toString() {
    return 'AuthFailure.deviceOffline()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is DeviceOffline);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loginRequired(),
    @required Result cancelledByUser(),
    @required Result serverError(),
    @required Result emailAlreadyInUse(),
    @required Result invalidEmailAndPasswordCombination(),
    @required Result deviceOffline(),
    @required Result accountNotFound(),
  }) {
    assert(loginRequired != null);
    assert(cancelledByUser != null);
    assert(serverError != null);
    assert(emailAlreadyInUse != null);
    assert(invalidEmailAndPasswordCombination != null);
    assert(deviceOffline != null);
    assert(accountNotFound != null);
    return deviceOffline();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loginRequired(),
    Result cancelledByUser(),
    Result serverError(),
    Result emailAlreadyInUse(),
    Result invalidEmailAndPasswordCombination(),
    Result deviceOffline(),
    Result accountNotFound(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deviceOffline != null) {
      return deviceOffline();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loginRequired(LoginRequired value),
    @required Result cancelledByUser(CancelledByUser value),
    @required Result serverError(ServerError value),
    @required Result emailAlreadyInUse(EmailAlreadyInUse value),
    @required
        Result invalidEmailAndPasswordCombination(
            InvalidEmailAndPasswordCombination value),
    @required Result deviceOffline(DeviceOffline value),
    @required Result accountNotFound(AccountNotFound value),
  }) {
    assert(loginRequired != null);
    assert(cancelledByUser != null);
    assert(serverError != null);
    assert(emailAlreadyInUse != null);
    assert(invalidEmailAndPasswordCombination != null);
    assert(deviceOffline != null);
    assert(accountNotFound != null);
    return deviceOffline(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loginRequired(LoginRequired value),
    Result cancelledByUser(CancelledByUser value),
    Result serverError(ServerError value),
    Result emailAlreadyInUse(EmailAlreadyInUse value),
    Result invalidEmailAndPasswordCombination(
        InvalidEmailAndPasswordCombination value),
    Result deviceOffline(DeviceOffline value),
    Result accountNotFound(AccountNotFound value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deviceOffline != null) {
      return deviceOffline(this);
    }
    return orElse();
  }
}

abstract class DeviceOffline implements AuthFailure {
  const factory DeviceOffline() = _$DeviceOffline;
}

abstract class $AccountNotFoundCopyWith<$Res> {
  factory $AccountNotFoundCopyWith(
          AccountNotFound value, $Res Function(AccountNotFound) then) =
      _$AccountNotFoundCopyWithImpl<$Res>;
}

class _$AccountNotFoundCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res>
    implements $AccountNotFoundCopyWith<$Res> {
  _$AccountNotFoundCopyWithImpl(
      AccountNotFound _value, $Res Function(AccountNotFound) _then)
      : super(_value, (v) => _then(v as AccountNotFound));

  @override
  AccountNotFound get _value => super._value as AccountNotFound;
}

class _$AccountNotFound implements AccountNotFound {
  const _$AccountNotFound();

  @override
  String toString() {
    return 'AuthFailure.accountNotFound()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is AccountNotFound);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loginRequired(),
    @required Result cancelledByUser(),
    @required Result serverError(),
    @required Result emailAlreadyInUse(),
    @required Result invalidEmailAndPasswordCombination(),
    @required Result deviceOffline(),
    @required Result accountNotFound(),
  }) {
    assert(loginRequired != null);
    assert(cancelledByUser != null);
    assert(serverError != null);
    assert(emailAlreadyInUse != null);
    assert(invalidEmailAndPasswordCombination != null);
    assert(deviceOffline != null);
    assert(accountNotFound != null);
    return accountNotFound();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loginRequired(),
    Result cancelledByUser(),
    Result serverError(),
    Result emailAlreadyInUse(),
    Result invalidEmailAndPasswordCombination(),
    Result deviceOffline(),
    Result accountNotFound(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (accountNotFound != null) {
      return accountNotFound();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loginRequired(LoginRequired value),
    @required Result cancelledByUser(CancelledByUser value),
    @required Result serverError(ServerError value),
    @required Result emailAlreadyInUse(EmailAlreadyInUse value),
    @required
        Result invalidEmailAndPasswordCombination(
            InvalidEmailAndPasswordCombination value),
    @required Result deviceOffline(DeviceOffline value),
    @required Result accountNotFound(AccountNotFound value),
  }) {
    assert(loginRequired != null);
    assert(cancelledByUser != null);
    assert(serverError != null);
    assert(emailAlreadyInUse != null);
    assert(invalidEmailAndPasswordCombination != null);
    assert(deviceOffline != null);
    assert(accountNotFound != null);
    return accountNotFound(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loginRequired(LoginRequired value),
    Result cancelledByUser(CancelledByUser value),
    Result serverError(ServerError value),
    Result emailAlreadyInUse(EmailAlreadyInUse value),
    Result invalidEmailAndPasswordCombination(
        InvalidEmailAndPasswordCombination value),
    Result deviceOffline(DeviceOffline value),
    Result accountNotFound(AccountNotFound value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (accountNotFound != null) {
      return accountNotFound(this);
    }
    return orElse();
  }
}

abstract class AccountNotFound implements AuthFailure {
  const factory AccountNotFound() = _$AccountNotFound;
}
