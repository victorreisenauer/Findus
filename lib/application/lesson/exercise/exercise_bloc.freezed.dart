// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'exercise_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ExerciseEventTearOff {
  const _$ExerciseEventTearOff();

  BuildExercise buildExercise() {
    return const BuildExercise();
  }
}

// ignore: unused_element
const $ExerciseEvent = _$ExerciseEventTearOff();

mixin _$ExerciseEvent {}

abstract class $ExerciseEventCopyWith<$Res> {
  factory $ExerciseEventCopyWith(
          ExerciseEvent value, $Res Function(ExerciseEvent) then) =
      _$ExerciseEventCopyWithImpl<$Res>;
}

class _$ExerciseEventCopyWithImpl<$Res>
    implements $ExerciseEventCopyWith<$Res> {
  _$ExerciseEventCopyWithImpl(this._value, this._then);

  final ExerciseEvent _value;
  // ignore: unused_field
  final $Res Function(ExerciseEvent) _then;
}

abstract class $BuildExerciseCopyWith<$Res> {
  factory $BuildExerciseCopyWith(
          BuildExercise value, $Res Function(BuildExercise) then) =
      _$BuildExerciseCopyWithImpl<$Res>;
}

class _$BuildExerciseCopyWithImpl<$Res>
    extends _$ExerciseEventCopyWithImpl<$Res>
    implements $BuildExerciseCopyWith<$Res> {
  _$BuildExerciseCopyWithImpl(
      BuildExercise _value, $Res Function(BuildExercise) _then)
      : super(_value, (v) => _then(v as BuildExercise));

  @override
  BuildExercise get _value => super._value as BuildExercise;
}

class _$BuildExercise implements BuildExercise {
  const _$BuildExercise();

  @override
  String toString() {
    return 'ExerciseEvent.buildExercise()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is BuildExercise);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class BuildExercise implements ExerciseEvent {
  const factory BuildExercise() = _$BuildExercise;
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

  ExerciseCompleted exerciseCompleted() {
    return const ExerciseCompleted();
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
    @required Result exerciseCompleted(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result exerciseBuilt(Template builtExercise),
    Result exerciseError(TemplateFailure error),
    Result exerciseCompleted(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result exerciseBuilt(ExerciseBuilt value),
    @required Result exerciseError(ExerciseError value),
    @required Result exerciseCompleted(ExerciseCompleted value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result exerciseBuilt(ExerciseBuilt value),
    Result exerciseError(ExerciseError value),
    Result exerciseCompleted(ExerciseCompleted value),
    @required Result orElse(),
  });
}

abstract class $ExerciseStateCopyWith<$Res> {
  factory $ExerciseStateCopyWith(
          ExerciseState value, $Res Function(ExerciseState) then) =
      _$ExerciseStateCopyWithImpl<$Res>;
}

class _$ExerciseStateCopyWithImpl<$Res>
    implements $ExerciseStateCopyWith<$Res> {
  _$ExerciseStateCopyWithImpl(this._value, this._then);

  final ExerciseState _value;
  // ignore: unused_field
  final $Res Function(ExerciseState) _then;
}

abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

class _$InitialCopyWithImpl<$Res> extends _$ExerciseStateCopyWithImpl<$Res>
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
    @required Result exerciseCompleted(),
  }) {
    assert(initial != null);
    assert(exerciseBuilt != null);
    assert(exerciseError != null);
    assert(exerciseCompleted != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result exerciseBuilt(Template builtExercise),
    Result exerciseError(TemplateFailure error),
    Result exerciseCompleted(),
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
    @required Result exerciseCompleted(ExerciseCompleted value),
  }) {
    assert(initial != null);
    assert(exerciseBuilt != null);
    assert(exerciseError != null);
    assert(exerciseCompleted != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result exerciseBuilt(ExerciseBuilt value),
    Result exerciseError(ExerciseError value),
    Result exerciseCompleted(ExerciseCompleted value),
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
  factory $ExerciseBuiltCopyWith(
          ExerciseBuilt value, $Res Function(ExerciseBuilt) then) =
      _$ExerciseBuiltCopyWithImpl<$Res>;
  $Res call({Template builtExercise});
}

class _$ExerciseBuiltCopyWithImpl<$Res>
    extends _$ExerciseStateCopyWithImpl<$Res>
    implements $ExerciseBuiltCopyWith<$Res> {
  _$ExerciseBuiltCopyWithImpl(
      ExerciseBuilt _value, $Res Function(ExerciseBuilt) _then)
      : super(_value, (v) => _then(v as ExerciseBuilt));

  @override
  ExerciseBuilt get _value => super._value as ExerciseBuilt;

  @override
  $Res call({
    Object builtExercise = freezed,
  }) {
    return _then(ExerciseBuilt(
      builtExercise == freezed
          ? _value.builtExercise
          : builtExercise as Template,
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
                const DeepCollectionEquality()
                    .equals(other.builtExercise, builtExercise)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(builtExercise);

  @override
  $ExerciseBuiltCopyWith<ExerciseBuilt> get copyWith =>
      _$ExerciseBuiltCopyWithImpl<ExerciseBuilt>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result exerciseBuilt(Template builtExercise),
    @required Result exerciseError(TemplateFailure error),
    @required Result exerciseCompleted(),
  }) {
    assert(initial != null);
    assert(exerciseBuilt != null);
    assert(exerciseError != null);
    assert(exerciseCompleted != null);
    return exerciseBuilt(builtExercise);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result exerciseBuilt(Template builtExercise),
    Result exerciseError(TemplateFailure error),
    Result exerciseCompleted(),
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
    @required Result exerciseCompleted(ExerciseCompleted value),
  }) {
    assert(initial != null);
    assert(exerciseBuilt != null);
    assert(exerciseError != null);
    assert(exerciseCompleted != null);
    return exerciseBuilt(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result exerciseBuilt(ExerciseBuilt value),
    Result exerciseError(ExerciseError value),
    Result exerciseCompleted(ExerciseCompleted value),
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
  factory $ExerciseErrorCopyWith(
          ExerciseError value, $Res Function(ExerciseError) then) =
      _$ExerciseErrorCopyWithImpl<$Res>;
  $Res call({TemplateFailure error});

  $TemplateFailureCopyWith<$Res> get error;
}

class _$ExerciseErrorCopyWithImpl<$Res>
    extends _$ExerciseStateCopyWithImpl<$Res>
    implements $ExerciseErrorCopyWith<$Res> {
  _$ExerciseErrorCopyWithImpl(
      ExerciseError _value, $Res Function(ExerciseError) _then)
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
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  $ExerciseErrorCopyWith<ExerciseError> get copyWith =>
      _$ExerciseErrorCopyWithImpl<ExerciseError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result exerciseBuilt(Template builtExercise),
    @required Result exerciseError(TemplateFailure error),
    @required Result exerciseCompleted(),
  }) {
    assert(initial != null);
    assert(exerciseBuilt != null);
    assert(exerciseError != null);
    assert(exerciseCompleted != null);
    return exerciseError(error);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result exerciseBuilt(Template builtExercise),
    Result exerciseError(TemplateFailure error),
    Result exerciseCompleted(),
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
    @required Result exerciseCompleted(ExerciseCompleted value),
  }) {
    assert(initial != null);
    assert(exerciseBuilt != null);
    assert(exerciseError != null);
    assert(exerciseCompleted != null);
    return exerciseError(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result exerciseBuilt(ExerciseBuilt value),
    Result exerciseError(ExerciseError value),
    Result exerciseCompleted(ExerciseCompleted value),
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

abstract class $ExerciseCompletedCopyWith<$Res> {
  factory $ExerciseCompletedCopyWith(
          ExerciseCompleted value, $Res Function(ExerciseCompleted) then) =
      _$ExerciseCompletedCopyWithImpl<$Res>;
}

class _$ExerciseCompletedCopyWithImpl<$Res>
    extends _$ExerciseStateCopyWithImpl<$Res>
    implements $ExerciseCompletedCopyWith<$Res> {
  _$ExerciseCompletedCopyWithImpl(
      ExerciseCompleted _value, $Res Function(ExerciseCompleted) _then)
      : super(_value, (v) => _then(v as ExerciseCompleted));

  @override
  ExerciseCompleted get _value => super._value as ExerciseCompleted;
}

class _$ExerciseCompleted implements ExerciseCompleted {
  const _$ExerciseCompleted();

  @override
  String toString() {
    return 'ExerciseState.exerciseCompleted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ExerciseCompleted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result exerciseBuilt(Template builtExercise),
    @required Result exerciseError(TemplateFailure error),
    @required Result exerciseCompleted(),
  }) {
    assert(initial != null);
    assert(exerciseBuilt != null);
    assert(exerciseError != null);
    assert(exerciseCompleted != null);
    return exerciseCompleted();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result exerciseBuilt(Template builtExercise),
    Result exerciseError(TemplateFailure error),
    Result exerciseCompleted(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (exerciseCompleted != null) {
      return exerciseCompleted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result exerciseBuilt(ExerciseBuilt value),
    @required Result exerciseError(ExerciseError value),
    @required Result exerciseCompleted(ExerciseCompleted value),
  }) {
    assert(initial != null);
    assert(exerciseBuilt != null);
    assert(exerciseError != null);
    assert(exerciseCompleted != null);
    return exerciseCompleted(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result exerciseBuilt(ExerciseBuilt value),
    Result exerciseError(ExerciseError value),
    Result exerciseCompleted(ExerciseCompleted value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (exerciseCompleted != null) {
      return exerciseCompleted(this);
    }
    return orElse();
  }
}

abstract class ExerciseCompleted implements ExerciseState {
  const factory ExerciseCompleted() = _$ExerciseCompleted;
}
