// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'exercise_result_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
ExerciseResultModel _$ExerciseResultModelFromJson(Map<String, dynamic> json) {
  return _ExerciseResultModel.fromJson(json);
}

class _$ExerciseResultModelTearOff {
  const _$ExerciseResultModelTearOff();

  _ExerciseResultModel call({@required String id, @required Map<dynamic, dynamic> data}) {
    return _ExerciseResultModel(
      id: id,
      data: data,
    );
  }
}

// ignore: unused_element
const $ExerciseResultModel = _$ExerciseResultModelTearOff();

mixin _$ExerciseResultModel {
  String get id;
  Map<dynamic, dynamic> get data;

  Map<String, dynamic> toJson();
  $ExerciseResultModelCopyWith<ExerciseResultModel> get copyWith;
}

abstract class $ExerciseResultModelCopyWith<$Res> {
  factory $ExerciseResultModelCopyWith(ExerciseResultModel value, $Res Function(ExerciseResultModel) then) =
      _$ExerciseResultModelCopyWithImpl<$Res>;
  $Res call({String id, Map<dynamic, dynamic> data});
}

class _$ExerciseResultModelCopyWithImpl<$Res> implements $ExerciseResultModelCopyWith<$Res> {
  _$ExerciseResultModelCopyWithImpl(this._value, this._then);

  final ExerciseResultModel _value;
  // ignore: unused_field
  final $Res Function(ExerciseResultModel) _then;

  @override
  $Res call({
    Object id = freezed,
    Object data = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      data: data == freezed ? _value.data : data as Map<dynamic, dynamic>,
    ));
  }
}

abstract class _$ExerciseResultModelCopyWith<$Res> implements $ExerciseResultModelCopyWith<$Res> {
  factory _$ExerciseResultModelCopyWith(_ExerciseResultModel value, $Res Function(_ExerciseResultModel) then) =
      __$ExerciseResultModelCopyWithImpl<$Res>;
  @override
  $Res call({String id, Map<dynamic, dynamic> data});
}

class __$ExerciseResultModelCopyWithImpl<$Res> extends _$ExerciseResultModelCopyWithImpl<$Res>
    implements _$ExerciseResultModelCopyWith<$Res> {
  __$ExerciseResultModelCopyWithImpl(_ExerciseResultModel _value, $Res Function(_ExerciseResultModel) _then)
      : super(_value, (v) => _then(v as _ExerciseResultModel));

  @override
  _ExerciseResultModel get _value => super._value as _ExerciseResultModel;

  @override
  $Res call({
    Object id = freezed,
    Object data = freezed,
  }) {
    return _then(_ExerciseResultModel(
      id: id == freezed ? _value.id : id as String,
      data: data == freezed ? _value.data : data as Map<dynamic, dynamic>,
    ));
  }
}

@JsonSerializable()
class _$_ExerciseResultModel implements _ExerciseResultModel {
  const _$_ExerciseResultModel({@required this.id, @required this.data})
      : assert(id != null),
        assert(data != null);

  factory _$_ExerciseResultModel.fromJson(Map<String, dynamic> json) => _$_$_ExerciseResultModelFromJson(json);

  @override
  final String id;
  @override
  final Map<dynamic, dynamic> data;

  @override
  String toString() {
    return 'ExerciseResultModel(id: $id, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ExerciseResultModel &&
            (identical(other.id, id) || const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.data, data) || const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id) ^ const DeepCollectionEquality().hash(data);

  @override
  _$ExerciseResultModelCopyWith<_ExerciseResultModel> get copyWith =>
      __$ExerciseResultModelCopyWithImpl<_ExerciseResultModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ExerciseResultModelToJson(this);
  }
}

abstract class _ExerciseResultModel implements ExerciseResultModel {
  const factory _ExerciseResultModel({@required String id, @required Map<dynamic, dynamic> data}) =
      _$_ExerciseResultModel;

  factory _ExerciseResultModel.fromJson(Map<String, dynamic> json) = _$_ExerciseResultModel.fromJson;

  @override
  String get id;
  @override
  Map<dynamic, dynamic> get data;
  @override
  _$ExerciseResultModelCopyWith<_ExerciseResultModel> get copyWith;
}
