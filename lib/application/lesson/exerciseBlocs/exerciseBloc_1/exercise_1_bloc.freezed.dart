// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'exercise_1_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$Exercise_1EventTearOff {
  const _$Exercise_1EventTearOff();

  DroppedDraggable droppedDraggable(String idTarget, String idDraggable) {
    return DroppedDraggable(
      idTarget,
      idDraggable,
    );
  }

  PressedFinish pressedFinish() {
    return const PressedFinish();
  }
}

// ignore: unused_element
const $Exercise_1Event = _$Exercise_1EventTearOff();

mixin _$Exercise_1Event {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result droppedDraggable(String idTarget, String idDraggable),
    @required Result pressedFinish(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result droppedDraggable(String idTarget, String idDraggable),
    Result pressedFinish(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result droppedDraggable(DroppedDraggable value),
    @required Result pressedFinish(PressedFinish value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result droppedDraggable(DroppedDraggable value),
    Result pressedFinish(PressedFinish value),
    @required Result orElse(),
  });
}

abstract class $Exercise_1EventCopyWith<$Res> {
  factory $Exercise_1EventCopyWith(
          Exercise_1Event value, $Res Function(Exercise_1Event) then) =
      _$Exercise_1EventCopyWithImpl<$Res>;
}

class _$Exercise_1EventCopyWithImpl<$Res>
    implements $Exercise_1EventCopyWith<$Res> {
  _$Exercise_1EventCopyWithImpl(this._value, this._then);

  final Exercise_1Event _value;
  // ignore: unused_field
  final $Res Function(Exercise_1Event) _then;
}

abstract class $DroppedDraggableCopyWith<$Res> {
  factory $DroppedDraggableCopyWith(
          DroppedDraggable value, $Res Function(DroppedDraggable) then) =
      _$DroppedDraggableCopyWithImpl<$Res>;
  $Res call({String idTarget, String idDraggable});
}

class _$DroppedDraggableCopyWithImpl<$Res>
    extends _$Exercise_1EventCopyWithImpl<$Res>
    implements $DroppedDraggableCopyWith<$Res> {
  _$DroppedDraggableCopyWithImpl(
      DroppedDraggable _value, $Res Function(DroppedDraggable) _then)
      : super(_value, (v) => _then(v as DroppedDraggable));

  @override
  DroppedDraggable get _value => super._value as DroppedDraggable;

  @override
  $Res call({
    Object idTarget = freezed,
    Object idDraggable = freezed,
  }) {
    return _then(DroppedDraggable(
      idTarget == freezed ? _value.idTarget : idTarget as String,
      idDraggable == freezed ? _value.idDraggable : idDraggable as String,
    ));
  }
}

class _$DroppedDraggable implements DroppedDraggable {
  const _$DroppedDraggable(this.idTarget, this.idDraggable)
      : assert(idTarget != null),
        assert(idDraggable != null);

  @override
  final String idTarget;
  @override
  final String idDraggable;

  @override
  String toString() {
    return 'Exercise_1Event.droppedDraggable(idTarget: $idTarget, idDraggable: $idDraggable)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DroppedDraggable &&
            (identical(other.idTarget, idTarget) ||
                const DeepCollectionEquality()
                    .equals(other.idTarget, idTarget)) &&
            (identical(other.idDraggable, idDraggable) ||
                const DeepCollectionEquality()
                    .equals(other.idDraggable, idDraggable)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(idTarget) ^
      const DeepCollectionEquality().hash(idDraggable);

  @override
  $DroppedDraggableCopyWith<DroppedDraggable> get copyWith =>
      _$DroppedDraggableCopyWithImpl<DroppedDraggable>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result droppedDraggable(String idTarget, String idDraggable),
    @required Result pressedFinish(),
  }) {
    assert(droppedDraggable != null);
    assert(pressedFinish != null);
    return droppedDraggable(idTarget, idDraggable);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result droppedDraggable(String idTarget, String idDraggable),
    Result pressedFinish(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (droppedDraggable != null) {
      return droppedDraggable(idTarget, idDraggable);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result droppedDraggable(DroppedDraggable value),
    @required Result pressedFinish(PressedFinish value),
  }) {
    assert(droppedDraggable != null);
    assert(pressedFinish != null);
    return droppedDraggable(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result droppedDraggable(DroppedDraggable value),
    Result pressedFinish(PressedFinish value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (droppedDraggable != null) {
      return droppedDraggable(this);
    }
    return orElse();
  }
}

abstract class DroppedDraggable implements Exercise_1Event {
  const factory DroppedDraggable(String idTarget, String idDraggable) =
      _$DroppedDraggable;

  String get idTarget;
  String get idDraggable;
  $DroppedDraggableCopyWith<DroppedDraggable> get copyWith;
}

abstract class $PressedFinishCopyWith<$Res> {
  factory $PressedFinishCopyWith(
          PressedFinish value, $Res Function(PressedFinish) then) =
      _$PressedFinishCopyWithImpl<$Res>;
}

class _$PressedFinishCopyWithImpl<$Res>
    extends _$Exercise_1EventCopyWithImpl<$Res>
    implements $PressedFinishCopyWith<$Res> {
  _$PressedFinishCopyWithImpl(
      PressedFinish _value, $Res Function(PressedFinish) _then)
      : super(_value, (v) => _then(v as PressedFinish));

  @override
  PressedFinish get _value => super._value as PressedFinish;
}

class _$PressedFinish implements PressedFinish {
  const _$PressedFinish();

  @override
  String toString() {
    return 'Exercise_1Event.pressedFinish()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is PressedFinish);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result droppedDraggable(String idTarget, String idDraggable),
    @required Result pressedFinish(),
  }) {
    assert(droppedDraggable != null);
    assert(pressedFinish != null);
    return pressedFinish();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result droppedDraggable(String idTarget, String idDraggable),
    Result pressedFinish(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (pressedFinish != null) {
      return pressedFinish();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result droppedDraggable(DroppedDraggable value),
    @required Result pressedFinish(PressedFinish value),
  }) {
    assert(droppedDraggable != null);
    assert(pressedFinish != null);
    return pressedFinish(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result droppedDraggable(DroppedDraggable value),
    Result pressedFinish(PressedFinish value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (pressedFinish != null) {
      return pressedFinish(this);
    }
    return orElse();
  }
}

abstract class PressedFinish implements Exercise_1Event {
  const factory PressedFinish() = _$PressedFinish;
}

class _$Exercise_1StateTearOff {
  const _$Exercise_1StateTearOff();

  Initial initial() {
    return const Initial();
  }

  ShowExercise showExercise() {
    return const ShowExercise();
  }
}

// ignore: unused_element
const $Exercise_1State = _$Exercise_1StateTearOff();

mixin _$Exercise_1State {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result showExercise(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result showExercise(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result showExercise(ShowExercise value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result showExercise(ShowExercise value),
    @required Result orElse(),
  });
}

abstract class $Exercise_1StateCopyWith<$Res> {
  factory $Exercise_1StateCopyWith(
          Exercise_1State value, $Res Function(Exercise_1State) then) =
      _$Exercise_1StateCopyWithImpl<$Res>;
}

class _$Exercise_1StateCopyWithImpl<$Res>
    implements $Exercise_1StateCopyWith<$Res> {
  _$Exercise_1StateCopyWithImpl(this._value, this._then);

  final Exercise_1State _value;
  // ignore: unused_field
  final $Res Function(Exercise_1State) _then;
}

abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

class _$InitialCopyWithImpl<$Res> extends _$Exercise_1StateCopyWithImpl<$Res>
    implements $InitialCopyWith<$Res> {
  _$InitialCopyWithImpl(Initial _value, $Res Function(Initial) _then)
      : super(_value, (v) => _then(v as Initial));

  @override
  Initial get _value => super._value as Initial;
}

class _$Initial implements Initial {
  const _$Initial();

  @override
  String toString() {
    return 'Exercise_1State.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result showExercise(),
  }) {
    assert(initial != null);
    assert(showExercise != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result showExercise(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result showExercise(ShowExercise value),
  }) {
    assert(initial != null);
    assert(showExercise != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result showExercise(ShowExercise value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements Exercise_1State {
  const factory Initial() = _$Initial;
}

abstract class $ShowExerciseCopyWith<$Res> {
  factory $ShowExerciseCopyWith(
          ShowExercise value, $Res Function(ShowExercise) then) =
      _$ShowExerciseCopyWithImpl<$Res>;
}

class _$ShowExerciseCopyWithImpl<$Res>
    extends _$Exercise_1StateCopyWithImpl<$Res>
    implements $ShowExerciseCopyWith<$Res> {
  _$ShowExerciseCopyWithImpl(
      ShowExercise _value, $Res Function(ShowExercise) _then)
      : super(_value, (v) => _then(v as ShowExercise));

  @override
  ShowExercise get _value => super._value as ShowExercise;
}

class _$ShowExercise implements ShowExercise {
  const _$ShowExercise();

  @override
  String toString() {
    return 'Exercise_1State.showExercise()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ShowExercise);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result showExercise(),
  }) {
    assert(initial != null);
    assert(showExercise != null);
    return showExercise();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result showExercise(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (showExercise != null) {
      return showExercise();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result showExercise(ShowExercise value),
  }) {
    assert(initial != null);
    assert(showExercise != null);
    return showExercise(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result showExercise(ShowExercise value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (showExercise != null) {
      return showExercise(this);
    }
    return orElse();
  }
}

abstract class ShowExercise implements Exercise_1State {
  const factory ShowExercise() = _$ShowExercise;
}
