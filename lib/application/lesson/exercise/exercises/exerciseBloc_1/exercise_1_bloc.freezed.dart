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

  DroppedDraggable droppedDraggable(int idTarget, int idDraggable) {
    return DroppedDraggable(
      idTarget,
      idDraggable,
    );
  }

  PressedDone pressedDone() {
    return const PressedDone();
  }
}

// ignore: unused_element
const $Exercise_1Event = _$Exercise_1EventTearOff();

mixin _$Exercise_1Event {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getExercise(),
    @required Result droppedDraggable(int idTarget, int idDraggable),
    @required Result pressedDone(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getExercise(),
    Result droppedDraggable(int idTarget, int idDraggable),
    Result pressedDone(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getExercise(GetExercise value),
    @required Result droppedDraggable(DroppedDraggable value),
    @required Result pressedDone(PressedDone value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getExercise(GetExercise value),
    Result droppedDraggable(DroppedDraggable value),
    Result pressedDone(PressedDone value),
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
    @required Result droppedDraggable(int idTarget, int idDraggable),
    @required Result pressedDone(),
  }) {
    assert(getExercise != null);
    assert(droppedDraggable != null);
    assert(pressedDone != null);
    return getExercise();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getExercise(),
    Result droppedDraggable(int idTarget, int idDraggable),
    Result pressedDone(),
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
    @required Result pressedDone(PressedDone value),
  }) {
    assert(getExercise != null);
    assert(droppedDraggable != null);
    assert(pressedDone != null);
    return getExercise(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getExercise(GetExercise value),
    Result droppedDraggable(DroppedDraggable value),
    Result pressedDone(PressedDone value),
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
  $Res call({int idTarget, int idDraggable});
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
      idTarget == freezed ? _value.idTarget : idTarget as int,
      idDraggable == freezed ? _value.idDraggable : idDraggable as int,
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
  final int idTarget;
  @override
  final int idDraggable;

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
    @required Result droppedDraggable(int idTarget, int idDraggable),
    @required Result pressedDone(),
  }) {
    assert(getExercise != null);
    assert(droppedDraggable != null);
    assert(pressedDone != null);
    return droppedDraggable(idTarget, idDraggable);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getExercise(),
    Result droppedDraggable(int idTarget, int idDraggable),
    Result pressedDone(),
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
    @required Result pressedDone(PressedDone value),
  }) {
    assert(getExercise != null);
    assert(droppedDraggable != null);
    assert(pressedDone != null);
    return droppedDraggable(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getExercise(GetExercise value),
    Result droppedDraggable(DroppedDraggable value),
    Result pressedDone(PressedDone value),
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
  const factory DroppedDraggable(int idTarget, int idDraggable) =
      _$DroppedDraggable;

  int get idTarget;
  int get idDraggable;
  $DroppedDraggableCopyWith<DroppedDraggable> get copyWith;
}

abstract class $PressedDoneCopyWith<$Res> {
  factory $PressedDoneCopyWith(
          PressedDone value, $Res Function(PressedDone) then) =
      _$PressedDoneCopyWithImpl<$Res>;
}

class _$PressedDoneCopyWithImpl<$Res>
    extends _$Exercise_1EventCopyWithImpl<$Res>
    implements $PressedDoneCopyWith<$Res> {
  _$PressedDoneCopyWithImpl(
      PressedDone _value, $Res Function(PressedDone) _then)
      : super(_value, (v) => _then(v as PressedDone));

  @override
  PressedDone get _value => super._value as PressedDone;
}

class _$PressedDone with DiagnosticableTreeMixin implements PressedDone {
  const _$PressedDone();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Exercise_1Event.pressedDone()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'Exercise_1Event.pressedDone'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is PressedDone);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getExercise(),
    @required Result droppedDraggable(int idTarget, int idDraggable),
    @required Result pressedDone(),
  }) {
    assert(getExercise != null);
    assert(droppedDraggable != null);
    assert(pressedDone != null);
    return pressedDone();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getExercise(),
    Result droppedDraggable(int idTarget, int idDraggable),
    Result pressedDone(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (pressedDone != null) {
      return pressedDone();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getExercise(GetExercise value),
    @required Result droppedDraggable(DroppedDraggable value),
    @required Result pressedDone(PressedDone value),
  }) {
    assert(getExercise != null);
    assert(droppedDraggable != null);
    assert(pressedDone != null);
    return pressedDone(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getExercise(GetExercise value),
    Result droppedDraggable(DroppedDraggable value),
    Result pressedDone(PressedDone value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (pressedDone != null) {
      return pressedDone(this);
    }
    return orElse();
  }
}

abstract class PressedDone implements Exercise_1Event {
  const factory PressedDone() = _$PressedDone;
}

class _$Exercise_1StateTearOff {
  const _$Exercise_1StateTearOff();

  Initial initial() {
    return const Initial();
  }

  ShowExercise showExercise(List<dynamic> text, List<dynamic> answers,
      String centerButtonText, bool correctionMode,
      [String messageToUser]) {
    return ShowExercise(
      text,
      answers,
      centerButtonText,
      correctionMode,
      messageToUser,
    );
  }
}

// ignore: unused_element
const $Exercise_1State = _$Exercise_1StateTearOff();

mixin _$Exercise_1State {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required
        Result showExercise(List<dynamic> text, List<dynamic> answers,
            String centerButtonText, bool correctionMode, String messageToUser),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result showExercise(List<dynamic> text, List<dynamic> answers,
        String centerButtonText, bool correctionMode, String messageToUser),
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
    @required
        Result showExercise(List<dynamic> text, List<dynamic> answers,
            String centerButtonText, bool correctionMode, String messageToUser),
  }) {
    assert(initial != null);
    assert(showExercise != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result showExercise(List<dynamic> text, List<dynamic> answers,
        String centerButtonText, bool correctionMode, String messageToUser),
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
  $Res call(
      {List<dynamic> text,
      List<dynamic> answers,
      String centerButtonText,
      bool correctionMode,
      String messageToUser});
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
    Object centerButtonText = freezed,
    Object correctionMode = freezed,
    Object messageToUser = freezed,
  }) {
    return _then(ShowExercise(
      text == freezed ? _value.text : text as List<dynamic>,
      answers == freezed ? _value.answers : answers as List<dynamic>,
      centerButtonText == freezed
          ? _value.centerButtonText
          : centerButtonText as String,
      correctionMode == freezed
          ? _value.correctionMode
          : correctionMode as bool,
      messageToUser == freezed ? _value.messageToUser : messageToUser as String,
    ));
  }
}

class _$ShowExercise with DiagnosticableTreeMixin implements ShowExercise {
  const _$ShowExercise(
      this.text, this.answers, this.centerButtonText, this.correctionMode,
      [this.messageToUser])
      : assert(text != null),
        assert(answers != null),
        assert(centerButtonText != null),
        assert(correctionMode != null);

  @override
  final List<dynamic> text;
  @override
  final List<dynamic> answers;
  @override
  final String centerButtonText;
  @override
  final bool correctionMode;
  @override
  final String messageToUser;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Exercise_1State.showExercise(text: $text, answers: $answers, centerButtonText: $centerButtonText, correctionMode: $correctionMode, messageToUser: $messageToUser)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Exercise_1State.showExercise'))
      ..add(DiagnosticsProperty('text', text))
      ..add(DiagnosticsProperty('answers', answers))
      ..add(DiagnosticsProperty('centerButtonText', centerButtonText))
      ..add(DiagnosticsProperty('correctionMode', correctionMode))
      ..add(DiagnosticsProperty('messageToUser', messageToUser));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ShowExercise &&
            (identical(other.text, text) ||
                const DeepCollectionEquality().equals(other.text, text)) &&
            (identical(other.answers, answers) ||
                const DeepCollectionEquality()
                    .equals(other.answers, answers)) &&
            (identical(other.centerButtonText, centerButtonText) ||
                const DeepCollectionEquality()
                    .equals(other.centerButtonText, centerButtonText)) &&
            (identical(other.correctionMode, correctionMode) ||
                const DeepCollectionEquality()
                    .equals(other.correctionMode, correctionMode)) &&
            (identical(other.messageToUser, messageToUser) ||
                const DeepCollectionEquality()
                    .equals(other.messageToUser, messageToUser)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(text) ^
      const DeepCollectionEquality().hash(answers) ^
      const DeepCollectionEquality().hash(centerButtonText) ^
      const DeepCollectionEquality().hash(correctionMode) ^
      const DeepCollectionEquality().hash(messageToUser);

  @override
  $ShowExerciseCopyWith<ShowExercise> get copyWith =>
      _$ShowExerciseCopyWithImpl<ShowExercise>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required
        Result showExercise(List<dynamic> text, List<dynamic> answers,
            String centerButtonText, bool correctionMode, String messageToUser),
  }) {
    assert(initial != null);
    assert(showExercise != null);
    return showExercise(
        text, answers, centerButtonText, correctionMode, messageToUser);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result showExercise(List<dynamic> text, List<dynamic> answers,
        String centerButtonText, bool correctionMode, String messageToUser),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (showExercise != null) {
      return showExercise(
          text, answers, centerButtonText, correctionMode, messageToUser);
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
  const factory ShowExercise(List<dynamic> text, List<dynamic> answers,
      String centerButtonText, bool correctionMode,
      [String messageToUser]) = _$ShowExercise;

  List<dynamic> get text;
  List<dynamic> get answers;
  String get centerButtonText;
  bool get correctionMode;
  String get messageToUser;
  $ShowExerciseCopyWith<ShowExercise> get copyWith;
}
