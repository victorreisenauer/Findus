// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'base_template_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$BaseTemplateEventTearOff {
  const _$BaseTemplateEventTearOff();

  ShowHelpPressed showHelpPressed() {
    return const ShowHelpPressed();
  }

  ShowAbortPressed showAbortPressed() {
    return const ShowAbortPressed();
  }

  ShowHelpDismissed showHelpDismissed() {
    return const ShowHelpDismissed();
  }

  ShowAbortDismissed showAbortDismissed() {
    return const ShowAbortDismissed();
  }

  ShowStandardScreen showStandardScreen() {
    return const ShowStandardScreen();
  }
}

// ignore: unused_element
const $BaseTemplateEvent = _$BaseTemplateEventTearOff();

mixin _$BaseTemplateEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result showHelpPressed(),
    @required Result showAbortPressed(),
    @required Result showHelpDismissed(),
    @required Result showAbortDismissed(),
    @required Result showStandardScreen(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result showHelpPressed(),
    Result showAbortPressed(),
    Result showHelpDismissed(),
    Result showAbortDismissed(),
    Result showStandardScreen(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result showHelpPressed(ShowHelpPressed value),
    @required Result showAbortPressed(ShowAbortPressed value),
    @required Result showHelpDismissed(ShowHelpDismissed value),
    @required Result showAbortDismissed(ShowAbortDismissed value),
    @required Result showStandardScreen(ShowStandardScreen value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result showHelpPressed(ShowHelpPressed value),
    Result showAbortPressed(ShowAbortPressed value),
    Result showHelpDismissed(ShowHelpDismissed value),
    Result showAbortDismissed(ShowAbortDismissed value),
    Result showStandardScreen(ShowStandardScreen value),
    @required Result orElse(),
  });
}

abstract class $BaseTemplateEventCopyWith<$Res> {
  factory $BaseTemplateEventCopyWith(BaseTemplateEvent value, $Res Function(BaseTemplateEvent) then) =
      _$BaseTemplateEventCopyWithImpl<$Res>;
}

class _$BaseTemplateEventCopyWithImpl<$Res> implements $BaseTemplateEventCopyWith<$Res> {
  _$BaseTemplateEventCopyWithImpl(this._value, this._then);

  final BaseTemplateEvent _value;
  // ignore: unused_field
  final $Res Function(BaseTemplateEvent) _then;
}

abstract class $ShowHelpPressedCopyWith<$Res> {
  factory $ShowHelpPressedCopyWith(ShowHelpPressed value, $Res Function(ShowHelpPressed) then) =
      _$ShowHelpPressedCopyWithImpl<$Res>;
}

class _$ShowHelpPressedCopyWithImpl<$Res> extends _$BaseTemplateEventCopyWithImpl<$Res>
    implements $ShowHelpPressedCopyWith<$Res> {
  _$ShowHelpPressedCopyWithImpl(ShowHelpPressed _value, $Res Function(ShowHelpPressed) _then)
      : super(_value, (v) => _then(v as ShowHelpPressed));

  @override
  ShowHelpPressed get _value => super._value as ShowHelpPressed;
}

class _$ShowHelpPressed implements ShowHelpPressed {
  const _$ShowHelpPressed();

  @override
  String toString() {
    return 'BaseTemplateEvent.showHelpPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ShowHelpPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result showHelpPressed(),
    @required Result showAbortPressed(),
    @required Result showHelpDismissed(),
    @required Result showAbortDismissed(),
    @required Result showStandardScreen(),
  }) {
    assert(showHelpPressed != null);
    assert(showAbortPressed != null);
    assert(showHelpDismissed != null);
    assert(showAbortDismissed != null);
    assert(showStandardScreen != null);
    return showHelpPressed();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result showHelpPressed(),
    Result showAbortPressed(),
    Result showHelpDismissed(),
    Result showAbortDismissed(),
    Result showStandardScreen(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (showHelpPressed != null) {
      return showHelpPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result showHelpPressed(ShowHelpPressed value),
    @required Result showAbortPressed(ShowAbortPressed value),
    @required Result showHelpDismissed(ShowHelpDismissed value),
    @required Result showAbortDismissed(ShowAbortDismissed value),
    @required Result showStandardScreen(ShowStandardScreen value),
  }) {
    assert(showHelpPressed != null);
    assert(showAbortPressed != null);
    assert(showHelpDismissed != null);
    assert(showAbortDismissed != null);
    assert(showStandardScreen != null);
    return showHelpPressed(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result showHelpPressed(ShowHelpPressed value),
    Result showAbortPressed(ShowAbortPressed value),
    Result showHelpDismissed(ShowHelpDismissed value),
    Result showAbortDismissed(ShowAbortDismissed value),
    Result showStandardScreen(ShowStandardScreen value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (showHelpPressed != null) {
      return showHelpPressed(this);
    }
    return orElse();
  }
}

abstract class ShowHelpPressed implements BaseTemplateEvent {
  const factory ShowHelpPressed() = _$ShowHelpPressed;
}

abstract class $ShowAbortPressedCopyWith<$Res> {
  factory $ShowAbortPressedCopyWith(ShowAbortPressed value, $Res Function(ShowAbortPressed) then) =
      _$ShowAbortPressedCopyWithImpl<$Res>;
}

class _$ShowAbortPressedCopyWithImpl<$Res> extends _$BaseTemplateEventCopyWithImpl<$Res>
    implements $ShowAbortPressedCopyWith<$Res> {
  _$ShowAbortPressedCopyWithImpl(ShowAbortPressed _value, $Res Function(ShowAbortPressed) _then)
      : super(_value, (v) => _then(v as ShowAbortPressed));

  @override
  ShowAbortPressed get _value => super._value as ShowAbortPressed;
}

class _$ShowAbortPressed implements ShowAbortPressed {
  const _$ShowAbortPressed();

  @override
  String toString() {
    return 'BaseTemplateEvent.showAbortPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ShowAbortPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result showHelpPressed(),
    @required Result showAbortPressed(),
    @required Result showHelpDismissed(),
    @required Result showAbortDismissed(),
    @required Result showStandardScreen(),
  }) {
    assert(showHelpPressed != null);
    assert(showAbortPressed != null);
    assert(showHelpDismissed != null);
    assert(showAbortDismissed != null);
    assert(showStandardScreen != null);
    return showAbortPressed();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result showHelpPressed(),
    Result showAbortPressed(),
    Result showHelpDismissed(),
    Result showAbortDismissed(),
    Result showStandardScreen(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (showAbortPressed != null) {
      return showAbortPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result showHelpPressed(ShowHelpPressed value),
    @required Result showAbortPressed(ShowAbortPressed value),
    @required Result showHelpDismissed(ShowHelpDismissed value),
    @required Result showAbortDismissed(ShowAbortDismissed value),
    @required Result showStandardScreen(ShowStandardScreen value),
  }) {
    assert(showHelpPressed != null);
    assert(showAbortPressed != null);
    assert(showHelpDismissed != null);
    assert(showAbortDismissed != null);
    assert(showStandardScreen != null);
    return showAbortPressed(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result showHelpPressed(ShowHelpPressed value),
    Result showAbortPressed(ShowAbortPressed value),
    Result showHelpDismissed(ShowHelpDismissed value),
    Result showAbortDismissed(ShowAbortDismissed value),
    Result showStandardScreen(ShowStandardScreen value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (showAbortPressed != null) {
      return showAbortPressed(this);
    }
    return orElse();
  }
}

abstract class ShowAbortPressed implements BaseTemplateEvent {
  const factory ShowAbortPressed() = _$ShowAbortPressed;
}

abstract class $ShowHelpDismissedCopyWith<$Res> {
  factory $ShowHelpDismissedCopyWith(ShowHelpDismissed value, $Res Function(ShowHelpDismissed) then) =
      _$ShowHelpDismissedCopyWithImpl<$Res>;
}

class _$ShowHelpDismissedCopyWithImpl<$Res> extends _$BaseTemplateEventCopyWithImpl<$Res>
    implements $ShowHelpDismissedCopyWith<$Res> {
  _$ShowHelpDismissedCopyWithImpl(ShowHelpDismissed _value, $Res Function(ShowHelpDismissed) _then)
      : super(_value, (v) => _then(v as ShowHelpDismissed));

  @override
  ShowHelpDismissed get _value => super._value as ShowHelpDismissed;
}

class _$ShowHelpDismissed implements ShowHelpDismissed {
  const _$ShowHelpDismissed();

  @override
  String toString() {
    return 'BaseTemplateEvent.showHelpDismissed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ShowHelpDismissed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result showHelpPressed(),
    @required Result showAbortPressed(),
    @required Result showHelpDismissed(),
    @required Result showAbortDismissed(),
    @required Result showStandardScreen(),
  }) {
    assert(showHelpPressed != null);
    assert(showAbortPressed != null);
    assert(showHelpDismissed != null);
    assert(showAbortDismissed != null);
    assert(showStandardScreen != null);
    return showHelpDismissed();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result showHelpPressed(),
    Result showAbortPressed(),
    Result showHelpDismissed(),
    Result showAbortDismissed(),
    Result showStandardScreen(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (showHelpDismissed != null) {
      return showHelpDismissed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result showHelpPressed(ShowHelpPressed value),
    @required Result showAbortPressed(ShowAbortPressed value),
    @required Result showHelpDismissed(ShowHelpDismissed value),
    @required Result showAbortDismissed(ShowAbortDismissed value),
    @required Result showStandardScreen(ShowStandardScreen value),
  }) {
    assert(showHelpPressed != null);
    assert(showAbortPressed != null);
    assert(showHelpDismissed != null);
    assert(showAbortDismissed != null);
    assert(showStandardScreen != null);
    return showHelpDismissed(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result showHelpPressed(ShowHelpPressed value),
    Result showAbortPressed(ShowAbortPressed value),
    Result showHelpDismissed(ShowHelpDismissed value),
    Result showAbortDismissed(ShowAbortDismissed value),
    Result showStandardScreen(ShowStandardScreen value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (showHelpDismissed != null) {
      return showHelpDismissed(this);
    }
    return orElse();
  }
}

abstract class ShowHelpDismissed implements BaseTemplateEvent {
  const factory ShowHelpDismissed() = _$ShowHelpDismissed;
}

abstract class $ShowAbortDismissedCopyWith<$Res> {
  factory $ShowAbortDismissedCopyWith(ShowAbortDismissed value, $Res Function(ShowAbortDismissed) then) =
      _$ShowAbortDismissedCopyWithImpl<$Res>;
}

class _$ShowAbortDismissedCopyWithImpl<$Res> extends _$BaseTemplateEventCopyWithImpl<$Res>
    implements $ShowAbortDismissedCopyWith<$Res> {
  _$ShowAbortDismissedCopyWithImpl(ShowAbortDismissed _value, $Res Function(ShowAbortDismissed) _then)
      : super(_value, (v) => _then(v as ShowAbortDismissed));

  @override
  ShowAbortDismissed get _value => super._value as ShowAbortDismissed;
}

class _$ShowAbortDismissed implements ShowAbortDismissed {
  const _$ShowAbortDismissed();

  @override
  String toString() {
    return 'BaseTemplateEvent.showAbortDismissed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ShowAbortDismissed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result showHelpPressed(),
    @required Result showAbortPressed(),
    @required Result showHelpDismissed(),
    @required Result showAbortDismissed(),
    @required Result showStandardScreen(),
  }) {
    assert(showHelpPressed != null);
    assert(showAbortPressed != null);
    assert(showHelpDismissed != null);
    assert(showAbortDismissed != null);
    assert(showStandardScreen != null);
    return showAbortDismissed();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result showHelpPressed(),
    Result showAbortPressed(),
    Result showHelpDismissed(),
    Result showAbortDismissed(),
    Result showStandardScreen(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (showAbortDismissed != null) {
      return showAbortDismissed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result showHelpPressed(ShowHelpPressed value),
    @required Result showAbortPressed(ShowAbortPressed value),
    @required Result showHelpDismissed(ShowHelpDismissed value),
    @required Result showAbortDismissed(ShowAbortDismissed value),
    @required Result showStandardScreen(ShowStandardScreen value),
  }) {
    assert(showHelpPressed != null);
    assert(showAbortPressed != null);
    assert(showHelpDismissed != null);
    assert(showAbortDismissed != null);
    assert(showStandardScreen != null);
    return showAbortDismissed(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result showHelpPressed(ShowHelpPressed value),
    Result showAbortPressed(ShowAbortPressed value),
    Result showHelpDismissed(ShowHelpDismissed value),
    Result showAbortDismissed(ShowAbortDismissed value),
    Result showStandardScreen(ShowStandardScreen value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (showAbortDismissed != null) {
      return showAbortDismissed(this);
    }
    return orElse();
  }
}

abstract class ShowAbortDismissed implements BaseTemplateEvent {
  const factory ShowAbortDismissed() = _$ShowAbortDismissed;
}

abstract class $ShowStandardScreenCopyWith<$Res> {
  factory $ShowStandardScreenCopyWith(ShowStandardScreen value, $Res Function(ShowStandardScreen) then) =
      _$ShowStandardScreenCopyWithImpl<$Res>;
}

class _$ShowStandardScreenCopyWithImpl<$Res> extends _$BaseTemplateEventCopyWithImpl<$Res>
    implements $ShowStandardScreenCopyWith<$Res> {
  _$ShowStandardScreenCopyWithImpl(ShowStandardScreen _value, $Res Function(ShowStandardScreen) _then)
      : super(_value, (v) => _then(v as ShowStandardScreen));

  @override
  ShowStandardScreen get _value => super._value as ShowStandardScreen;
}

class _$ShowStandardScreen implements ShowStandardScreen {
  const _$ShowStandardScreen();

  @override
  String toString() {
    return 'BaseTemplateEvent.showStandardScreen()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ShowStandardScreen);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result showHelpPressed(),
    @required Result showAbortPressed(),
    @required Result showHelpDismissed(),
    @required Result showAbortDismissed(),
    @required Result showStandardScreen(),
  }) {
    assert(showHelpPressed != null);
    assert(showAbortPressed != null);
    assert(showHelpDismissed != null);
    assert(showAbortDismissed != null);
    assert(showStandardScreen != null);
    return showStandardScreen();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result showHelpPressed(),
    Result showAbortPressed(),
    Result showHelpDismissed(),
    Result showAbortDismissed(),
    Result showStandardScreen(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (showStandardScreen != null) {
      return showStandardScreen();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result showHelpPressed(ShowHelpPressed value),
    @required Result showAbortPressed(ShowAbortPressed value),
    @required Result showHelpDismissed(ShowHelpDismissed value),
    @required Result showAbortDismissed(ShowAbortDismissed value),
    @required Result showStandardScreen(ShowStandardScreen value),
  }) {
    assert(showHelpPressed != null);
    assert(showAbortPressed != null);
    assert(showHelpDismissed != null);
    assert(showAbortDismissed != null);
    assert(showStandardScreen != null);
    return showStandardScreen(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result showHelpPressed(ShowHelpPressed value),
    Result showAbortPressed(ShowAbortPressed value),
    Result showHelpDismissed(ShowHelpDismissed value),
    Result showAbortDismissed(ShowAbortDismissed value),
    Result showStandardScreen(ShowStandardScreen value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (showStandardScreen != null) {
      return showStandardScreen(this);
    }
    return orElse();
  }
}

abstract class ShowStandardScreen implements BaseTemplateEvent {
  const factory ShowStandardScreen() = _$ShowStandardScreen;
}

class _$BaseTemplateStateTearOff {
  const _$BaseTemplateStateTearOff();

  Initial initial() {
    return const Initial();
  }

  Show show(bool showHelp, bool showAbort) {
    return Show(
      showHelp,
      showAbort,
    );
  }
}

// ignore: unused_element
const $BaseTemplateState = _$BaseTemplateStateTearOff();

mixin _$BaseTemplateState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result show(bool showHelp, bool showAbort),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result show(bool showHelp, bool showAbort),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result show(Show value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result show(Show value),
    @required Result orElse(),
  });
}

abstract class $BaseTemplateStateCopyWith<$Res> {
  factory $BaseTemplateStateCopyWith(BaseTemplateState value, $Res Function(BaseTemplateState) then) =
      _$BaseTemplateStateCopyWithImpl<$Res>;
}

class _$BaseTemplateStateCopyWithImpl<$Res> implements $BaseTemplateStateCopyWith<$Res> {
  _$BaseTemplateStateCopyWithImpl(this._value, this._then);

  final BaseTemplateState _value;
  // ignore: unused_field
  final $Res Function(BaseTemplateState) _then;
}

abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) = _$InitialCopyWithImpl<$Res>;
}

class _$InitialCopyWithImpl<$Res> extends _$BaseTemplateStateCopyWithImpl<$Res> implements $InitialCopyWith<$Res> {
  _$InitialCopyWithImpl(Initial _value, $Res Function(Initial) _then) : super(_value, (v) => _then(v as Initial));

  @override
  Initial get _value => super._value as Initial;
}

class _$Initial implements Initial {
  const _$Initial();

  @override
  String toString() {
    return 'BaseTemplateState.initial()';
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
    @required Result show(bool showHelp, bool showAbort),
  }) {
    assert(initial != null);
    assert(show != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result show(bool showHelp, bool showAbort),
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
    @required Result show(Show value),
  }) {
    assert(initial != null);
    assert(show != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result show(Show value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements BaseTemplateState {
  const factory Initial() = _$Initial;
}

abstract class $ShowCopyWith<$Res> {
  factory $ShowCopyWith(Show value, $Res Function(Show) then) = _$ShowCopyWithImpl<$Res>;
  $Res call({bool showHelp, bool showAbort});
}

class _$ShowCopyWithImpl<$Res> extends _$BaseTemplateStateCopyWithImpl<$Res> implements $ShowCopyWith<$Res> {
  _$ShowCopyWithImpl(Show _value, $Res Function(Show) _then) : super(_value, (v) => _then(v as Show));

  @override
  Show get _value => super._value as Show;

  @override
  $Res call({
    Object showHelp = freezed,
    Object showAbort = freezed,
  }) {
    return _then(Show(
      showHelp == freezed ? _value.showHelp : showHelp as bool,
      showAbort == freezed ? _value.showAbort : showAbort as bool,
    ));
  }
}

class _$Show implements Show {
  const _$Show(this.showHelp, this.showAbort)
      : assert(showHelp != null),
        assert(showAbort != null);

  @override
  final bool showHelp;
  @override
  final bool showAbort;

  @override
  String toString() {
    return 'BaseTemplateState.show(showHelp: $showHelp, showAbort: $showAbort)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Show &&
            (identical(other.showHelp, showHelp) || const DeepCollectionEquality().equals(other.showHelp, showHelp)) &&
            (identical(other.showAbort, showAbort) ||
                const DeepCollectionEquality().equals(other.showAbort, showAbort)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(showHelp) ^
      const DeepCollectionEquality().hash(showAbort);

  @override
  $ShowCopyWith<Show> get copyWith => _$ShowCopyWithImpl<Show>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result show(bool showHelp, bool showAbort),
  }) {
    assert(initial != null);
    assert(show != null);
    return show(showHelp, showAbort);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result show(bool showHelp, bool showAbort),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (show != null) {
      return show(showHelp, showAbort);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result show(Show value),
  }) {
    assert(initial != null);
    assert(show != null);
    return show(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result show(Show value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (show != null) {
      return show(this);
    }
    return orElse();
  }
}

abstract class Show implements BaseTemplateState {
  const factory Show(bool showHelp, bool showAbort) = _$Show;

  bool get showHelp;
  bool get showAbort;
  $ShowCopyWith<Show> get copyWith;
}
