// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'progress_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ProgressEventTearOff {
  const _$ProgressEventTearOff();

  UpdateProgress updateProgress(bool correct) {
    return UpdateProgress(
      correct,
    );
  }

  StartProgress startProgress(int lessonLength) {
    return StartProgress(
      lessonLength,
    );
  }
}

// ignore: unused_element
const $ProgressEvent = _$ProgressEventTearOff();

mixin _$ProgressEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result updateProgress(bool correct),
    @required Result startProgress(int lessonLength),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result updateProgress(bool correct),
    Result startProgress(int lessonLength),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result updateProgress(UpdateProgress value),
    @required Result startProgress(StartProgress value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result updateProgress(UpdateProgress value),
    Result startProgress(StartProgress value),
    @required Result orElse(),
  });
}

abstract class $ProgressEventCopyWith<$Res> {
  factory $ProgressEventCopyWith(
          ProgressEvent value, $Res Function(ProgressEvent) then) =
      _$ProgressEventCopyWithImpl<$Res>;
}

class _$ProgressEventCopyWithImpl<$Res>
    implements $ProgressEventCopyWith<$Res> {
  _$ProgressEventCopyWithImpl(this._value, this._then);

  final ProgressEvent _value;
  // ignore: unused_field
  final $Res Function(ProgressEvent) _then;
}

abstract class $UpdateProgressCopyWith<$Res> {
  factory $UpdateProgressCopyWith(
          UpdateProgress value, $Res Function(UpdateProgress) then) =
      _$UpdateProgressCopyWithImpl<$Res>;
  $Res call({bool correct});
}

class _$UpdateProgressCopyWithImpl<$Res>
    extends _$ProgressEventCopyWithImpl<$Res>
    implements $UpdateProgressCopyWith<$Res> {
  _$UpdateProgressCopyWithImpl(
      UpdateProgress _value, $Res Function(UpdateProgress) _then)
      : super(_value, (v) => _then(v as UpdateProgress));

  @override
  UpdateProgress get _value => super._value as UpdateProgress;

  @override
  $Res call({
    Object correct = freezed,
  }) {
    return _then(UpdateProgress(
      correct == freezed ? _value.correct : correct as bool,
    ));
  }
}

class _$UpdateProgress implements UpdateProgress {
  const _$UpdateProgress(this.correct) : assert(correct != null);

  @override
  final bool correct;

  @override
  String toString() {
    return 'ProgressEvent.updateProgress(correct: $correct)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateProgress &&
            (identical(other.correct, correct) ||
                const DeepCollectionEquality().equals(other.correct, correct)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(correct);

  @override
  $UpdateProgressCopyWith<UpdateProgress> get copyWith =>
      _$UpdateProgressCopyWithImpl<UpdateProgress>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result updateProgress(bool correct),
    @required Result startProgress(int lessonLength),
  }) {
    assert(updateProgress != null);
    assert(startProgress != null);
    return updateProgress(correct);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result updateProgress(bool correct),
    Result startProgress(int lessonLength),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (updateProgress != null) {
      return updateProgress(correct);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result updateProgress(UpdateProgress value),
    @required Result startProgress(StartProgress value),
  }) {
    assert(updateProgress != null);
    assert(startProgress != null);
    return updateProgress(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result updateProgress(UpdateProgress value),
    Result startProgress(StartProgress value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (updateProgress != null) {
      return updateProgress(this);
    }
    return orElse();
  }
}

abstract class UpdateProgress implements ProgressEvent {
  const factory UpdateProgress(bool correct) = _$UpdateProgress;

  bool get correct;
  $UpdateProgressCopyWith<UpdateProgress> get copyWith;
}

abstract class $StartProgressCopyWith<$Res> {
  factory $StartProgressCopyWith(
          StartProgress value, $Res Function(StartProgress) then) =
      _$StartProgressCopyWithImpl<$Res>;
  $Res call({int lessonLength});
}

class _$StartProgressCopyWithImpl<$Res>
    extends _$ProgressEventCopyWithImpl<$Res>
    implements $StartProgressCopyWith<$Res> {
  _$StartProgressCopyWithImpl(
      StartProgress _value, $Res Function(StartProgress) _then)
      : super(_value, (v) => _then(v as StartProgress));

  @override
  StartProgress get _value => super._value as StartProgress;

  @override
  $Res call({
    Object lessonLength = freezed,
  }) {
    return _then(StartProgress(
      lessonLength == freezed ? _value.lessonLength : lessonLength as int,
    ));
  }
}

class _$StartProgress implements StartProgress {
  const _$StartProgress(this.lessonLength) : assert(lessonLength != null);

  @override
  final int lessonLength;

  @override
  String toString() {
    return 'ProgressEvent.startProgress(lessonLength: $lessonLength)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is StartProgress &&
            (identical(other.lessonLength, lessonLength) ||
                const DeepCollectionEquality()
                    .equals(other.lessonLength, lessonLength)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(lessonLength);

  @override
  $StartProgressCopyWith<StartProgress> get copyWith =>
      _$StartProgressCopyWithImpl<StartProgress>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result updateProgress(bool correct),
    @required Result startProgress(int lessonLength),
  }) {
    assert(updateProgress != null);
    assert(startProgress != null);
    return startProgress(lessonLength);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result updateProgress(bool correct),
    Result startProgress(int lessonLength),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (startProgress != null) {
      return startProgress(lessonLength);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result updateProgress(UpdateProgress value),
    @required Result startProgress(StartProgress value),
  }) {
    assert(updateProgress != null);
    assert(startProgress != null);
    return startProgress(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result updateProgress(UpdateProgress value),
    Result startProgress(StartProgress value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (startProgress != null) {
      return startProgress(this);
    }
    return orElse();
  }
}

abstract class StartProgress implements ProgressEvent {
  const factory StartProgress(int lessonLength) = _$StartProgress;

  int get lessonLength;
  $StartProgressCopyWith<StartProgress> get copyWith;
}

class _$ProgressStateTearOff {
  const _$ProgressStateTearOff();

  Initial initial() {
    return const Initial();
  }

  ProgressUpdated progressUpdated(double currentProgress) {
    return ProgressUpdated(
      currentProgress,
    );
  }
}

// ignore: unused_element
const $ProgressState = _$ProgressStateTearOff();

mixin _$ProgressState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result progressUpdated(double currentProgress),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result progressUpdated(double currentProgress),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result progressUpdated(ProgressUpdated value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result progressUpdated(ProgressUpdated value),
    @required Result orElse(),
  });
}

abstract class $ProgressStateCopyWith<$Res> {
  factory $ProgressStateCopyWith(
          ProgressState value, $Res Function(ProgressState) then) =
      _$ProgressStateCopyWithImpl<$Res>;
}

class _$ProgressStateCopyWithImpl<$Res>
    implements $ProgressStateCopyWith<$Res> {
  _$ProgressStateCopyWithImpl(this._value, this._then);

  final ProgressState _value;
  // ignore: unused_field
  final $Res Function(ProgressState) _then;
}

abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

class _$InitialCopyWithImpl<$Res> extends _$ProgressStateCopyWithImpl<$Res>
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
    return 'ProgressState.initial()';
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
    @required Result progressUpdated(double currentProgress),
  }) {
    assert(initial != null);
    assert(progressUpdated != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result progressUpdated(double currentProgress),
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
    @required Result progressUpdated(ProgressUpdated value),
  }) {
    assert(initial != null);
    assert(progressUpdated != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result progressUpdated(ProgressUpdated value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements ProgressState {
  const factory Initial() = _$Initial;
}

abstract class $ProgressUpdatedCopyWith<$Res> {
  factory $ProgressUpdatedCopyWith(
          ProgressUpdated value, $Res Function(ProgressUpdated) then) =
      _$ProgressUpdatedCopyWithImpl<$Res>;
  $Res call({double currentProgress});
}

class _$ProgressUpdatedCopyWithImpl<$Res>
    extends _$ProgressStateCopyWithImpl<$Res>
    implements $ProgressUpdatedCopyWith<$Res> {
  _$ProgressUpdatedCopyWithImpl(
      ProgressUpdated _value, $Res Function(ProgressUpdated) _then)
      : super(_value, (v) => _then(v as ProgressUpdated));

  @override
  ProgressUpdated get _value => super._value as ProgressUpdated;

  @override
  $Res call({
    Object currentProgress = freezed,
  }) {
    return _then(ProgressUpdated(
      currentProgress == freezed
          ? _value.currentProgress
          : currentProgress as double,
    ));
  }
}

class _$ProgressUpdated implements ProgressUpdated {
  const _$ProgressUpdated(this.currentProgress)
      : assert(currentProgress != null);

  @override
  final double currentProgress;

  @override
  String toString() {
    return 'ProgressState.progressUpdated(currentProgress: $currentProgress)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ProgressUpdated &&
            (identical(other.currentProgress, currentProgress) ||
                const DeepCollectionEquality()
                    .equals(other.currentProgress, currentProgress)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(currentProgress);

  @override
  $ProgressUpdatedCopyWith<ProgressUpdated> get copyWith =>
      _$ProgressUpdatedCopyWithImpl<ProgressUpdated>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result progressUpdated(double currentProgress),
  }) {
    assert(initial != null);
    assert(progressUpdated != null);
    return progressUpdated(currentProgress);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result progressUpdated(double currentProgress),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (progressUpdated != null) {
      return progressUpdated(currentProgress);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result progressUpdated(ProgressUpdated value),
  }) {
    assert(initial != null);
    assert(progressUpdated != null);
    return progressUpdated(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result progressUpdated(ProgressUpdated value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (progressUpdated != null) {
      return progressUpdated(this);
    }
    return orElse();
  }
}

abstract class ProgressUpdated implements ProgressState {
  const factory ProgressUpdated(double currentProgress) = _$ProgressUpdated;

  double get currentProgress;
  $ProgressUpdatedCopyWith<ProgressUpdated> get copyWith;
}
