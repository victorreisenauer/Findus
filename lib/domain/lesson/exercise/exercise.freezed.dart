// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'exercise.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ExerciseTearOff {
  const _$ExerciseTearOff();

  _Exercise call(
      {@required UniqueId id,
      @required ExerciseType type,
      @required ExerciseData data}) {
    return _Exercise(
      id: id,
      type: type,
      data: data,
    );
  }
}

// ignore: unused_element
const $Exercise = _$ExerciseTearOff();

mixin _$Exercise {
  UniqueId get id;
  ExerciseType get type;
  ExerciseData get data;

  $ExerciseCopyWith<Exercise> get copyWith;
}

abstract class $ExerciseCopyWith<$Res> {
  factory $ExerciseCopyWith(Exercise value, $Res Function(Exercise) then) =
      _$ExerciseCopyWithImpl<$Res>;
  $Res call({UniqueId id, ExerciseType type, ExerciseData data});
}

class _$ExerciseCopyWithImpl<$Res> implements $ExerciseCopyWith<$Res> {
  _$ExerciseCopyWithImpl(this._value, this._then);

  final Exercise _value;
  // ignore: unused_field
  final $Res Function(Exercise) _then;

  @override
  $Res call({
    Object id = freezed,
    Object type = freezed,
    Object data = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as UniqueId,
      type: type == freezed ? _value.type : type as ExerciseType,
      data: data == freezed ? _value.data : data as ExerciseData,
    ));
  }
}

abstract class _$ExerciseCopyWith<$Res> implements $ExerciseCopyWith<$Res> {
  factory _$ExerciseCopyWith(_Exercise value, $Res Function(_Exercise) then) =
      __$ExerciseCopyWithImpl<$Res>;
  @override
  $Res call({UniqueId id, ExerciseType type, ExerciseData data});
}

class __$ExerciseCopyWithImpl<$Res> extends _$ExerciseCopyWithImpl<$Res>
    implements _$ExerciseCopyWith<$Res> {
  __$ExerciseCopyWithImpl(_Exercise _value, $Res Function(_Exercise) _then)
      : super(_value, (v) => _then(v as _Exercise));

  @override
  _Exercise get _value => super._value as _Exercise;

  @override
  $Res call({
    Object id = freezed,
    Object type = freezed,
    Object data = freezed,
  }) {
    return _then(_Exercise(
      id: id == freezed ? _value.id : id as UniqueId,
      type: type == freezed ? _value.type : type as ExerciseType,
      data: data == freezed ? _value.data : data as ExerciseData,
    ));
  }
}

class _$_Exercise with DiagnosticableTreeMixin implements _Exercise {
  const _$_Exercise(
      {@required this.id, @required this.type, @required this.data})
      : assert(id != null),
        assert(type != null),
        assert(data != null);

  @override
  final UniqueId id;
  @override
  final ExerciseType type;
  @override
  final ExerciseData data;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Exercise(id: $id, type: $type, data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Exercise'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('type', type))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Exercise &&
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
  _$ExerciseCopyWith<_Exercise> get copyWith =>
      __$ExerciseCopyWithImpl<_Exercise>(this, _$identity);
}

abstract class _Exercise implements Exercise {
  const factory _Exercise(
      {@required UniqueId id,
      @required ExerciseType type,
      @required ExerciseData data}) = _$_Exercise;

  @override
  UniqueId get id;
  @override
  ExerciseType get type;
  @override
  ExerciseData get data;
  @override
  _$ExerciseCopyWith<_Exercise> get copyWith;
}
