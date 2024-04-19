// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'exercise_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
ExerciseModel _$ExerciseModelFromJson(Map<String, dynamic> json) {
  return _ExerciseModel.fromJson(json);
}

class _$ExerciseModelTearOff {
  const _$ExerciseModelTearOff();

  _ExerciseModel call(
      {@required String id,
      @required String type,
      @required Map<dynamic, dynamic> data}) {
    return _ExerciseModel(
      id: id,
      type: type,
      data: data,
    );
  }
}

// ignore: unused_element
const $ExerciseModel = _$ExerciseModelTearOff();

mixin _$ExerciseModel {
  String get id;
  String get type;
  Map<dynamic, dynamic> get data;

  Map<String, dynamic> toJson();
  $ExerciseModelCopyWith<ExerciseModel> get copyWith;
}

abstract class $ExerciseModelCopyWith<$Res> {
  factory $ExerciseModelCopyWith(
          ExerciseModel value, $Res Function(ExerciseModel) then) =
      _$ExerciseModelCopyWithImpl<$Res>;
  $Res call({String id, String type, Map<dynamic, dynamic> data});
}

class _$ExerciseModelCopyWithImpl<$Res>
    implements $ExerciseModelCopyWith<$Res> {
  _$ExerciseModelCopyWithImpl(this._value, this._then);

  final ExerciseModel _value;
  // ignore: unused_field
  final $Res Function(ExerciseModel) _then;

  @override
  $Res call({
    Object id = freezed,
    Object type = freezed,
    Object data = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      type: type == freezed ? _value.type : type as String,
      data: data == freezed ? _value.data : data as Map<dynamic, dynamic>,
    ));
  }
}

abstract class _$ExerciseModelCopyWith<$Res>
    implements $ExerciseModelCopyWith<$Res> {
  factory _$ExerciseModelCopyWith(
          _ExerciseModel value, $Res Function(_ExerciseModel) then) =
      __$ExerciseModelCopyWithImpl<$Res>;
  @override
  $Res call({String id, String type, Map<dynamic, dynamic> data});
}

class __$ExerciseModelCopyWithImpl<$Res>
    extends _$ExerciseModelCopyWithImpl<$Res>
    implements _$ExerciseModelCopyWith<$Res> {
  __$ExerciseModelCopyWithImpl(
      _ExerciseModel _value, $Res Function(_ExerciseModel) _then)
      : super(_value, (v) => _then(v as _ExerciseModel));

  @override
  _ExerciseModel get _value => super._value as _ExerciseModel;

  @override
  $Res call({
    Object id = freezed,
    Object type = freezed,
    Object data = freezed,
  }) {
    return _then(_ExerciseModel(
      id: id == freezed ? _value.id : id as String,
      type: type == freezed ? _value.type : type as String,
      data: data == freezed ? _value.data : data as Map<dynamic, dynamic>,
    ));
  }
}

@JsonSerializable()
class _$_ExerciseModel implements _ExerciseModel {
  const _$_ExerciseModel(
      {@required this.id, @required this.type, @required this.data})
      : assert(id != null),
        assert(type != null),
        assert(data != null);

  factory _$_ExerciseModel.fromJson(Map<String, dynamic> json) =>
      _$_$_ExerciseModelFromJson(json);

  @override
  final String id;
  @override
  final String type;
  @override
  final Map<dynamic, dynamic> data;

  @override
  String toString() {
    return 'ExerciseModel(id: $id, type: $type, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ExerciseModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(data);

  @override
  _$ExerciseModelCopyWith<_ExerciseModel> get copyWith =>
      __$ExerciseModelCopyWithImpl<_ExerciseModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ExerciseModelToJson(this);
  }
}

abstract class _ExerciseModel implements ExerciseModel {
  const factory _ExerciseModel(
      {@required String id,
      @required String type,
      @required Map<dynamic, dynamic> data}) = _$_ExerciseModel;

  factory _ExerciseModel.fromJson(Map<String, dynamic> json) =
      _$_ExerciseModel.fromJson;

  @override
  String get id;
  @override
  String get type;
  @override
  Map<dynamic, dynamic> get data;
  @override
  _$ExerciseModelCopyWith<_ExerciseModel> get copyWith;
}
