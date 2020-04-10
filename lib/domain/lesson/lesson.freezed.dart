// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'lesson.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$LessonTearOff {
  const _$LessonTearOff();

  _Lesson call(
      {@required UniqueId id, @required ExerciseList<Exercise> exerciseList}) {
    return _Lesson(
      id: id,
      exerciseList: exerciseList,
    );
  }
}

// ignore: unused_element
const $Lesson = _$LessonTearOff();

mixin _$Lesson {
  UniqueId get id;
  ExerciseList<Exercise> get exerciseList;

  $LessonCopyWith<Lesson> get copyWith;
}

abstract class $LessonCopyWith<$Res> {
  factory $LessonCopyWith(Lesson value, $Res Function(Lesson) then) =
      _$LessonCopyWithImpl<$Res>;
  $Res call({UniqueId id, ExerciseList<Exercise> exerciseList});
}

class _$LessonCopyWithImpl<$Res> implements $LessonCopyWith<$Res> {
  _$LessonCopyWithImpl(this._value, this._then);

  final Lesson _value;
  // ignore: unused_field
  final $Res Function(Lesson) _then;

  @override
  $Res call({
    Object id = freezed,
    Object exerciseList = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as UniqueId,
      exerciseList: exerciseList == freezed
          ? _value.exerciseList
          : exerciseList as ExerciseList<Exercise>,
    ));
  }
}

abstract class _$LessonCopyWith<$Res> implements $LessonCopyWith<$Res> {
  factory _$LessonCopyWith(_Lesson value, $Res Function(_Lesson) then) =
      __$LessonCopyWithImpl<$Res>;
  @override
  $Res call({UniqueId id, ExerciseList<Exercise> exerciseList});
}

class __$LessonCopyWithImpl<$Res> extends _$LessonCopyWithImpl<$Res>
    implements _$LessonCopyWith<$Res> {
  __$LessonCopyWithImpl(_Lesson _value, $Res Function(_Lesson) _then)
      : super(_value, (v) => _then(v as _Lesson));

  @override
  _Lesson get _value => super._value as _Lesson;

  @override
  $Res call({
    Object id = freezed,
    Object exerciseList = freezed,
  }) {
    return _then(_Lesson(
      id: id == freezed ? _value.id : id as UniqueId,
      exerciseList: exerciseList == freezed
          ? _value.exerciseList
          : exerciseList as ExerciseList<Exercise>,
    ));
  }
}

@override
class _$_Lesson with DiagnosticableTreeMixin implements _Lesson {
  const _$_Lesson({@required this.id, @required this.exerciseList})
      : assert(id != null),
        assert(exerciseList != null);

  @override
  final UniqueId id;
  @override
  final ExerciseList<Exercise> exerciseList;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Lesson(id: $id, exerciseList: $exerciseList)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Lesson'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('exerciseList', exerciseList));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Lesson &&
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
  _$LessonCopyWith<_Lesson> get copyWith =>
      __$LessonCopyWithImpl<_Lesson>(this, _$identity);
}

abstract class _Lesson implements Lesson {
  const factory _Lesson(
      {@required UniqueId id,
      @required ExerciseList<Exercise> exerciseList}) = _$_Lesson;

  @override
  UniqueId get id;
  @override
  ExerciseList<Exercise> get exerciseList;
  @override
  _$LessonCopyWith<_Lesson> get copyWith;
}
