// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$UserTearOff {
  const _$UserTearOff();

  _User call({@required UniqueId id, @required PersonalData personalData, @required EmailAddress emailAddress}) {
    return _User(
      id: id,
      personalData: personalData,
      emailAddress: emailAddress,
    );
  }
}

// ignore: unused_element
const $User = _$UserTearOff();

mixin _$User {
  UniqueId get id;
  PersonalData get personalData;
  EmailAddress get emailAddress;

  $UserCopyWith<User> get copyWith;
}

abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) = _$UserCopyWithImpl<$Res>;
  $Res call({UniqueId id, PersonalData personalData, EmailAddress emailAddress});

  $PersonalDataCopyWith<$Res> get personalData;
}

class _$UserCopyWithImpl<$Res> implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  final User _value;
  // ignore: unused_field
  final $Res Function(User) _then;

  @override
  $Res call({
    Object id = freezed,
    Object personalData = freezed,
    Object emailAddress = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as UniqueId,
      personalData: personalData == freezed ? _value.personalData : personalData as PersonalData,
      emailAddress: emailAddress == freezed ? _value.emailAddress : emailAddress as EmailAddress,
    ));
  }

  @override
  $PersonalDataCopyWith<$Res> get personalData {
    if (_value.personalData == null) {
      return null;
    }
    return $PersonalDataCopyWith<$Res>(_value.personalData, (value) {
      return _then(_value.copyWith(personalData: value));
    });
  }
}

abstract class _$UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$UserCopyWith(_User value, $Res Function(_User) then) = __$UserCopyWithImpl<$Res>;
  @override
  $Res call({UniqueId id, PersonalData personalData, EmailAddress emailAddress});

  @override
  $PersonalDataCopyWith<$Res> get personalData;
}

class __$UserCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res> implements _$UserCopyWith<$Res> {
  __$UserCopyWithImpl(_User _value, $Res Function(_User) _then) : super(_value, (v) => _then(v as _User));

  @override
  _User get _value => super._value as _User;

  @override
  $Res call({
    Object id = freezed,
    Object personalData = freezed,
    Object emailAddress = freezed,
  }) {
    return _then(_User(
      id: id == freezed ? _value.id : id as UniqueId,
      personalData: personalData == freezed ? _value.personalData : personalData as PersonalData,
      emailAddress: emailAddress == freezed ? _value.emailAddress : emailAddress as EmailAddress,
    ));
  }
}

class _$_User with DiagnosticableTreeMixin implements _User {
  const _$_User({@required this.id, @required this.personalData, @required this.emailAddress})
      : assert(id != null),
        assert(personalData != null),
        assert(emailAddress != null);

  @override
  final UniqueId id;
  @override
  final PersonalData personalData;
  @override
  final EmailAddress emailAddress;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'User(id: $id, personalData: $personalData, emailAddress: $emailAddress)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'User'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('personalData', personalData))
      ..add(DiagnosticsProperty('emailAddress', emailAddress));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _User &&
            (identical(other.id, id) || const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.personalData, personalData) ||
                const DeepCollectionEquality().equals(other.personalData, personalData)) &&
            (identical(other.emailAddress, emailAddress) ||
                const DeepCollectionEquality().equals(other.emailAddress, emailAddress)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(personalData) ^
      const DeepCollectionEquality().hash(emailAddress);

  @override
  _$UserCopyWith<_User> get copyWith => __$UserCopyWithImpl<_User>(this, _$identity);
}

abstract class _User implements User {
  const factory _User(
      {@required UniqueId id, @required PersonalData personalData, @required EmailAddress emailAddress}) = _$_User;

  @override
  UniqueId get id;
  @override
  PersonalData get personalData;
  @override
  EmailAddress get emailAddress;
  @override
  _$UserCopyWith<_User> get copyWith;
}
