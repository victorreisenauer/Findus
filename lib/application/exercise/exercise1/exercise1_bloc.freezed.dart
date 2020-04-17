// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'exercise1_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$Exercise1EventTearOff {
  const _$Exercise1EventTearOff();

  UserAction userAction(String type, String action) {
    return UserAction(
      type,
      action,
    );
  }
}

// ignore: unused_element
const $Exercise1Event = _$Exercise1EventTearOff();

mixin _$Exercise1Event {
  String get type;
  String get action;

  $Exercise1EventCopyWith<Exercise1Event> get copyWith;
}

abstract class $Exercise1EventCopyWith<$Res> {
  factory $Exercise1EventCopyWith(
          Exercise1Event value, $Res Function(Exercise1Event) then) =
      _$Exercise1EventCopyWithImpl<$Res>;
  $Res call({String type, String action});
}

class _$Exercise1EventCopyWithImpl<$Res>
    implements $Exercise1EventCopyWith<$Res> {
  _$Exercise1EventCopyWithImpl(this._value, this._then);

  final Exercise1Event _value;
  // ignore: unused_field
  final $Res Function(Exercise1Event) _then;

  @override
  $Res call({
    Object type = freezed,
    Object action = freezed,
  }) {
    return _then(_value.copyWith(
      type: type == freezed ? _value.type : type as String,
      action: action == freezed ? _value.action : action as String,
    ));
  }
}

abstract class $UserActionCopyWith<$Res>
    implements $Exercise1EventCopyWith<$Res> {
  factory $UserActionCopyWith(
          UserAction value, $Res Function(UserAction) then) =
      _$UserActionCopyWithImpl<$Res>;
  @override
  $Res call({String type, String action});
}

class _$UserActionCopyWithImpl<$Res> extends _$Exercise1EventCopyWithImpl<$Res>
    implements $UserActionCopyWith<$Res> {
  _$UserActionCopyWithImpl(UserAction _value, $Res Function(UserAction) _then)
      : super(_value, (v) => _then(v as UserAction));

  @override
  UserAction get _value => super._value as UserAction;

  @override
  $Res call({
    Object type = freezed,
    Object action = freezed,
  }) {
    return _then(UserAction(
      type == freezed ? _value.type : type as String,
      action == freezed ? _value.action : action as String,
    ));
  }
}

class _$UserAction implements UserAction {
  const _$UserAction(this.type, this.action)
      : assert(type != null),
        assert(action != null);

  @override
  final String type;
  @override
  final String action;

  @override
  String toString() {
    return 'Exercise1Event.userAction(type: $type, action: $action)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UserAction &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.action, action) ||
                const DeepCollectionEquality().equals(other.action, action)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(action);

  @override
  $UserActionCopyWith<UserAction> get copyWith =>
      _$UserActionCopyWithImpl<UserAction>(this, _$identity);
}

abstract class UserAction implements Exercise1Event {
  const factory UserAction(String type, String action) = _$UserAction;

  @override
  String get type;
  @override
  String get action;
  @override
  $UserActionCopyWith<UserAction> get copyWith;
}

class _$Exercise1StateTearOff {
  const _$Exercise1StateTearOff();

  Initial initial() {
    return const Initial();
  }

  ShowCorrection showCorrection() {
    return const ShowCorrection();
  }
}

// ignore: unused_element
const $Exercise1State = _$Exercise1StateTearOff();

mixin _$Exercise1State {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result showCorrection(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result showCorrection(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result showCorrection(ShowCorrection value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result showCorrection(ShowCorrection value),
    @required Result orElse(),
  });
}

abstract class $Exercise1StateCopyWith<$Res> {
  factory $Exercise1StateCopyWith(
          Exercise1State value, $Res Function(Exercise1State) then) =
      _$Exercise1StateCopyWithImpl<$Res>;
}

class _$Exercise1StateCopyWithImpl<$Res>
    implements $Exercise1StateCopyWith<$Res> {
  _$Exercise1StateCopyWithImpl(this._value, this._then);

  final Exercise1State _value;
  // ignore: unused_field
  final $Res Function(Exercise1State) _then;
}

abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

class _$InitialCopyWithImpl<$Res> extends _$Exercise1StateCopyWithImpl<$Res>
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
    return 'Exercise1State.initial()';
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
    @required Result showCorrection(),
  }) {
    assert(initial != null);
    assert(showCorrection != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result showCorrection(),
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
    @required Result showCorrection(ShowCorrection value),
  }) {
    assert(initial != null);
    assert(showCorrection != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result showCorrection(ShowCorrection value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements Exercise1State {
  const factory Initial() = _$Initial;
}

abstract class $ShowCorrectionCopyWith<$Res> {
  factory $ShowCorrectionCopyWith(
          ShowCorrection value, $Res Function(ShowCorrection) then) =
      _$ShowCorrectionCopyWithImpl<$Res>;
}

class _$ShowCorrectionCopyWithImpl<$Res>
    extends _$Exercise1StateCopyWithImpl<$Res>
    implements $ShowCorrectionCopyWith<$Res> {
  _$ShowCorrectionCopyWithImpl(
      ShowCorrection _value, $Res Function(ShowCorrection) _then)
      : super(_value, (v) => _then(v as ShowCorrection));

  @override
  ShowCorrection get _value => super._value as ShowCorrection;
}

class _$ShowCorrection implements ShowCorrection {
  const _$ShowCorrection();

  @override
  String toString() {
    return 'Exercise1State.showCorrection()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ShowCorrection);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result showCorrection(),
  }) {
    assert(initial != null);
    assert(showCorrection != null);
    return showCorrection();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result showCorrection(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (showCorrection != null) {
      return showCorrection();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result showCorrection(ShowCorrection value),
  }) {
    assert(initial != null);
    assert(showCorrection != null);
    return showCorrection(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result showCorrection(ShowCorrection value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (showCorrection != null) {
      return showCorrection(this);
    }
    return orElse();
  }
}

abstract class ShowCorrection implements Exercise1State {
  const factory ShowCorrection() = _$ShowCorrection;
}
