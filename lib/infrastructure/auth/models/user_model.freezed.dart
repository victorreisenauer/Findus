// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
UserModel _$UserModelFromJson(Map<String, dynamic> json) {
  return _UserModel.fromJson(json);
}

class _$UserModelTearOff {
  const _$UserModelTearOff();

  _UserModel call({@required String id, @required String email, bool active}) {
    return _UserModel(
      id: id,
      email: email,
      active: active,
    );
  }
}

// ignore: unused_element
const $UserModel = _$UserModelTearOff();

mixin _$UserModel {
  String get id;
  String get email;
  bool get active;

  Map<String, dynamic> toJson();
  $UserModelCopyWith<UserModel> get copyWith;
}

abstract class $UserModelCopyWith<$Res> {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) then) = _$UserModelCopyWithImpl<$Res>;
  $Res call({String id, String email, bool active});
}

class _$UserModelCopyWithImpl<$Res> implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(this._value, this._then);

  final UserModel _value;
  // ignore: unused_field
  final $Res Function(UserModel) _then;

  @override
  $Res call({
    Object id = freezed,
    Object email = freezed,
    Object active = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      email: email == freezed ? _value.email : email as String,
      active: active == freezed ? _value.active : active as bool,
    ));
  }
}

abstract class _$UserModelCopyWith<$Res> implements $UserModelCopyWith<$Res> {
  factory _$UserModelCopyWith(_UserModel value, $Res Function(_UserModel) then) = __$UserModelCopyWithImpl<$Res>;
  @override
  $Res call({String id, String email, bool active});
}

class __$UserModelCopyWithImpl<$Res> extends _$UserModelCopyWithImpl<$Res> implements _$UserModelCopyWith<$Res> {
  __$UserModelCopyWithImpl(_UserModel _value, $Res Function(_UserModel) _then)
      : super(_value, (v) => _then(v as _UserModel));

  @override
  _UserModel get _value => super._value as _UserModel;

  @override
  $Res call({
    Object id = freezed,
    Object email = freezed,
    Object active = freezed,
  }) {
    return _then(_UserModel(
      id: id == freezed ? _value.id : id as String,
      email: email == freezed ? _value.email : email as String,
      active: active == freezed ? _value.active : active as bool,
    ));
  }
}

@JsonSerializable()
class _$_UserModel implements _UserModel {
  const _$_UserModel({@required this.id, @required this.email, this.active})
      : assert(id != null),
        assert(email != null);

  factory _$_UserModel.fromJson(Map<String, dynamic> json) => _$_$_UserModelFromJson(json);

  @override
  final String id;
  @override
  final String email;
  @override
  final bool active;

  @override
  String toString() {
    return 'UserModel(id: $id, email: $email, active: $active)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserModel &&
            (identical(other.id, id) || const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.email, email) || const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.active, active) || const DeepCollectionEquality().equals(other.active, active)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(active);

  @override
  _$UserModelCopyWith<_UserModel> get copyWith => __$UserModelCopyWithImpl<_UserModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UserModelToJson(this);
  }
}

abstract class _UserModel implements UserModel {
  const factory _UserModel({@required String id, @required String email, bool active}) = _$_UserModel;

  factory _UserModel.fromJson(Map<String, dynamic> json) = _$_UserModel.fromJson;

  @override
  String get id;
  @override
  String get email;
  @override
  bool get active;
  @override
  _$UserModelCopyWith<_UserModel> get copyWith;
}
