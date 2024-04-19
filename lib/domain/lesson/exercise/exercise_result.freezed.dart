// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'exercise_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ExerciseResultTearOff {
  const _$ExerciseResultTearOff();

  _ExerciseResult call(
      {@required UniqueId id, @required ExerciseResultData data}) {
    return _ExerciseResult(
      id: id,
      data: data,
    );
  }
}

// ignore: unused_element
const $ExerciseResult = _$ExerciseResultTearOff();

mixin _$ExerciseResult {
  UniqueId get id;
  ExerciseResultData get data;

  $ExerciseResultCopyWith<ExerciseResult> get copyWith;
}

abstract class $ExerciseResultCopyWith<$Res> {
  factory $ExerciseResultCopyWith(
          ExerciseResult value, $Res Function(ExerciseResult) then) =
      _$ExerciseResultCopyWithImpl<$Res>;
  $Res call({UniqueId id, ExerciseResultData data});
}

class _$ExerciseResultCopyWithImpl<$Res>
    implements $ExerciseResultCopyWith<$Res> {
  _$ExerciseResultCopyWithImpl(this._value, this._then);

  final ExerciseResult _value;
  // ignore: unused_field
  final $Res Function(ExerciseResult) _then;

  @override
  $Res call({
    Object id = freezed,
    Object data = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as UniqueId,
      data: data == freezed ? _value.data : data as ExerciseResultData,
    ));
  }
}

abstract class _$ExerciseResultCopyWith<$Res>
    implements $ExerciseResultCopyWith<$Res> {
  factory _$ExerciseResultCopyWith(
          _ExerciseResult value, $Res Function(_ExerciseResult) then) =
      __$ExerciseResultCopyWithImpl<$Res>;
  @override
  $Res call({UniqueId id, ExerciseResultData data});
}

class __$ExerciseResultCopyWithImpl<$Res>
    extends _$ExerciseResultCopyWithImpl<$Res>
    implements _$ExerciseResultCopyWith<$Res> {
  __$ExerciseResultCopyWithImpl(
      _ExerciseResult _value, $Res Function(_ExerciseResult) _then)
      : super(_value, (v) => _then(v as _ExerciseResult));

  @override
  _ExerciseResult get _value => super._value as _ExerciseResult;

  @override
  $Res call({
    Object id = freezed,
    Object data = freezed,
  }) {
    return _then(_ExerciseResult(
      id: id == freezed ? _value.id : id as UniqueId,
      data: data == freezed ? _value.data : data as ExerciseResultData,
    ));
  }
}

@override
class _$_ExerciseResult
    with DiagnosticableTreeMixin
    implements _ExerciseResult {
  const _$_ExerciseResult({@required this.id, @required this.data})
      : assert(id != null),
        assert(data != null);

  @override
  final UniqueId id;
  @override
  final ExerciseResultData data;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ExerciseResult(id: $id, data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ExerciseResult'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ExerciseResult &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(data);

  @override
  _$ExerciseResultCopyWith<_ExerciseResult> get copyWith =>
      __$ExerciseResultCopyWithImpl<_ExerciseResult>(this, _$identity);
}

abstract class _ExerciseResult implements ExerciseResult {
  const factory _ExerciseResult(
      {@required UniqueId id,
      @required ExerciseResultData data}) = _$_ExerciseResult;

  @override
  UniqueId get id;
  @override
  ExerciseResultData get data;
  @override
  _$ExerciseResultCopyWith<_ExerciseResult> get copyWith;
}
