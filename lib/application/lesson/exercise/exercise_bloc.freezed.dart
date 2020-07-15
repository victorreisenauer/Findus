// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'exercise_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ExerciseEventTearOff {
  const _$ExerciseEventTearOff();

  BuildFirstExercise buildFirstExercise() {
    return const BuildFirstExercise();
  }

  BuildNextExercise buildNextExercise() {
    return const BuildNextExercise();
  }

  FinishExercise finishExercise(ExerciseResult result) {
    return FinishExercise(
      result,
    );
  }

  AbortExercise abortExercise() {
    return const AbortExercise();
  }
}

// ignore: unused_element
const $ExerciseEvent = _$ExerciseEventTearOff();

mixin _$ExerciseEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result buildFirstExercise(),
    @required Result buildNextExercise(),
    @required Result finishExercise(ExerciseResult result),
    @required Result abortExercise(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result buildFirstExercise(),
    Result buildNextExercise(),
    Result finishExercise(ExerciseResult result),
    Result abortExercise(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result buildFirstExercise(BuildFirstExercise value),
    @required Result buildNextExercise(BuildNextExercise value),
    @required Result finishExercise(FinishExercise value),
    @required Result abortExercise(AbortExercise value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result buildFirstExercise(BuildFirstExercise value),
    Result buildNextExercise(BuildNextExercise value),
    Result finishExercise(FinishExercise value),
    Result abortExercise(AbortExercise value),
    @required Result orElse(),
  });
}

abstract class $ExerciseEventCopyWith<$Res> {
  factory $ExerciseEventCopyWith(ExerciseEvent value, $Res Function(ExerciseEvent) then) =
      _$ExerciseEventCopyWithImpl<$Res>;
}

class _$ExerciseEventCopyWithImpl<$Res> implements $ExerciseEventCopyWith<$Res> {
  _$ExerciseEventCopyWithImpl(this._value, this._then);

  final ExerciseEvent _value;
  // ignore: unused_field
  final $Res Function(ExerciseEvent) _then;
}

abstract class $BuildFirstExerciseCopyWith<$Res> {
  factory $BuildFirstExerciseCopyWith(BuildFirstExercise value, $Res Function(BuildFirstExercise) then) =
      _$BuildFirstExerciseCopyWithImpl<$Res>;
}

class _$BuildFirstExerciseCopyWithImpl<$Res> extends _$ExerciseEventCopyWithImpl<$Res>
    implements $BuildFirstExerciseCopyWith<$Res> {
  _$BuildFirstExerciseCopyWithImpl(BuildFirstExercise _value, $Res Function(BuildFirstExercise) _then)
      : super(_value, (v) => _then(v as BuildFirstExercise));

  @override
  BuildFirstExercise get _value => super._value as BuildFirstExercise;
}

class _$BuildFirstExercise implements BuildFirstExercise {
  const _$BuildFirstExercise();

  @override
  String toString() {
    return 'ExerciseEvent.buildFirstExercise()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is BuildFirstExercise);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result buildFirstExercise(),
    @required Result buildNextExercise(),
    @required Result finishExercise(ExerciseResult result),
    @required Result abortExercise(),
  }) {
    assert(buildFirstExercise != null);
    assert(buildNextExercise != null);
    assert(finishExercise != null);
    assert(abortExercise != null);
    return buildFirstExercise();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result buildFirstExercise(),
    Result buildNextExercise(),
    Result finishExercise(ExerciseResult result),
    Result abortExercise(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (buildFirstExercise != null) {
      return buildFirstExercise();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result buildFirstExercise(BuildFirstExercise value),
    @required Result buildNextExercise(BuildNextExercise value),
    @required Result finishExercise(FinishExercise value),
    @required Result abortExercise(AbortExercise value),
  }) {
    assert(buildFirstExercise != null);
    assert(buildNextExercise != null);
    assert(finishExercise != null);
    assert(abortExercise != null);
    return buildFirstExercise(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result buildFirstExercise(BuildFirstExercise value),
    Result buildNextExercise(BuildNextExercise value),
    Result finishExercise(FinishExercise value),
    Result abortExercise(AbortExercise value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (buildFirstExercise != null) {
      return buildFirstExercise(this);
    }
    return orElse();
  }
}

abstract class BuildFirstExercise implements ExerciseEvent {
  const factory BuildFirstExercise() = _$BuildFirstExercise;
}

abstract class $BuildNextExerciseCopyWith<$Res> {
  factory $BuildNextExerciseCopyWith(BuildNextExercise value, $Res Function(BuildNextExercise) then) =
      _$BuildNextExerciseCopyWithImpl<$Res>;
}

class _$BuildNextExerciseCopyWithImpl<$Res> extends _$ExerciseEventCopyWithImpl<$Res>
    implements $BuildNextExerciseCopyWith<$Res> {
  _$BuildNextExerciseCopyWithImpl(BuildNextExercise _value, $Res Function(BuildNextExercise) _then)
      : super(_value, (v) => _then(v as BuildNextExercise));

  @override
  BuildNextExercise get _value => super._value as BuildNextExercise;
}

class _$BuildNextExercise implements BuildNextExercise {
  const _$BuildNextExercise();

  @override
  String toString() {
    return 'ExerciseEvent.buildNextExercise()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is BuildNextExercise);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result buildFirstExercise(),
    @required Result buildNextExercise(),
    @required Result finishExercise(ExerciseResult result),
    @required Result abortExercise(),
  }) {
    assert(buildFirstExercise != null);
    assert(buildNextExercise != null);
    assert(finishExercise != null);
    assert(abortExercise != null);
    return buildNextExercise();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result buildFirstExercise(),
    Result buildNextExercise(),
    Result finishExercise(ExerciseResult result),
    Result abortExercise(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (buildNextExercise != null) {
      return buildNextExercise();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result buildFirstExercise(BuildFirstExercise value),
    @required Result buildNextExercise(BuildNextExercise value),
    @required Result finishExercise(FinishExercise value),
    @required Result abortExercise(AbortExercise value),
  }) {
    assert(buildFirstExercise != null);
    assert(buildNextExercise != null);
    assert(finishExercise != null);
    assert(abortExercise != null);
    return buildNextExercise(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result buildFirstExercise(BuildFirstExercise value),
    Result buildNextExercise(BuildNextExercise value),
    Result finishExercise(FinishExercise value),
    Result abortExercise(AbortExercise value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (buildNextExercise != null) {
      return buildNextExercise(this);
    }
    return orElse();
  }
}

abstract class BuildNextExercise implements ExerciseEvent {
  const factory BuildNextExercise() = _$BuildNextExercise;
}

abstract class $FinishExerciseCopyWith<$Res> {
  factory $FinishExerciseCopyWith(FinishExercise value, $Res Function(FinishExercise) then) =
      _$FinishExerciseCopyWithImpl<$Res>;
  $Res call({ExerciseResult result});

  $ExerciseResultCopyWith<$Res> get result;
}

class _$FinishExerciseCopyWithImpl<$Res> extends _$ExerciseEventCopyWithImpl<$Res>
    implements $FinishExerciseCopyWith<$Res> {
  _$FinishExerciseCopyWithImpl(FinishExercise _value, $Res Function(FinishExercise) _then)
      : super(_value, (v) => _then(v as FinishExercise));

  @override
  FinishExercise get _value => super._value as FinishExercise;

  @override
  $Res call({
    Object result = freezed,
  }) {
    return _then(FinishExercise(
      result == freezed ? _value.result : result as ExerciseResult,
    ));
  }

  @override
  $ExerciseResultCopyWith<$Res> get result {
    if (_value.result == null) {
      return null;
    }
    return $ExerciseResultCopyWith<$Res>(_value.result, (value) {
      return _then(_value.copyWith(result: value));
    });
  }
}

class _$FinishExercise implements FinishExercise {
  const _$FinishExercise(this.result) : assert(result != null);

  @override
  final ExerciseResult result;

  @override
  String toString() {
    return 'ExerciseEvent.finishExercise(result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FinishExercise &&
            (identical(other.result, result) || const DeepCollectionEquality().equals(other.result, result)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(result);

  @override
  $FinishExerciseCopyWith<FinishExercise> get copyWith =>
      _$FinishExerciseCopyWithImpl<FinishExercise>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result buildFirstExercise(),
    @required Result buildNextExercise(),
    @required Result finishExercise(ExerciseResult result),
    @required Result abortExercise(),
  }) {
    assert(buildFirstExercise != null);
    assert(buildNextExercise != null);
    assert(finishExercise != null);
    assert(abortExercise != null);
    return finishExercise(result);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result buildFirstExercise(),
    Result buildNextExercise(),
    Result finishExercise(ExerciseResult result),
    Result abortExercise(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (finishExercise != null) {
      return finishExercise(result);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result buildFirstExercise(BuildFirstExercise value),
    @required Result buildNextExercise(BuildNextExercise value),
    @required Result finishExercise(FinishExercise value),
    @required Result abortExercise(AbortExercise value),
  }) {
    assert(buildFirstExercise != null);
    assert(buildNextExercise != null);
    assert(finishExercise != null);
    assert(abortExercise != null);
    return finishExercise(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result buildFirstExercise(BuildFirstExercise value),
    Result buildNextExercise(BuildNextExercise value),
    Result finishExercise(FinishExercise value),
    Result abortExercise(AbortExercise value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (finishExercise != null) {
      return finishExercise(this);
    }
    return orElse();
  }
}

abstract class FinishExercise implements ExerciseEvent {
  const factory FinishExercise(ExerciseResult result) = _$FinishExercise;

  ExerciseResult get result;
  $FinishExerciseCopyWith<FinishExercise> get copyWith;
}

abstract class $AbortExerciseCopyWith<$Res> {
  factory $AbortExerciseCopyWith(AbortExercise value, $Res Function(AbortExercise) then) =
      _$AbortExerciseCopyWithImpl<$Res>;
}

class _$AbortExerciseCopyWithImpl<$Res> extends _$ExerciseEventCopyWithImpl<$Res>
    implements $AbortExerciseCopyWith<$Res> {
  _$AbortExerciseCopyWithImpl(AbortExercise _value, $Res Function(AbortExercise) _then)
      : super(_value, (v) => _then(v as AbortExercise));

  @override
  AbortExercise get _value => super._value as AbortExercise;
}

class _$AbortExercise implements AbortExercise {
  const _$AbortExercise();

  @override
  String toString() {
    return 'ExerciseEvent.abortExercise()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is AbortExercise);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result buildFirstExercise(),
    @required Result buildNextExercise(),
    @required Result finishExercise(ExerciseResult result),
    @required Result abortExercise(),
  }) {
    assert(buildFirstExercise != null);
    assert(buildNextExercise != null);
    assert(finishExercise != null);
    assert(abortExercise != null);
    return abortExercise();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result buildFirstExercise(),
    Result buildNextExercise(),
    Result finishExercise(ExerciseResult result),
    Result abortExercise(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (abortExercise != null) {
      return abortExercise();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result buildFirstExercise(BuildFirstExercise value),
    @required Result buildNextExercise(BuildNextExercise value),
    @required Result finishExercise(FinishExercise value),
    @required Result abortExercise(AbortExercise value),
  }) {
    assert(buildFirstExercise != null);
    assert(buildNextExercise != null);
    assert(finishExercise != null);
    assert(abortExercise != null);
    return abortExercise(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result buildFirstExercise(BuildFirstExercise value),
    Result buildNextExercise(BuildNextExercise value),
    Result finishExercise(FinishExercise value),
    Result abortExercise(AbortExercise value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (abortExercise != null) {
      return abortExercise(this);
    }
    return orElse();
  }
}

abstract class AbortExercise implements ExerciseEvent {
  const factory AbortExercise() = _$AbortExercise;
}

class _$ExerciseStateTearOff {
  const _$ExerciseStateTearOff();

  Initial initial() {
    return const Initial();
  }

  ExerciseBuilt exerciseBuilt(Template builtExercise) {
    return ExerciseBuilt(
      builtExercise,
    );
  }

  ExerciseError exerciseError(TemplateFailure error) {
    return ExerciseError(
      error,
    );
  }

  ExerciseFinished exerciseFinished() {
    return const ExerciseFinished();
  }

  AllExercisesCompleted allExercisesCompleted() {
    return const AllExercisesCompleted();
  }
}

// ignore: unused_element
const $ExerciseState = _$ExerciseStateTearOff();

mixin _$ExerciseState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result exerciseBuilt(Template builtExercise),
    @required Result exerciseError(TemplateFailure error),
    @required Result exerciseFinished(),
    @required Result allExercisesCompleted(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result exerciseBuilt(Template builtExercise),
    Result exerciseError(TemplateFailure error),
    Result exerciseFinished(),
    Result allExercisesCompleted(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result exerciseBuilt(ExerciseBuilt value),
    @required Result exerciseError(ExerciseError value),
    @required Result exerciseFinished(ExerciseFinished value),
    @required Result allExercisesCompleted(AllExercisesCompleted value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result exerciseBuilt(ExerciseBuilt value),
    Result exerciseError(ExerciseError value),
    Result exerciseFinished(ExerciseFinished value),
    Result allExercisesCompleted(AllExercisesCompleted value),
    @required Result orElse(),
  });
}

abstract class $ExerciseStateCopyWith<$Res> {
  factory $ExerciseStateCopyWith(ExerciseState value, $Res Function(ExerciseState) then) =
      _$ExerciseStateCopyWithImpl<$Res>;
}

class _$ExerciseStateCopyWithImpl<$Res> implements $ExerciseStateCopyWith<$Res> {
  _$ExerciseStateCopyWithImpl(this._value, this._then);

  final ExerciseState _value;
  // ignore: unused_field
  final $Res Function(ExerciseState) _then;
}

abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) = _$InitialCopyWithImpl<$Res>;
}

class _$InitialCopyWithImpl<$Res> extends _$ExerciseStateCopyWithImpl<$Res> implements $InitialCopyWith<$Res> {
  _$InitialCopyWithImpl(Initial _value, $Res Function(Initial) _then) : super(_value, (v) => _then(v as Initial));

  @override
  Initial get _value => super._value as Initial;
}

class _$Initial implements Initial {
  const _$Initial();

  @override
  String toString() {
    return 'ExerciseState.initial()';
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
    @required Result exerciseBuilt(Template builtExercise),
    @required Result exerciseError(TemplateFailure error),
    @required Result exerciseFinished(),
    @required Result allExercisesCompleted(),
  }) {
    assert(initial != null);
    assert(exerciseBuilt != null);
    assert(exerciseError != null);
    assert(exerciseFinished != null);
    assert(allExercisesCompleted != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result exerciseBuilt(Template builtExercise),
    Result exerciseError(TemplateFailure error),
    Result exerciseFinished(),
    Result allExercisesCompleted(),
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
    @required Result exerciseBuilt(ExerciseBuilt value),
    @required Result exerciseError(ExerciseError value),
    @required Result exerciseFinished(ExerciseFinished value),
    @required Result allExercisesCompleted(AllExercisesCompleted value),
  }) {
    assert(initial != null);
    assert(exerciseBuilt != null);
    assert(exerciseError != null);
    assert(exerciseFinished != null);
    assert(allExercisesCompleted != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result exerciseBuilt(ExerciseBuilt value),
    Result exerciseError(ExerciseError value),
    Result exerciseFinished(ExerciseFinished value),
    Result allExercisesCompleted(AllExercisesCompleted value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements ExerciseState {
  const factory Initial() = _$Initial;
}

abstract class $ExerciseBuiltCopyWith<$Res> {
  factory $ExerciseBuiltCopyWith(ExerciseBuilt value, $Res Function(ExerciseBuilt) then) =
      _$ExerciseBuiltCopyWithImpl<$Res>;
  $Res call({Template builtExercise});
}

class _$ExerciseBuiltCopyWithImpl<$Res> extends _$ExerciseStateCopyWithImpl<$Res>
    implements $ExerciseBuiltCopyWith<$Res> {
  _$ExerciseBuiltCopyWithImpl(ExerciseBuilt _value, $Res Function(ExerciseBuilt) _then)
      : super(_value, (v) => _then(v as ExerciseBuilt));

  @override
  ExerciseBuilt get _value => super._value as ExerciseBuilt;

  @override
  $Res call({
    Object builtExercise = freezed,
  }) {
    return _then(ExerciseBuilt(
      builtExercise == freezed ? _value.builtExercise : builtExercise as Template,
    ));
  }
}

class _$ExerciseBuilt implements ExerciseBuilt {
  const _$ExerciseBuilt(this.builtExercise) : assert(builtExercise != null);

  @override
  final Template builtExercise;

  @override
  String toString() {
    return 'ExerciseState.exerciseBuilt(builtExercise: $builtExercise)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExerciseBuilt &&
            (identical(other.builtExercise, builtExercise) ||
                const DeepCollectionEquality().equals(other.builtExercise, builtExercise)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(builtExercise);

  @override
  $ExerciseBuiltCopyWith<ExerciseBuilt> get copyWith => _$ExerciseBuiltCopyWithImpl<ExerciseBuilt>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result exerciseBuilt(Template builtExercise),
    @required Result exerciseError(TemplateFailure error),
    @required Result exerciseFinished(),
    @required Result allExercisesCompleted(),
  }) {
    assert(initial != null);
    assert(exerciseBuilt != null);
    assert(exerciseError != null);
    assert(exerciseFinished != null);
    assert(allExercisesCompleted != null);
    return exerciseBuilt(builtExercise);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result exerciseBuilt(Template builtExercise),
    Result exerciseError(TemplateFailure error),
    Result exerciseFinished(),
    Result allExercisesCompleted(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (exerciseBuilt != null) {
      return exerciseBuilt(builtExercise);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result exerciseBuilt(ExerciseBuilt value),
    @required Result exerciseError(ExerciseError value),
    @required Result exerciseFinished(ExerciseFinished value),
    @required Result allExercisesCompleted(AllExercisesCompleted value),
  }) {
    assert(initial != null);
    assert(exerciseBuilt != null);
    assert(exerciseError != null);
    assert(exerciseFinished != null);
    assert(allExercisesCompleted != null);
    return exerciseBuilt(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result exerciseBuilt(ExerciseBuilt value),
    Result exerciseError(ExerciseError value),
    Result exerciseFinished(ExerciseFinished value),
    Result allExercisesCompleted(AllExercisesCompleted value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (exerciseBuilt != null) {
      return exerciseBuilt(this);
    }
    return orElse();
  }
}

abstract class ExerciseBuilt implements ExerciseState {
  const factory ExerciseBuilt(Template builtExercise) = _$ExerciseBuilt;

  Template get builtExercise;
  $ExerciseBuiltCopyWith<ExerciseBuilt> get copyWith;
}

abstract class $ExerciseErrorCopyWith<$Res> {
  factory $ExerciseErrorCopyWith(ExerciseError value, $Res Function(ExerciseError) then) =
      _$ExerciseErrorCopyWithImpl<$Res>;
  $Res call({TemplateFailure error});

  $TemplateFailureCopyWith<$Res> get error;
}

class _$ExerciseErrorCopyWithImpl<$Res> extends _$ExerciseStateCopyWithImpl<$Res>
    implements $ExerciseErrorCopyWith<$Res> {
  _$ExerciseErrorCopyWithImpl(ExerciseError _value, $Res Function(ExerciseError) _then)
      : super(_value, (v) => _then(v as ExerciseError));

  @override
  ExerciseError get _value => super._value as ExerciseError;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(ExerciseError(
      error == freezed ? _value.error : error as TemplateFailure,
    ));
  }

  @override
  $TemplateFailureCopyWith<$Res> get error {
    if (_value.error == null) {
      return null;
    }
    return $TemplateFailureCopyWith<$Res>(_value.error, (value) {
      return _then(_value.copyWith(error: value));
    });
  }
}

class _$ExerciseError implements ExerciseError {
  const _$ExerciseError(this.error) : assert(error != null);

  @override
  final TemplateFailure error;

  @override
  String toString() {
    return 'ExerciseState.exerciseError(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExerciseError &&
            (identical(other.error, error) || const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  $ExerciseErrorCopyWith<ExerciseError> get copyWith => _$ExerciseErrorCopyWithImpl<ExerciseError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result exerciseBuilt(Template builtExercise),
    @required Result exerciseError(TemplateFailure error),
    @required Result exerciseFinished(),
    @required Result allExercisesCompleted(),
  }) {
    assert(initial != null);
    assert(exerciseBuilt != null);
    assert(exerciseError != null);
    assert(exerciseFinished != null);
    assert(allExercisesCompleted != null);
    return exerciseError(error);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result exerciseBuilt(Template builtExercise),
    Result exerciseError(TemplateFailure error),
    Result exerciseFinished(),
    Result allExercisesCompleted(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (exerciseError != null) {
      return exerciseError(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result exerciseBuilt(ExerciseBuilt value),
    @required Result exerciseError(ExerciseError value),
    @required Result exerciseFinished(ExerciseFinished value),
    @required Result allExercisesCompleted(AllExercisesCompleted value),
  }) {
    assert(initial != null);
    assert(exerciseBuilt != null);
    assert(exerciseError != null);
    assert(exerciseFinished != null);
    assert(allExercisesCompleted != null);
    return exerciseError(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result exerciseBuilt(ExerciseBuilt value),
    Result exerciseError(ExerciseError value),
    Result exerciseFinished(ExerciseFinished value),
    Result allExercisesCompleted(AllExercisesCompleted value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (exerciseError != null) {
      return exerciseError(this);
    }
    return orElse();
  }
}

abstract class ExerciseError implements ExerciseState {
  const factory ExerciseError(TemplateFailure error) = _$ExerciseError;

  TemplateFailure get error;
  $ExerciseErrorCopyWith<ExerciseError> get copyWith;
}

abstract class $ExerciseFinishedCopyWith<$Res> {
  factory $ExerciseFinishedCopyWith(ExerciseFinished value, $Res Function(ExerciseFinished) then) =
      _$ExerciseFinishedCopyWithImpl<$Res>;
}

class _$ExerciseFinishedCopyWithImpl<$Res> extends _$ExerciseStateCopyWithImpl<$Res>
    implements $ExerciseFinishedCopyWith<$Res> {
  _$ExerciseFinishedCopyWithImpl(ExerciseFinished _value, $Res Function(ExerciseFinished) _then)
      : super(_value, (v) => _then(v as ExerciseFinished));

  @override
  ExerciseFinished get _value => super._value as ExerciseFinished;
}

class _$ExerciseFinished implements ExerciseFinished {
  const _$ExerciseFinished();

  @override
  String toString() {
    return 'ExerciseState.exerciseFinished()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ExerciseFinished);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result exerciseBuilt(Template builtExercise),
    @required Result exerciseError(TemplateFailure error),
    @required Result exerciseFinished(),
    @required Result allExercisesCompleted(),
  }) {
    assert(initial != null);
    assert(exerciseBuilt != null);
    assert(exerciseError != null);
    assert(exerciseFinished != null);
    assert(allExercisesCompleted != null);
    return exerciseFinished();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result exerciseBuilt(Template builtExercise),
    Result exerciseError(TemplateFailure error),
    Result exerciseFinished(),
    Result allExercisesCompleted(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (exerciseFinished != null) {
      return exerciseFinished();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result exerciseBuilt(ExerciseBuilt value),
    @required Result exerciseError(ExerciseError value),
    @required Result exerciseFinished(ExerciseFinished value),
    @required Result allExercisesCompleted(AllExercisesCompleted value),
  }) {
    assert(initial != null);
    assert(exerciseBuilt != null);
    assert(exerciseError != null);
    assert(exerciseFinished != null);
    assert(allExercisesCompleted != null);
    return exerciseFinished(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result exerciseBuilt(ExerciseBuilt value),
    Result exerciseError(ExerciseError value),
    Result exerciseFinished(ExerciseFinished value),
    Result allExercisesCompleted(AllExercisesCompleted value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (exerciseFinished != null) {
      return exerciseFinished(this);
    }
    return orElse();
  }
}

abstract class ExerciseFinished implements ExerciseState {
  const factory ExerciseFinished() = _$ExerciseFinished;
}

abstract class $AllExercisesCompletedCopyWith<$Res> {
  factory $AllExercisesCompletedCopyWith(AllExercisesCompleted value, $Res Function(AllExercisesCompleted) then) =
      _$AllExercisesCompletedCopyWithImpl<$Res>;
}

class _$AllExercisesCompletedCopyWithImpl<$Res> extends _$ExerciseStateCopyWithImpl<$Res>
    implements $AllExercisesCompletedCopyWith<$Res> {
  _$AllExercisesCompletedCopyWithImpl(AllExercisesCompleted _value, $Res Function(AllExercisesCompleted) _then)
      : super(_value, (v) => _then(v as AllExercisesCompleted));

  @override
  AllExercisesCompleted get _value => super._value as AllExercisesCompleted;
}

class _$AllExercisesCompleted implements AllExercisesCompleted {
  const _$AllExercisesCompleted();

  @override
  String toString() {
    return 'ExerciseState.allExercisesCompleted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is AllExercisesCompleted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result exerciseBuilt(Template builtExercise),
    @required Result exerciseError(TemplateFailure error),
    @required Result exerciseFinished(),
    @required Result allExercisesCompleted(),
  }) {
    assert(initial != null);
    assert(exerciseBuilt != null);
    assert(exerciseError != null);
    assert(exerciseFinished != null);
    assert(allExercisesCompleted != null);
    return allExercisesCompleted();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result exerciseBuilt(Template builtExercise),
    Result exerciseError(TemplateFailure error),
    Result exerciseFinished(),
    Result allExercisesCompleted(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (allExercisesCompleted != null) {
      return allExercisesCompleted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result exerciseBuilt(ExerciseBuilt value),
    @required Result exerciseError(ExerciseError value),
    @required Result exerciseFinished(ExerciseFinished value),
    @required Result allExercisesCompleted(AllExercisesCompleted value),
  }) {
    assert(initial != null);
    assert(exerciseBuilt != null);
    assert(exerciseError != null);
    assert(exerciseFinished != null);
    assert(allExercisesCompleted != null);
    return allExercisesCompleted(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result exerciseBuilt(ExerciseBuilt value),
    Result exerciseError(ExerciseError value),
    Result exerciseFinished(ExerciseFinished value),
    Result allExercisesCompleted(AllExercisesCompleted value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (allExercisesCompleted != null) {
      return allExercisesCompleted(this);
    }
    return orElse();
  }
}

abstract class AllExercisesCompleted implements ExerciseState {
  const factory AllExercisesCompleted() = _$AllExercisesCompleted;
}
