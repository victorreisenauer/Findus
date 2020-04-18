// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'lesson_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
LessonModel _$LessonModelFromJson(Map<String, dynamic> json) {
  return _LessonModel.fromJson(json);
}

class _$LessonModelTearOff {
  const _$LessonModelTearOff();

  _LessonModel call(
      {@required String id, @required List<ExerciseModel> exerciseList}) {
    return _LessonModel(
      id: id,
      exerciseList: exerciseList,
    );
  }
}

// ignore: unused_element
const $LessonModel = _$LessonModelTearOff();

mixin _$LessonModel {
  String get id;
  List<ExerciseModel> get exerciseList;

  Map<String, dynamic> toJson();
  $LessonModelCopyWith<LessonModel> get copyWith;
}

abstract class $LessonModelCopyWith<$Res> {
  factory $LessonModelCopyWith(
          LessonModel value, $Res Function(LessonModel) then) =
      _$LessonModelCopyWithImpl<$Res>;
  $Res call({String id, List<ExerciseModel> exerciseList});
}

class _$LessonModelCopyWithImpl<$Res> implements $LessonModelCopyWith<$Res> {
  _$LessonModelCopyWithImpl(this._value, this._then);

  final LessonModel _value;
  // ignore: unused_field
  final $Res Function(LessonModel) _then;

  @override
  $Res call({
    Object id = freezed,
    Object exerciseList = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      exerciseList: exerciseList == freezed
          ? _value.exerciseList
          : exerciseList as List<ExerciseModel>,
    ));
  }
}

abstract class _$LessonModelCopyWith<$Res>
    implements $LessonModelCopyWith<$Res> {
  factory _$LessonModelCopyWith(
          _LessonModel value, $Res Function(_LessonModel) then) =
      __$LessonModelCopyWithImpl<$Res>;
  @override
  $Res call({String id, List<ExerciseModel> exerciseList});
}

class __$LessonModelCopyWithImpl<$Res> extends _$LessonModelCopyWithImpl<$Res>
    implements _$LessonModelCopyWith<$Res> {
  __$LessonModelCopyWithImpl(
      _LessonModel _value, $Res Function(_LessonModel) _then)
      : super(_value, (v) => _then(v as _LessonModel));

  @override
  _LessonModel get _value => super._value as _LessonModel;

  @override
  $Res call({
    Object id = freezed,
    Object exerciseList = freezed,
  }) {
    return _then(_LessonModel(
      id: id == freezed ? _value.id : id as String,
      exerciseList: exerciseList == freezed
          ? _value.exerciseList
          : exerciseList as List<ExerciseModel>,
    ));
  }
}

@JsonSerializable()
class _$_LessonModel implements _LessonModel {
  _$_LessonModel({@required this.id, @required this.exerciseList})
      : assert(id != null),
        assert(exerciseList != null);

  factory _$_LessonModel.fromJson(Map<String, dynamic> json) =>
      _$_$_LessonModelFromJson(json);

  @override
  final String id;
  @override
  final List<ExerciseModel> exerciseList;

  @override
  String toString() {
    return 'LessonModel(id: $id, exerciseList: $exerciseList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LessonModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.exerciseList, exerciseList) ||
                const DeepCollectionEquality()
                    .equals(other.exerciseList, exerciseList)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(exerciseList);

  @override
  _$LessonModelCopyWith<_LessonModel> get copyWith =>
      __$LessonModelCopyWithImpl<_LessonModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_LessonModelToJson(this);
  }
}

abstract class _LessonModel implements LessonModel {
  factory _LessonModel(
      {@required String id,
      @required List<ExerciseModel> exerciseList}) = _$_LessonModel;

  factory _LessonModel.fromJson(Map<String, dynamic> json) =
      _$_LessonModel.fromJson;

  @override
  String get id;
  @override
  List<ExerciseModel> get exerciseList;
  @override
  _$LessonModelCopyWith<_LessonModel> get copyWith;
}
