// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'template0004_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$Template0004EventTearOff {
  const _$Template0004EventTearOff();

  StartExercise startExercise() {
    return const StartExercise();
  }

  AnswerSelected answerSelected(int answer) {
    return AnswerSelected(
      answer,
    );
  }
}

// ignore: unused_element
const $Template0004Event = _$Template0004EventTearOff();

mixin _$Template0004Event {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result startExercise(),
    @required Result answerSelected(int answer),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result startExercise(),
    Result answerSelected(int answer),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result startExercise(StartExercise value),
    @required Result answerSelected(AnswerSelected value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result startExercise(StartExercise value),
    Result answerSelected(AnswerSelected value),
    @required Result orElse(),
  });
}

abstract class $Template0004EventCopyWith<$Res> {
  factory $Template0004EventCopyWith(
          Template0004Event value, $Res Function(Template0004Event) then) =
      _$Template0004EventCopyWithImpl<$Res>;
}

class _$Template0004EventCopyWithImpl<$Res>
    implements $Template0004EventCopyWith<$Res> {
  _$Template0004EventCopyWithImpl(this._value, this._then);

  final Template0004Event _value;
  // ignore: unused_field
  final $Res Function(Template0004Event) _then;
}

abstract class $StartExerciseCopyWith<$Res> {
  factory $StartExerciseCopyWith(
          StartExercise value, $Res Function(StartExercise) then) =
      _$StartExerciseCopyWithImpl<$Res>;
}

class _$StartExerciseCopyWithImpl<$Res>
    extends _$Template0004EventCopyWithImpl<$Res>
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
    return 'Template0004Event.startExercise()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Template0004Event.startExercise'));
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
    @required Result answerSelected(int answer),
  }) {
    assert(startExercise != null);
    assert(answerSelected != null);
    return startExercise();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result startExercise(),
    Result answerSelected(int answer),
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
    @required Result answerSelected(AnswerSelected value),
  }) {
    assert(startExercise != null);
    assert(answerSelected != null);
    return startExercise(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result startExercise(StartExercise value),
    Result answerSelected(AnswerSelected value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (startExercise != null) {
      return startExercise(this);
    }
    return orElse();
  }
}

abstract class StartExercise implements Template0004Event {
  const factory StartExercise() = _$StartExercise;
}

abstract class $AnswerSelectedCopyWith<$Res> {
  factory $AnswerSelectedCopyWith(
          AnswerSelected value, $Res Function(AnswerSelected) then) =
      _$AnswerSelectedCopyWithImpl<$Res>;
  $Res call({int answer});
}

class _$AnswerSelectedCopyWithImpl<$Res>
    extends _$Template0004EventCopyWithImpl<$Res>
    implements $AnswerSelectedCopyWith<$Res> {
  _$AnswerSelectedCopyWithImpl(
      AnswerSelected _value, $Res Function(AnswerSelected) _then)
      : super(_value, (v) => _then(v as AnswerSelected));

  @override
  AnswerSelected get _value => super._value as AnswerSelected;

  @override
  $Res call({
    Object answer = freezed,
  }) {
    return _then(AnswerSelected(
      answer == freezed ? _value.answer : answer as int,
    ));
  }
}

class _$AnswerSelected with DiagnosticableTreeMixin implements AnswerSelected {
  const _$AnswerSelected(this.answer) : assert(answer != null);

  @override
  final int answer;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Template0004Event.answerSelected(answer: $answer)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Template0004Event.answerSelected'))
      ..add(DiagnosticsProperty('answer', answer));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AnswerSelected &&
            (identical(other.answer, answer) ||
                const DeepCollectionEquality().equals(other.answer, answer)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(answer);

  @override
  $AnswerSelectedCopyWith<AnswerSelected> get copyWith =>
      _$AnswerSelectedCopyWithImpl<AnswerSelected>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result startExercise(),
    @required Result answerSelected(int answer),
  }) {
    assert(startExercise != null);
    assert(answerSelected != null);
    return answerSelected(answer);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result startExercise(),
    Result answerSelected(int answer),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (answerSelected != null) {
      return answerSelected(answer);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result startExercise(StartExercise value),
    @required Result answerSelected(AnswerSelected value),
  }) {
    assert(startExercise != null);
    assert(answerSelected != null);
    return answerSelected(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result startExercise(StartExercise value),
    Result answerSelected(AnswerSelected value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (answerSelected != null) {
      return answerSelected(this);
    }
    return orElse();
  }
}

abstract class AnswerSelected implements Template0004Event {
  const factory AnswerSelected(int answer) = _$AnswerSelected;

  int get answer;
  $AnswerSelectedCopyWith<AnswerSelected> get copyWith;
}

class _$Template0004StateTearOff {
  const _$Template0004StateTearOff();

  Initial initial() {
    return const Initial();
  }

  ShowExercise showExercise(
      String word, List<String> answers, List<Color> colors) {
    return ShowExercise(
      word,
      answers,
      colors,
    );
  }
}

// ignore: unused_element
const $Template0004State = _$Template0004StateTearOff();

mixin _$Template0004State {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required
        Result showExercise(
            String word, List<String> answers, List<Color> colors),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result showExercise(String word, List<String> answers, List<Color> colors),
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

abstract class $Template0004StateCopyWith<$Res> {
  factory $Template0004StateCopyWith(
          Template0004State value, $Res Function(Template0004State) then) =
      _$Template0004StateCopyWithImpl<$Res>;
}

class _$Template0004StateCopyWithImpl<$Res>
    implements $Template0004StateCopyWith<$Res> {
  _$Template0004StateCopyWithImpl(this._value, this._then);

  final Template0004State _value;
  // ignore: unused_field
  final $Res Function(Template0004State) _then;
}

abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

class _$InitialCopyWithImpl<$Res> extends _$Template0004StateCopyWithImpl<$Res>
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
    return 'Template0004State.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'Template0004State.initial'));
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
        Result showExercise(
            String word, List<String> answers, List<Color> colors),
  }) {
    assert(initial != null);
    assert(showExercise != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result showExercise(String word, List<String> answers, List<Color> colors),
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

abstract class Initial implements Template0004State {
  const factory Initial() = _$Initial;
}

abstract class $ShowExerciseCopyWith<$Res> {
  factory $ShowExerciseCopyWith(
          ShowExercise value, $Res Function(ShowExercise) then) =
      _$ShowExerciseCopyWithImpl<$Res>;
  $Res call({String word, List<String> answers, List<Color> colors});
}

class _$ShowExerciseCopyWithImpl<$Res>
    extends _$Template0004StateCopyWithImpl<$Res>
    implements $ShowExerciseCopyWith<$Res> {
  _$ShowExerciseCopyWithImpl(
      ShowExercise _value, $Res Function(ShowExercise) _then)
      : super(_value, (v) => _then(v as ShowExercise));

  @override
  ShowExercise get _value => super._value as ShowExercise;

  @override
  $Res call({
    Object word = freezed,
    Object answers = freezed,
    Object colors = freezed,
  }) {
    return _then(ShowExercise(
      word == freezed ? _value.word : word as String,
      answers == freezed ? _value.answers : answers as List<String>,
      colors == freezed ? _value.colors : colors as List<Color>,
    ));
  }
}

class _$ShowExercise with DiagnosticableTreeMixin implements ShowExercise {
  const _$ShowExercise(this.word, this.answers, this.colors)
      : assert(word != null),
        assert(answers != null),
        assert(colors != null);

  @override
  final String word;
  @override
  final List<String> answers;
  @override
  final List<Color> colors;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Template0004State.showExercise(word: $word, answers: $answers, colors: $colors)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Template0004State.showExercise'))
      ..add(DiagnosticsProperty('word', word))
      ..add(DiagnosticsProperty('answers', answers))
      ..add(DiagnosticsProperty('colors', colors));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ShowExercise &&
            (identical(other.word, word) ||
                const DeepCollectionEquality().equals(other.word, word)) &&
            (identical(other.answers, answers) ||
                const DeepCollectionEquality()
                    .equals(other.answers, answers)) &&
            (identical(other.colors, colors) ||
                const DeepCollectionEquality().equals(other.colors, colors)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(word) ^
      const DeepCollectionEquality().hash(answers) ^
      const DeepCollectionEquality().hash(colors);

  @override
  $ShowExerciseCopyWith<ShowExercise> get copyWith =>
      _$ShowExerciseCopyWithImpl<ShowExercise>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required
        Result showExercise(
            String word, List<String> answers, List<Color> colors),
  }) {
    assert(initial != null);
    assert(showExercise != null);
    return showExercise(word, answers, colors);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result showExercise(String word, List<String> answers, List<Color> colors),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (showExercise != null) {
      return showExercise(word, answers, colors);
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

abstract class ShowExercise implements Template0004State {
  const factory ShowExercise(
      String word, List<String> answers, List<Color> colors) = _$ShowExercise;

  String get word;
  List<String> get answers;
  List<Color> get colors;
  $ShowExerciseCopyWith<ShowExercise> get copyWith;
}
