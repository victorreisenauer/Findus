// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'exercise_1_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$Exercise_1EventTearOff {
  const _$Exercise_1EventTearOff();

  GetExercise getExercise() {
    return const GetExercise();
  }

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
    @required Result getExercise(),
    @required Result droppedDraggable(String idTarget, String idDraggable),
    @required Result pressedFinish(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getExercise(),
    Result droppedDraggable(String idTarget, String idDraggable),
    Result pressedFinish(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getExercise(GetExercise value),
    @required Result droppedDraggable(DroppedDraggable value),
    @required Result pressedFinish(PressedFinish value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getExercise(GetExercise value),
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

abstract class $GetExerciseCopyWith<$Res> {
  factory $GetExerciseCopyWith(
          GetExercise value, $Res Function(GetExercise) then) =
      _$GetExerciseCopyWithImpl<$Res>;
}

class _$GetExerciseCopyWithImpl<$Res>
    extends _$Exercise_1EventCopyWithImpl<$Res>
    implements $GetExerciseCopyWith<$Res> {
  _$GetExerciseCopyWithImpl(
      GetExercise _value, $Res Function(GetExercise) _then)
      : super(_value, (v) => _then(v as GetExercise));

  @override
  GetExercise get _value => super._value as GetExercise;
}

class _$GetExercise with DiagnosticableTreeMixin implements GetExercise {
  const _$GetExercise();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Exercise_1Event.getExercise()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'Exercise_1Event.getExercise'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is GetExercise);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getExercise(),
    @required Result droppedDraggable(String idTarget, String idDraggable),
    @required Result pressedFinish(),
  }) {
    assert(getExercise != null);
    assert(droppedDraggable != null);
    assert(pressedFinish != null);
    return getExercise();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getExercise(),
    Result droppedDraggable(String idTarget, String idDraggable),
    Result pressedFinish(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getExercise != null) {
      return getExercise();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getExercise(GetExercise value),
    @required Result droppedDraggable(DroppedDraggable value),
    @required Result pressedFinish(PressedFinish value),
  }) {
    assert(getExercise != null);
    assert(droppedDraggable != null);
    assert(pressedFinish != null);
    return getExercise(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getExercise(GetExercise value),
    Result droppedDraggable(DroppedDraggable value),
    Result pressedFinish(PressedFinish value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getExercise != null) {
      return getExercise(this);
    }
    return orElse();
  }
}

abstract class GetExercise implements Exercise_1Event {
  const factory GetExercise() = _$GetExercise;
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

class _$DroppedDraggable
    with DiagnosticableTreeMixin
    implements DroppedDraggable {
  const _$DroppedDraggable(this.idTarget, this.idDraggable)
      : assert(idTarget != null),
        assert(idDraggable != null);

  @override
  final String idTarget;
  @override
  final String idDraggable;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Exercise_1Event.droppedDraggable(idTarget: $idTarget, idDraggable: $idDraggable)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Exercise_1Event.droppedDraggable'))
      ..add(DiagnosticsProperty('idTarget', idTarget))
      ..add(DiagnosticsProperty('idDraggable', idDraggable));
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
    @required Result getExercise(),
    @required Result droppedDraggable(String idTarget, String idDraggable),
    @required Result pressedFinish(),
  }) {
    assert(getExercise != null);
    assert(droppedDraggable != null);
    assert(pressedFinish != null);
    return droppedDraggable(idTarget, idDraggable);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getExercise(),
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
    @required Result getExercise(GetExercise value),
    @required Result droppedDraggable(DroppedDraggable value),
    @required Result pressedFinish(PressedFinish value),
  }) {
    assert(getExercise != null);
    assert(droppedDraggable != null);
    assert(pressedFinish != null);
    return droppedDraggable(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getExercise(GetExercise value),
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

class _$PressedFinish with DiagnosticableTreeMixin implements PressedFinish {
  const _$PressedFinish();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Exercise_1Event.pressedFinish()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Exercise_1Event.pressedFinish'));
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
    @required Result getExercise(),
    @required Result droppedDraggable(String idTarget, String idDraggable),
    @required Result pressedFinish(),
  }) {
    assert(getExercise != null);
    assert(droppedDraggable != null);
    assert(pressedFinish != null);
    return pressedFinish();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getExercise(),
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
    @required Result getExercise(GetExercise value),
    @required Result droppedDraggable(DroppedDraggable value),
    @required Result pressedFinish(PressedFinish value),
  }) {
    assert(getExercise != null);
    assert(droppedDraggable != null);
    assert(pressedFinish != null);
    return pressedFinish(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getExercise(GetExercise value),
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

  ShowExercise showExercise(List<dynamic> text, List<dynamic> answers) {
    return ShowExercise(
      text,
      answers,
    );
  }
}

// ignore: unused_element
const $Exercise_1State = _$Exercise_1StateTearOff();

mixin _$Exercise_1State {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result showExercise(List<dynamic> text, List<dynamic> answers),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result showExercise(List<dynamic> text, List<dynamic> answers),
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

class _$Initial with DiagnosticableTreeMixin implements Initial {
  const _$Initial();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Exercise_1State.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'Exercise_1State.initial'));
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
    @required Result showExercise(List<dynamic> text, List<dynamic> answers),
  }) {
    assert(initial != null);
    assert(showExercise != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result showExercise(List<dynamic> text, List<dynamic> answers),
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
  $Res call({List<dynamic> text, List<dynamic> answers});
}

class _$ShowExerciseCopyWithImpl<$Res>
    extends _$Exercise_1StateCopyWithImpl<$Res>
    implements $ShowExerciseCopyWith<$Res> {
  _$ShowExerciseCopyWithImpl(
      ShowExercise _value, $Res Function(ShowExercise) _then)
      : super(_value, (v) => _then(v as ShowExercise));

  @override
  ShowExercise get _value => super._value as ShowExercise;

  @override
  $Res call({
    Object text = freezed,
    Object answers = freezed,
  }) {
    return _then(ShowExercise(
      text == freezed ? _value.text : text as List<dynamic>,
      answers == freezed ? _value.answers : answers as List<dynamic>,
    ));
  }
}

class _$ShowExercise with DiagnosticableTreeMixin implements ShowExercise {
  const _$ShowExercise(this.text, this.answers)
      : assert(text != null),
        assert(answers != null);

  @override
  final List<dynamic> text;
  @override
  final List<dynamic> answers;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Exercise_1State.showExercise(text: $text, answers: $answers)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Exercise_1State.showExercise'))
      ..add(DiagnosticsProperty('text', text))
      ..add(DiagnosticsProperty('answers', answers));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ShowExercise &&
            (identical(other.text, text) ||
                const DeepCollectionEquality().equals(other.text, text)) &&
            (identical(other.answers, answers) ||
                const DeepCollectionEquality().equals(other.answers, answers)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(text) ^
      const DeepCollectionEquality().hash(answers);

  @override
  $ShowExerciseCopyWith<ShowExercise> get copyWith =>
      _$ShowExerciseCopyWithImpl<ShowExercise>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result showExercise(List<dynamic> text, List<dynamic> answers),
  }) {
    assert(initial != null);
    assert(showExercise != null);
    return showExercise(text, answers);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result showExercise(List<dynamic> text, List<dynamic> answers),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (showExercise != null) {
      return showExercise(text, answers);
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
  const factory ShowExercise(List<dynamic> text, List<dynamic> answers) =
      _$ShowExercise;

  List<dynamic> get text;
  List<dynamic> get answers;
  $ShowExerciseCopyWith<ShowExercise> get copyWith;
}
