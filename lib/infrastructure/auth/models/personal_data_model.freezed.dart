// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'personal_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
PersonalDataModel _$PersonalDataModelFromJson(Map<String, dynamic> json) {
  return _PersonalDataModel.fromJson(json);
}

class _$PersonalDataModelTearOff {
  const _$PersonalDataModelTearOff();

  _PersonalDataModel call(
      {@required String firstName, @required String lastName}) {
    return _PersonalDataModel(
      firstName: firstName,
      lastName: lastName,
    );
  }
}

// ignore: unused_element
const $PersonalDataModel = _$PersonalDataModelTearOff();

mixin _$PersonalDataModel {
  String get firstName;
  String get lastName;

  Map<String, dynamic> toJson();
  $PersonalDataModelCopyWith<PersonalDataModel> get copyWith;
}

abstract class $PersonalDataModelCopyWith<$Res> {
  factory $PersonalDataModelCopyWith(
          PersonalDataModel value, $Res Function(PersonalDataModel) then) =
      _$PersonalDataModelCopyWithImpl<$Res>;
  $Res call({String firstName, String lastName});
}

class _$PersonalDataModelCopyWithImpl<$Res>
    implements $PersonalDataModelCopyWith<$Res> {
  _$PersonalDataModelCopyWithImpl(this._value, this._then);

  final PersonalDataModel _value;
  // ignore: unused_field
  final $Res Function(PersonalDataModel) _then;

  @override
  $Res call({
    Object firstName = freezed,
    Object lastName = freezed,
  }) {
    return _then(_value.copyWith(
      firstName: firstName == freezed ? _value.firstName : firstName as String,
      lastName: lastName == freezed ? _value.lastName : lastName as String,
    ));
  }
}

abstract class _$PersonalDataModelCopyWith<$Res>
    implements $PersonalDataModelCopyWith<$Res> {
  factory _$PersonalDataModelCopyWith(
          _PersonalDataModel value, $Res Function(_PersonalDataModel) then) =
      __$PersonalDataModelCopyWithImpl<$Res>;
  @override
  $Res call({String firstName, String lastName});
}

class __$PersonalDataModelCopyWithImpl<$Res>
    extends _$PersonalDataModelCopyWithImpl<$Res>
    implements _$PersonalDataModelCopyWith<$Res> {
  __$PersonalDataModelCopyWithImpl(
      _PersonalDataModel _value, $Res Function(_PersonalDataModel) _then)
      : super(_value, (v) => _then(v as _PersonalDataModel));

  @override
  _PersonalDataModel get _value => super._value as _PersonalDataModel;

  @override
  $Res call({
    Object firstName = freezed,
    Object lastName = freezed,
  }) {
    return _then(_PersonalDataModel(
      firstName: firstName == freezed ? _value.firstName : firstName as String,
      lastName: lastName == freezed ? _value.lastName : lastName as String,
    ));
  }
}

@JsonSerializable()
class _$_PersonalDataModel implements _PersonalDataModel {
  const _$_PersonalDataModel(
      {@required this.firstName, @required this.lastName})
      : assert(firstName != null),
        assert(lastName != null);

  factory _$_PersonalDataModel.fromJson(Map<String, dynamic> json) =>
      _$_$_PersonalDataModelFromJson(json);

  @override
  final String firstName;
  @override
  final String lastName;

  @override
  String toString() {
    return 'PersonalDataModel(firstName: $firstName, lastName: $lastName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PersonalDataModel &&
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
  _$PersonalDataModelCopyWith<_PersonalDataModel> get copyWith =>
      __$PersonalDataModelCopyWithImpl<_PersonalDataModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PersonalDataModelToJson(this);
  }
}

abstract class _PersonalDataModel implements PersonalDataModel {
  const factory _PersonalDataModel(
      {@required String firstName,
      @required String lastName}) = _$_PersonalDataModel;

  factory _PersonalDataModel.fromJson(Map<String, dynamic> json) =
      _$_PersonalDataModel.fromJson;

  @override
  String get firstName;
  @override
  String get lastName;
  @override
  _$PersonalDataModelCopyWith<_PersonalDataModel> get copyWith;
}
