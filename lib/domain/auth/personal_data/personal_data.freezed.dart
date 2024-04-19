// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'personal_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$PersonalDataTearOff {
  const _$PersonalDataTearOff();

  _PersonalData call(
      {@required StringSingleLine firstName,
      @required StringSingleLine lastName}) {
    return _PersonalData(
      firstName: firstName,
      lastName: lastName,
    );
  }
}

// ignore: unused_element
const $PersonalData = _$PersonalDataTearOff();

mixin _$PersonalData {
  StringSingleLine get firstName;
  StringSingleLine get lastName;

  $PersonalDataCopyWith<PersonalData> get copyWith;
}

abstract class $PersonalDataCopyWith<$Res> {
  factory $PersonalDataCopyWith(
          PersonalData value, $Res Function(PersonalData) then) =
      _$PersonalDataCopyWithImpl<$Res>;
  $Res call({StringSingleLine firstName, StringSingleLine lastName});
}

class _$PersonalDataCopyWithImpl<$Res> implements $PersonalDataCopyWith<$Res> {
  _$PersonalDataCopyWithImpl(this._value, this._then);

  final PersonalData _value;
  // ignore: unused_field
  final $Res Function(PersonalData) _then;

  @override
  $Res call({
    Object firstName = freezed,
    Object lastName = freezed,
  }) {
    return _then(_value.copyWith(
      firstName: firstName == freezed
          ? _value.firstName
          : firstName as StringSingleLine,
      lastName:
          lastName == freezed ? _value.lastName : lastName as StringSingleLine,
    ));
  }
}

abstract class _$PersonalDataCopyWith<$Res>
    implements $PersonalDataCopyWith<$Res> {
  factory _$PersonalDataCopyWith(
          _PersonalData value, $Res Function(_PersonalData) then) =
      __$PersonalDataCopyWithImpl<$Res>;
  @override
  $Res call({StringSingleLine firstName, StringSingleLine lastName});
}

class __$PersonalDataCopyWithImpl<$Res> extends _$PersonalDataCopyWithImpl<$Res>
    implements _$PersonalDataCopyWith<$Res> {
  __$PersonalDataCopyWithImpl(
      _PersonalData _value, $Res Function(_PersonalData) _then)
      : super(_value, (v) => _then(v as _PersonalData));

  @override
  _PersonalData get _value => super._value as _PersonalData;

  @override
  $Res call({
    Object firstName = freezed,
    Object lastName = freezed,
  }) {
    return _then(_PersonalData(
      firstName: firstName == freezed
          ? _value.firstName
          : firstName as StringSingleLine,
      lastName:
          lastName == freezed ? _value.lastName : lastName as StringSingleLine,
    ));
  }
}

class _$_PersonalData with DiagnosticableTreeMixin implements _PersonalData {
  const _$_PersonalData({@required this.firstName, @required this.lastName})
      : assert(firstName != null),
        assert(lastName != null);

  @override
  final StringSingleLine firstName;
  @override
  final StringSingleLine lastName;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PersonalData(firstName: $firstName, lastName: $lastName)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PersonalData'))
      ..add(DiagnosticsProperty('firstName', firstName))
      ..add(DiagnosticsProperty('lastName', lastName));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PersonalData &&
            (identical(other.firstName, firstName) ||
                const DeepCollectionEquality()
                    .equals(other.firstName, firstName)) &&
            (identical(other.lastName, lastName) ||
                const DeepCollectionEquality()
                    .equals(other.lastName, lastName)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(firstName) ^
      const DeepCollectionEquality().hash(lastName);

  @override
  _$PersonalDataCopyWith<_PersonalData> get copyWith =>
      __$PersonalDataCopyWithImpl<_PersonalData>(this, _$identity);
}

abstract class _PersonalData implements PersonalData {
  const factory _PersonalData(
      {@required StringSingleLine firstName,
      @required StringSingleLine lastName}) = _$_PersonalData;

  @override
  StringSingleLine get firstName;
  @override
  StringSingleLine get lastName;
  @override
  _$PersonalDataCopyWith<_PersonalData> get copyWith;
}
