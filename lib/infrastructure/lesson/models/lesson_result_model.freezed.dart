// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'lesson_result_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
LessonResultModel _$LessonResultModelFromJson(Map<String, dynamic> json) {
  return _LessonResultModel.fromJson(json);
}

class _$LessonResultModelTearOff {
  const _$LessonResultModelTearOff();

  _LessonResultModel call(
      {@required String id, @required List<ExerciseResultModel> resultsList, @required String assignedToUserId}) {
    return _LessonResultModel(
      id: id,
      resultsList: resultsList,
      assignedToUserId: assignedToUserId,
    );
  }
}

// ignore: unused_element
const $LessonResultModel = _$LessonResultModelTearOff();

mixin _$LessonResultModel {
  String get id;
  List<ExerciseResultModel> get resultsList;
  String get assignedToUserId;

  Map<String, dynamic> toJson();
  $LessonResultModelCopyWith<LessonResultModel> get copyWith;
}

abstract class $LessonResultModelCopyWith<$Res> {
  factory $LessonResultModelCopyWith(LessonResultModel value, $Res Function(LessonResultModel) then) =
      _$LessonResultModelCopyWithImpl<$Res>;
  $Res call({String id, List<ExerciseResultModel> resultsList, String assignedToUserId});
}

class _$LessonResultModelCopyWithImpl<$Res> implements $LessonResultModelCopyWith<$Res> {
  _$LessonResultModelCopyWithImpl(this._value, this._then);

  final LessonResultModel _value;
  // ignore: unused_field
  final $Res Function(LessonResultModel) _then;

  @override
  $Res call({
    Object id = freezed,
    Object resultsList = freezed,
    Object assignedToUserId = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      resultsList: resultsList == freezed ? _value.resultsList : resultsList as List<ExerciseResultModel>,
      assignedToUserId: assignedToUserId == freezed ? _value.assignedToUserId : assignedToUserId as String,
    ));
  }
}

abstract class _$LessonResultModelCopyWith<$Res> implements $LessonResultModelCopyWith<$Res> {
  factory _$LessonResultModelCopyWith(_LessonResultModel value, $Res Function(_LessonResultModel) then) =
      __$LessonResultModelCopyWithImpl<$Res>;
  @override
  $Res call({String id, List<ExerciseResultModel> resultsList, String assignedToUserId});
}

class __$LessonResultModelCopyWithImpl<$Res> extends _$LessonResultModelCopyWithImpl<$Res>
    implements _$LessonResultModelCopyWith<$Res> {
  __$LessonResultModelCopyWithImpl(_LessonResultModel _value, $Res Function(_LessonResultModel) _then)
      : super(_value, (v) => _then(v as _LessonResultModel));

  @override
  _LessonResultModel get _value => super._value as _LessonResultModel;

  @override
  $Res call({
    Object id = freezed,
    Object resultsList = freezed,
    Object assignedToUserId = freezed,
  }) {
    return _then(_LessonResultModel(
      id: id == freezed ? _value.id : id as String,
      resultsList: resultsList == freezed ? _value.resultsList : resultsList as List<ExerciseResultModel>,
      assignedToUserId: assignedToUserId == freezed ? _value.assignedToUserId : assignedToUserId as String,
    ));
  }
}

@JsonSerializable()
class _$_LessonResultModel implements _LessonResultModel {
  const _$_LessonResultModel({@required this.id, @required this.resultsList, @required this.assignedToUserId})
      : assert(id != null),
        assert(resultsList != null),
        assert(assignedToUserId != null);

  factory _$_LessonResultModel.fromJson(Map<String, dynamic> json) => _$_$_LessonResultModelFromJson(json);

  @override
  final String id;
  @override
  final List<ExerciseResultModel> resultsList;
  @override
  final String assignedToUserId;

  @override
  String toString() {
    return 'LessonResultModel(id: $id, resultsList: $resultsList, assignedToUserId: $assignedToUserId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LessonResultModel &&
            (identical(other.id, id) || const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.resultsList, resultsList) ||
                const DeepCollectionEquality().equals(other.resultsList, resultsList)) &&
            (identical(other.assignedToUserId, assignedToUserId) ||
                const DeepCollectionEquality().equals(other.assignedToUserId, assignedToUserId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(resultsList) ^
      const DeepCollectionEquality().hash(assignedToUserId);

  @override
  _$LessonResultModelCopyWith<_LessonResultModel> get copyWith =>
      __$LessonResultModelCopyWithImpl<_LessonResultModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_LessonResultModelToJson(this);
  }
}

abstract class _LessonResultModel implements LessonResultModel {
  const factory _LessonResultModel(
      {@required String id,
      @required List<ExerciseResultModel> resultsList,
      @required String assignedToUserId}) = _$_LessonResultModel;

  factory _LessonResultModel.fromJson(Map<String, dynamic> json) = _$_LessonResultModel.fromJson;

  @override
  String get id;
  @override
  List<ExerciseResultModel> get resultsList;
  @override
  String get assignedToUserId;
  @override
  _$LessonResultModelCopyWith<_LessonResultModel> get copyWith;
}
