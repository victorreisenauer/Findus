// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'exercise_2_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$Exercise_2EventTearOff {
  const _$Exercise_2EventTearOff();

  StartExercise startExercise() {
    return const StartExercise();
  }

  PlaySound playSound() {
    return const PlaySound();
  }

  AnswerSelected answerSelected({int selectedAnswer}) {
    return AnswerSelected(
      selectedAnswer: selectedAnswer,
    );
  }

  NextPressed nextButtonPressed() {
    return const NextPressed();
  }
}

// ignore: unused_element
const $Exercise_2Event = _$Exercise_2EventTearOff();

mixin _$Exercise_2Event {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result startExercise(),
    @required Result playSound(),
    @required Result answerSelected(int selectedAnswer),
    @required Result nextButtonPressed(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result startExercise(),
    Result playSound(),
    Result answerSelected(int selectedAnswer),
    Result nextButtonPressed(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result startExercise(StartExercise value),
    @required Result playSound(PlaySound value),
    @required Result answerSelected(AnswerSelected value),
    @required Result nextButtonPressed(NextPressed value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result startExercise(StartExercise value),
    Result playSound(PlaySound value),
    Result answerSelected(AnswerSelected value),
    Result nextButtonPressed(NextPressed value),
    @required Result orElse(),
  });
}

abstract class $Exercise_2EventCopyWith<$Res> {
  factory $Exercise_2EventCopyWith(
          Exercise_2Event value, $Res Function(Exercise_2Event) then) =
      _$Exercise_2EventCopyWithImpl<$Res>;
}

class _$Exercise_2EventCopyWithImpl<$Res>
    implements $Exercise_2EventCopyWith<$Res> {
  _$Exercise_2EventCopyWithImpl(this._value, this._then);

  final Exercise_2Event _value;
  // ignore: unused_field
  final $Res Function(Exercise_2Event) _then;
}

abstract class $StartExerciseCopyWith<$Res> {
  factory $StartExerciseCopyWith(
          StartExercise value, $Res Function(StartExercise) then) =
      _$StartExerciseCopyWithImpl<$Res>;
}

class _$StartExerciseCopyWithImpl<$Res>
    extends _$Exercise_2EventCopyWithImpl<$Res>
    implements $StartExerciseCopyWith<$Res> {
  _$StartExerciseCopyWithImpl(
      StartExercise _value, $Res Function(StartExercise) _then)
      : super(_value, (v) => _then(v as StartExercise));

  @override
  StartExercise get _value => super._value as StartExercise;
}

class _$StartExercise with DiagnosticableTreeMixin implements StartExercise {
  const _$StartExercise();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Exercise_2Event.startExercise()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Exercise_2Event.startExercise'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is StartExercise);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result startExercise(),
    @required Result playSound(),
    @required Result answerSelected(int selectedAnswer),
    @required Result nextButtonPressed(),
  }) {
    assert(startExercise != null);
    assert(playSound != null);
    assert(answerSelected != null);
    assert(nextButtonPressed != null);
    return startExercise();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result startExercise(),
    Result playSound(),
    Result answerSelected(int selectedAnswer),
    Result nextButtonPressed(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (startExercise != null) {
      return startExercise();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result startExercise(StartExercise value),
    @required Result playSound(PlaySound value),
    @required Result answerSelected(AnswerSelected value),
    @required Result nextButtonPressed(NextPressed value),
  }) {
    assert(startExercise != null);
    assert(playSound != null);
    assert(answerSelected != null);
    assert(nextButtonPressed != null);
    return startExercise(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result startExercise(StartExercise value),
    Result playSound(PlaySound value),
    Result answerSelected(AnswerSelected value),
    Result nextButtonPressed(NextPressed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (startExercise != null) {
      return startExercise(this);
    }
    return orElse();
  }
}

abstract class StartExercise implements Exercise_2Event {
  const factory StartExercise() = _$StartExercise;
}

abstract class $PlaySoundCopyWith<$Res> {
  factory $PlaySoundCopyWith(PlaySound value, $Res Function(PlaySound) then) =
      _$PlaySoundCopyWithImpl<$Res>;
}

class _$PlaySoundCopyWithImpl<$Res> extends _$Exercise_2EventCopyWithImpl<$Res>
    implements $PlaySoundCopyWith<$Res> {
  _$PlaySoundCopyWithImpl(PlaySound _value, $Res Function(PlaySound) _then)
      : super(_value, (v) => _then(v as PlaySound));

  @override
  PlaySound get _value => super._value as PlaySound;
}

class _$PlaySound with DiagnosticableTreeMixin implements PlaySound {
  const _$PlaySound();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Exercise_2Event.playSound()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'Exercise_2Event.playSound'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is PlaySound);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result startExercise(),
    @required Result playSound(),
    @required Result answerSelected(int selectedAnswer),
    @required Result nextButtonPressed(),
  }) {
    assert(startExercise != null);
    assert(playSound != null);
    assert(answerSelected != null);
    assert(nextButtonPressed != null);
    return playSound();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result startExercise(),
    Result playSound(),
    Result answerSelected(int selectedAnswer),
    Result nextButtonPressed(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (playSound != null) {
      return playSound();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result startExercise(StartExercise value),
    @required Result playSound(PlaySound value),
    @required Result answerSelected(AnswerSelected value),
    @required Result nextButtonPressed(NextPressed value),
  }) {
    assert(startExercise != null);
    assert(playSound != null);
    assert(answerSelected != null);
    assert(nextButtonPressed != null);
    return playSound(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result startExercise(StartExercise value),
    Result playSound(PlaySound value),
    Result answerSelected(AnswerSelected value),
    Result nextButtonPressed(NextPressed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (playSound != null) {
      return playSound(this);
    }
    return orElse();
  }
}

abstract class PlaySound implements Exercise_2Event {
  const factory PlaySound() = _$PlaySound;
}

abstract class $AnswerSelectedCopyWith<$Res> {
  factory $AnswerSelectedCopyWith(
          AnswerSelected value, $Res Function(AnswerSelected) then) =
      _$AnswerSelectedCopyWithImpl<$Res>;
  $Res call({int selectedAnswer});
}

class _$AnswerSelectedCopyWithImpl<$Res>
    extends _$Exercise_2EventCopyWithImpl<$Res>
    implements $AnswerSelectedCopyWith<$Res> {
  _$AnswerSelectedCopyWithImpl(
      AnswerSelected _value, $Res Function(AnswerSelected) _then)
      : super(_value, (v) => _then(v as AnswerSelected));

  @override
  AnswerSelected get _value => super._value as AnswerSelected;

  @override
  $Res call({
    Object selectedAnswer = freezed,
  }) {
    return _then(AnswerSelected(
      selectedAnswer: selectedAnswer == freezed
          ? _value.selectedAnswer
          : selectedAnswer as int,
    ));
  }
}

class _$AnswerSelected with DiagnosticableTreeMixin implements AnswerSelected {
  const _$AnswerSelected({this.selectedAnswer});

  @override
  final int selectedAnswer;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Exercise_2Event.answerSelected(selectedAnswer: $selectedAnswer)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Exercise_2Event.answerSelected'))
      ..add(DiagnosticsProperty('selectedAnswer', selectedAnswer));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AnswerSelected &&
            (identical(other.selectedAnswer, selectedAnswer) ||
                const DeepCollectionEquality()
                    .equals(other.selectedAnswer, selectedAnswer)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(selectedAnswer);

  @override
  $AnswerSelectedCopyWith<AnswerSelected> get copyWith =>
      _$AnswerSelectedCopyWithImpl<AnswerSelected>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result startExercise(),
    @required Result playSound(),
    @required Result answerSelected(int selectedAnswer),
    @required Result nextButtonPressed(),
  }) {
    assert(startExercise != null);
    assert(playSound != null);
    assert(answerSelected != null);
    assert(nextButtonPressed != null);
    return answerSelected(selectedAnswer);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result startExercise(),
    Result playSound(),
    Result answerSelected(int selectedAnswer),
    Result nextButtonPressed(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (answerSelected != null) {
      return answerSelected(selectedAnswer);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result startExercise(StartExercise value),
    @required Result playSound(PlaySound value),
    @required Result answerSelected(AnswerSelected value),
    @required Result nextButtonPressed(NextPressed value),
  }) {
    assert(startExercise != null);
    assert(playSound != null);
    assert(answerSelected != null);
    assert(nextButtonPressed != null);
    return answerSelected(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result startExercise(StartExercise value),
    Result playSound(PlaySound value),
    Result answerSelected(AnswerSelected value),
    Result nextButtonPressed(NextPressed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (answerSelected != null) {
      return answerSelected(this);
    }
    return orElse();
  }
}

abstract class AnswerSelected implements Exercise_2Event {
  const factory AnswerSelected({int selectedAnswer}) = _$AnswerSelected;

  int get selectedAnswer;
  $AnswerSelectedCopyWith<AnswerSelected> get copyWith;
}

abstract class $NextPressedCopyWith<$Res> {
  factory $NextPressedCopyWith(
          NextPressed value, $Res Function(NextPressed) then) =
      _$NextPressedCopyWithImpl<$Res>;
}

class _$NextPressedCopyWithImpl<$Res>
    extends _$Exercise_2EventCopyWithImpl<$Res>
    implements $NextPressedCopyWith<$Res> {
  _$NextPressedCopyWithImpl(
      NextPressed _value, $Res Function(NextPressed) _then)
      : super(_value, (v) => _then(v as NextPressed));

  @override
  NextPressed get _value => super._value as NextPressed;
}

class _$NextPressed with DiagnosticableTreeMixin implements NextPressed {
  const _$NextPressed();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Exercise_2Event.nextButtonPressed()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Exercise_2Event.nextButtonPressed'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is NextPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result startExercise(),
    @required Result playSound(),
    @required Result answerSelected(int selectedAnswer),
    @required Result nextButtonPressed(),
  }) {
    assert(startExercise != null);
    assert(playSound != null);
    assert(answerSelected != null);
    assert(nextButtonPressed != null);
    return nextButtonPressed();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result startExercise(),
    Result playSound(),
    Result answerSelected(int selectedAnswer),
    Result nextButtonPressed(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (nextButtonPressed != null) {
      return nextButtonPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result startExercise(StartExercise value),
    @required Result playSound(PlaySound value),
    @required Result answerSelected(AnswerSelected value),
    @required Result nextButtonPressed(NextPressed value),
  }) {
    assert(startExercise != null);
    assert(playSound != null);
    assert(answerSelected != null);
    assert(nextButtonPressed != null);
    return nextButtonPressed(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result startExercise(StartExercise value),
    Result playSound(PlaySound value),
    Result answerSelected(AnswerSelected value),
    Result nextButtonPressed(NextPressed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (nextButtonPressed != null) {
      return nextButtonPressed(this);
    }
    return orElse();
  }
}

abstract class NextPressed implements Exercise_2Event {
  const factory NextPressed() = _$NextPressed;
}

class _$Exercise_2StateTearOff {
  const _$Exercise_2StateTearOff();

  Initial initial() {
    return const Initial();
  }

  ShowExercise showExercise(List<String> answers, List<Color> colors,
      String help, bool showNextButton) {
    return ShowExercise(
      answers,
      colors,
      help,
      showNextButton,
    );
  }
}

// ignore: unused_element
const $Exercise_2State = _$Exercise_2StateTearOff();

mixin _$Exercise_2State {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required
        Result showExercise(List<String> answers, List<Color> colors,
            String help, bool showNextButton),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result showExercise(List<String> answers, List<Color> colors, String help,
        bool showNextButton),
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

abstract class $Exercise_2StateCopyWith<$Res> {
  factory $Exercise_2StateCopyWith(
          Exercise_2State value, $Res Function(Exercise_2State) then) =
      _$Exercise_2StateCopyWithImpl<$Res>;
}

class _$Exercise_2StateCopyWithImpl<$Res>
    implements $Exercise_2StateCopyWith<$Res> {
  _$Exercise_2StateCopyWithImpl(this._value, this._then);

  final Exercise_2State _value;
  // ignore: unused_field
  final $Res Function(Exercise_2State) _then;
}

abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

class _$InitialCopyWithImpl<$Res> extends _$Exercise_2StateCopyWithImpl<$Res>
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
    return 'Exercise_2State.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'Exercise_2State.initial'));
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
        Result showExercise(List<String> answers, List<Color> colors,
            String help, bool showNextButton),
  }) {
    assert(initial != null);
    assert(showExercise != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result showExercise(List<String> answers, List<Color> colors, String help,
        bool showNextButton),
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

abstract class Initial implements Exercise_2State {
  const factory Initial() = _$Initial;
}

abstract class $ShowExerciseCopyWith<$Res> {
  factory $ShowExerciseCopyWith(
          ShowExercise value, $Res Function(ShowExercise) then) =
      _$ShowExerciseCopyWithImpl<$Res>;
  $Res call(
      {List<String> answers,
      List<Color> colors,
      String help,
      bool showNextButton});
}

class _$ShowExerciseCopyWithImpl<$Res>
    extends _$Exercise_2StateCopyWithImpl<$Res>
    implements $ShowExerciseCopyWith<$Res> {
  _$ShowExerciseCopyWithImpl(
      ShowExercise _value, $Res Function(ShowExercise) _then)
      : super(_value, (v) => _then(v as ShowExercise));

  @override
  ShowExercise get _value => super._value as ShowExercise;

  @override
  $Res call({
    Object answers = freezed,
    Object colors = freezed,
    Object help = freezed,
    Object showNextButton = freezed,
  }) {
    return _then(ShowExercise(
      answers == freezed ? _value.answers : answers as List<String>,
      colors == freezed ? _value.colors : colors as List<Color>,
      help == freezed ? _value.help : help as String,
      showNextButton == freezed
          ? _value.showNextButton
          : showNextButton as bool,
    ));
  }
}

class _$ShowExercise with DiagnosticableTreeMixin implements ShowExercise {
  const _$ShowExercise(
      this.answers, this.colors, this.help, this.showNextButton)
      : assert(answers != null),
        assert(colors != null),
        assert(help != null),
        assert(showNextButton != null);

  @override
  final List<String> answers;
  @override
  final List<Color> colors;
  @override
  final String help;
  @override
  final bool showNextButton;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Exercise_2State.showExercise(answers: $answers, colors: $colors, help: $help, showNextButton: $showNextButton)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Exercise_2State.showExercise'))
      ..add(DiagnosticsProperty('answers', answers))
      ..add(DiagnosticsProperty('colors', colors))
      ..add(DiagnosticsProperty('help', help))
      ..add(DiagnosticsProperty('showNextButton', showNextButton));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ShowExercise &&
            (identical(other.answers, answers) ||
                const DeepCollectionEquality()
                    .equals(other.answers, answers)) &&
            (identical(other.colors, colors) ||
                const DeepCollectionEquality().equals(other.colors, colors)) &&
            (identical(other.help, help) ||
                const DeepCollectionEquality().equals(other.help, help)) &&
            (identical(other.showNextButton, showNextButton) ||
                const DeepCollectionEquality()
                    .equals(other.showNextButton, showNextButton)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(answers) ^
      const DeepCollectionEquality().hash(colors) ^
      const DeepCollectionEquality().hash(help) ^
      const DeepCollectionEquality().hash(showNextButton);

  @override
  $ShowExerciseCopyWith<ShowExercise> get copyWith =>
      _$ShowExerciseCopyWithImpl<ShowExercise>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required
        Result showExercise(List<String> answers, List<Color> colors,
            String help, bool showNextButton),
  }) {
    assert(initial != null);
    assert(showExercise != null);
    return showExercise(answers, colors, help, showNextButton);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result showExercise(List<String> answers, List<Color> colors, String help,
        bool showNextButton),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (showExercise != null) {
      return showExercise(answers, colors, help, showNextButton);
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

abstract class ShowExercise implements Exercise_2State {
  const factory ShowExercise(List<String> answers, List<Color> colors,
      String help, bool showNextButton) = _$ShowExercise;

  List<String> get answers;
  List<Color> get colors;
  String get help;
  bool get showNextButton;
  $ShowExerciseCopyWith<ShowExercise> get copyWith;
}
