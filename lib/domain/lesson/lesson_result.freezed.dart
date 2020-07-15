// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'lesson_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$LessonResultTearOff {
  const _$LessonResultTearOff();

  _LessonResult call({@required UniqueId id, @required KtList<ExerciseResult> resultList}) {
    return _LessonResult(
      id: id,
      resultList: resultList,
    );
  }
}

// ignore: unused_element
const $LessonResult = _$LessonResultTearOff();

mixin _$LessonResult {
  UniqueId get id;
  KtList<ExerciseResult> get resultList;

  $LessonResultCopyWith<LessonResult> get copyWith;
}

abstract class $LessonResultCopyWith<$Res> {
  factory $LessonResultCopyWith(LessonResult value, $Res Function(LessonResult) then) =
      _$LessonResultCopyWithImpl<$Res>;
  $Res call({UniqueId id, KtList<ExerciseResult> resultList});
}

class _$LessonResultCopyWithImpl<$Res> implements $LessonResultCopyWith<$Res> {
  _$LessonResultCopyWithImpl(this._value, this._then);

  final LessonResult _value;
  // ignore: unused_field
  final $Res Function(LessonResult) _then;

  @override
  $Res call({
    Object id = freezed,
    Object resultList = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as UniqueId,
      resultList: resultList == freezed ? _value.resultList : resultList as KtList<ExerciseResult>,
    ));
  }
}

abstract class _$LessonResultCopyWith<$Res> implements $LessonResultCopyWith<$Res> {
  factory _$LessonResultCopyWith(_LessonResult value, $Res Function(_LessonResult) then) =
      __$LessonResultCopyWithImpl<$Res>;
  @override
  $Res call({UniqueId id, KtList<ExerciseResult> resultList});
}

class __$LessonResultCopyWithImpl<$Res> extends _$LessonResultCopyWithImpl<$Res>
    implements _$LessonResultCopyWith<$Res> {
  __$LessonResultCopyWithImpl(_LessonResult _value, $Res Function(_LessonResult) _then)
      : super(_value, (v) => _then(v as _LessonResult));

  @override
  _LessonResult get _value => super._value as _LessonResult;

  @override
  $Res call({
    Object id = freezed,
    Object resultList = freezed,
  }) {
    return _then(_LessonResult(
      id: id == freezed ? _value.id : id as UniqueId,
      resultList: resultList == freezed ? _value.resultList : resultList as KtList<ExerciseResult>,
    ));
  }
}

class _$_LessonResult with DiagnosticableTreeMixin implements _LessonResult {
  const _$_LessonResult({@required this.id, @required this.resultList})
      : assert(id != null),
        assert(resultList != null);

  @override
  final UniqueId id;
  @override
  final KtList<ExerciseResult> resultList;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LessonResult(id: $id, resultList: $resultList)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LessonResult'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('resultList', resultList));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LessonResult &&
            (identical(other.id, id) || const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.resultList, resultList) ||
                const DeepCollectionEquality().equals(other.resultList, resultList)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id) ^ const DeepCollectionEquality().hash(resultList);

  @override
  _$LessonResultCopyWith<_LessonResult> get copyWith => __$LessonResultCopyWithImpl<_LessonResult>(this, _$identity);
}

abstract class _LessonResult implements LessonResult {
  const factory _LessonResult({@required UniqueId id, @required KtList<ExerciseResult> resultList}) = _$_LessonResult;

  @override
  UniqueId get id;
  @override
  KtList<ExerciseResult> get resultList;
  @override
  _$LessonResultCopyWith<_LessonResult> get copyWith;
}
