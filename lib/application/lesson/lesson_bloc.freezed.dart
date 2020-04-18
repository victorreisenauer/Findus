// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'lesson_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$LessonEventTearOff {
  const _$LessonEventTearOff();

  FetchAllLessons fetchAllLessons() {
    return const FetchAllLessons();
  }

  LessonsReceived lessonsReceived(
      Either<LessonFailure, ObjectList<Lesson>> failureOrLessons) {
    return LessonsReceived(
      failureOrLessons,
    );
  }

  StartLesson startLesson(UniqueId id) {
    return StartLesson(
      id,
    );
  }

  AdvanceLesson advanceLesson() {
    return const AdvanceLesson();
  }

  FinishLesson finishLesson(Object results) {
    return FinishLesson(
      results,
    );
  }

  AbortLesson abortLesson() {
    return const AbortLesson();
  }
}

// ignore: unused_element
const $LessonEvent = _$LessonEventTearOff();

mixin _$LessonEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result fetchAllLessons(),
    @required
        Result lessonsReceived(
            Either<LessonFailure, ObjectList<Lesson>> failureOrLessons),
    @required Result startLesson(UniqueId id),
    @required Result advanceLesson(),
    @required Result finishLesson(Object results),
    @required Result abortLesson(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result fetchAllLessons(),
    Result lessonsReceived(
        Either<LessonFailure, ObjectList<Lesson>> failureOrLessons),
    Result startLesson(UniqueId id),
    Result advanceLesson(),
    Result finishLesson(Object results),
    Result abortLesson(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result fetchAllLessons(FetchAllLessons value),
    @required Result lessonsReceived(LessonsReceived value),
    @required Result startLesson(StartLesson value),
    @required Result advanceLesson(AdvanceLesson value),
    @required Result finishLesson(FinishLesson value),
    @required Result abortLesson(AbortLesson value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result fetchAllLessons(FetchAllLessons value),
    Result lessonsReceived(LessonsReceived value),
    Result startLesson(StartLesson value),
    Result advanceLesson(AdvanceLesson value),
    Result finishLesson(FinishLesson value),
    Result abortLesson(AbortLesson value),
    @required Result orElse(),
  });
}

abstract class $LessonEventCopyWith<$Res> {
  factory $LessonEventCopyWith(
          LessonEvent value, $Res Function(LessonEvent) then) =
      _$LessonEventCopyWithImpl<$Res>;
}

class _$LessonEventCopyWithImpl<$Res> implements $LessonEventCopyWith<$Res> {
  _$LessonEventCopyWithImpl(this._value, this._then);

  final LessonEvent _value;
  // ignore: unused_field
  final $Res Function(LessonEvent) _then;
}

abstract class $FetchAllLessonsCopyWith<$Res> {
  factory $FetchAllLessonsCopyWith(
          FetchAllLessons value, $Res Function(FetchAllLessons) then) =
      _$FetchAllLessonsCopyWithImpl<$Res>;
}

class _$FetchAllLessonsCopyWithImpl<$Res>
    extends _$LessonEventCopyWithImpl<$Res>
    implements $FetchAllLessonsCopyWith<$Res> {
  _$FetchAllLessonsCopyWithImpl(
      FetchAllLessons _value, $Res Function(FetchAllLessons) _then)
      : super(_value, (v) => _then(v as FetchAllLessons));

  @override
  FetchAllLessons get _value => super._value as FetchAllLessons;
}

class _$FetchAllLessons
    with DiagnosticableTreeMixin
    implements FetchAllLessons {
  const _$FetchAllLessons();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LessonEvent.fetchAllLessons()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'LessonEvent.fetchAllLessons'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is FetchAllLessons);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result fetchAllLessons(),
    @required
        Result lessonsReceived(
            Either<LessonFailure, ObjectList<Lesson>> failureOrLessons),
    @required Result startLesson(UniqueId id),
    @required Result advanceLesson(),
    @required Result finishLesson(Object results),
    @required Result abortLesson(),
  }) {
    assert(fetchAllLessons != null);
    assert(lessonsReceived != null);
    assert(startLesson != null);
    assert(advanceLesson != null);
    assert(finishLesson != null);
    assert(abortLesson != null);
    return fetchAllLessons();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result fetchAllLessons(),
    Result lessonsReceived(
        Either<LessonFailure, ObjectList<Lesson>> failureOrLessons),
    Result startLesson(UniqueId id),
    Result advanceLesson(),
    Result finishLesson(Object results),
    Result abortLesson(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fetchAllLessons != null) {
      return fetchAllLessons();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result fetchAllLessons(FetchAllLessons value),
    @required Result lessonsReceived(LessonsReceived value),
    @required Result startLesson(StartLesson value),
    @required Result advanceLesson(AdvanceLesson value),
    @required Result finishLesson(FinishLesson value),
    @required Result abortLesson(AbortLesson value),
  }) {
    assert(fetchAllLessons != null);
    assert(lessonsReceived != null);
    assert(startLesson != null);
    assert(advanceLesson != null);
    assert(finishLesson != null);
    assert(abortLesson != null);
    return fetchAllLessons(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result fetchAllLessons(FetchAllLessons value),
    Result lessonsReceived(LessonsReceived value),
    Result startLesson(StartLesson value),
    Result advanceLesson(AdvanceLesson value),
    Result finishLesson(FinishLesson value),
    Result abortLesson(AbortLesson value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fetchAllLessons != null) {
      return fetchAllLessons(this);
    }
    return orElse();
  }
}

abstract class FetchAllLessons implements LessonEvent {
  const factory FetchAllLessons() = _$FetchAllLessons;
}

abstract class $LessonsReceivedCopyWith<$Res> {
  factory $LessonsReceivedCopyWith(
          LessonsReceived value, $Res Function(LessonsReceived) then) =
      _$LessonsReceivedCopyWithImpl<$Res>;
  $Res call({Either<LessonFailure, ObjectList<Lesson>> failureOrLessons});
}

class _$LessonsReceivedCopyWithImpl<$Res>
    extends _$LessonEventCopyWithImpl<$Res>
    implements $LessonsReceivedCopyWith<$Res> {
  _$LessonsReceivedCopyWithImpl(
      LessonsReceived _value, $Res Function(LessonsReceived) _then)
      : super(_value, (v) => _then(v as LessonsReceived));

  @override
  LessonsReceived get _value => super._value as LessonsReceived;

  @override
  $Res call({
    Object failureOrLessons = freezed,
  }) {
    return _then(LessonsReceived(
      failureOrLessons == freezed
          ? _value.failureOrLessons
          : failureOrLessons as Either<LessonFailure, ObjectList<Lesson>>,
    ));
  }
}

class _$LessonsReceived
    with DiagnosticableTreeMixin
    implements LessonsReceived {
  const _$LessonsReceived(this.failureOrLessons)
      : assert(failureOrLessons != null);

  @override
  final Either<LessonFailure, ObjectList<Lesson>> failureOrLessons;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LessonEvent.lessonsReceived(failureOrLessons: $failureOrLessons)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LessonEvent.lessonsReceived'))
      ..add(DiagnosticsProperty('failureOrLessons', failureOrLessons));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LessonsReceived &&
            (identical(other.failureOrLessons, failureOrLessons) ||
                const DeepCollectionEquality()
                    .equals(other.failureOrLessons, failureOrLessons)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failureOrLessons);

  @override
  $LessonsReceivedCopyWith<LessonsReceived> get copyWith =>
      _$LessonsReceivedCopyWithImpl<LessonsReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result fetchAllLessons(),
    @required
        Result lessonsReceived(
            Either<LessonFailure, ObjectList<Lesson>> failureOrLessons),
    @required Result startLesson(UniqueId id),
    @required Result advanceLesson(),
    @required Result finishLesson(Object results),
    @required Result abortLesson(),
  }) {
    assert(fetchAllLessons != null);
    assert(lessonsReceived != null);
    assert(startLesson != null);
    assert(advanceLesson != null);
    assert(finishLesson != null);
    assert(abortLesson != null);
    return lessonsReceived(failureOrLessons);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result fetchAllLessons(),
    Result lessonsReceived(
        Either<LessonFailure, ObjectList<Lesson>> failureOrLessons),
    Result startLesson(UniqueId id),
    Result advanceLesson(),
    Result finishLesson(Object results),
    Result abortLesson(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (lessonsReceived != null) {
      return lessonsReceived(failureOrLessons);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result fetchAllLessons(FetchAllLessons value),
    @required Result lessonsReceived(LessonsReceived value),
    @required Result startLesson(StartLesson value),
    @required Result advanceLesson(AdvanceLesson value),
    @required Result finishLesson(FinishLesson value),
    @required Result abortLesson(AbortLesson value),
  }) {
    assert(fetchAllLessons != null);
    assert(lessonsReceived != null);
    assert(startLesson != null);
    assert(advanceLesson != null);
    assert(finishLesson != null);
    assert(abortLesson != null);
    return lessonsReceived(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result fetchAllLessons(FetchAllLessons value),
    Result lessonsReceived(LessonsReceived value),
    Result startLesson(StartLesson value),
    Result advanceLesson(AdvanceLesson value),
    Result finishLesson(FinishLesson value),
    Result abortLesson(AbortLesson value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (lessonsReceived != null) {
      return lessonsReceived(this);
    }
    return orElse();
  }
}

abstract class LessonsReceived implements LessonEvent {
  const factory LessonsReceived(
          Either<LessonFailure, ObjectList<Lesson>> failureOrLessons) =
      _$LessonsReceived;

  Either<LessonFailure, ObjectList<Lesson>> get failureOrLessons;
  $LessonsReceivedCopyWith<LessonsReceived> get copyWith;
}

abstract class $StartLessonCopyWith<$Res> {
  factory $StartLessonCopyWith(
          StartLesson value, $Res Function(StartLesson) then) =
      _$StartLessonCopyWithImpl<$Res>;
  $Res call({UniqueId id});
}

class _$StartLessonCopyWithImpl<$Res> extends _$LessonEventCopyWithImpl<$Res>
    implements $StartLessonCopyWith<$Res> {
  _$StartLessonCopyWithImpl(
      StartLesson _value, $Res Function(StartLesson) _then)
      : super(_value, (v) => _then(v as StartLesson));

  @override
  StartLesson get _value => super._value as StartLesson;

  @override
  $Res call({
    Object id = freezed,
  }) {
    return _then(StartLesson(
      id == freezed ? _value.id : id as UniqueId,
    ));
  }
}

class _$StartLesson with DiagnosticableTreeMixin implements StartLesson {
  const _$StartLesson(this.id) : assert(id != null);

  @override
  final UniqueId id;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LessonEvent.startLesson(id: $id)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LessonEvent.startLesson'))
      ..add(DiagnosticsProperty('id', id));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is StartLesson &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @override
  $StartLessonCopyWith<StartLesson> get copyWith =>
      _$StartLessonCopyWithImpl<StartLesson>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result fetchAllLessons(),
    @required
        Result lessonsReceived(
            Either<LessonFailure, ObjectList<Lesson>> failureOrLessons),
    @required Result startLesson(UniqueId id),
    @required Result advanceLesson(),
    @required Result finishLesson(Object results),
    @required Result abortLesson(),
  }) {
    assert(fetchAllLessons != null);
    assert(lessonsReceived != null);
    assert(startLesson != null);
    assert(advanceLesson != null);
    assert(finishLesson != null);
    assert(abortLesson != null);
    return startLesson(id);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result fetchAllLessons(),
    Result lessonsReceived(
        Either<LessonFailure, ObjectList<Lesson>> failureOrLessons),
    Result startLesson(UniqueId id),
    Result advanceLesson(),
    Result finishLesson(Object results),
    Result abortLesson(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (startLesson != null) {
      return startLesson(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result fetchAllLessons(FetchAllLessons value),
    @required Result lessonsReceived(LessonsReceived value),
    @required Result startLesson(StartLesson value),
    @required Result advanceLesson(AdvanceLesson value),
    @required Result finishLesson(FinishLesson value),
    @required Result abortLesson(AbortLesson value),
  }) {
    assert(fetchAllLessons != null);
    assert(lessonsReceived != null);
    assert(startLesson != null);
    assert(advanceLesson != null);
    assert(finishLesson != null);
    assert(abortLesson != null);
    return startLesson(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result fetchAllLessons(FetchAllLessons value),
    Result lessonsReceived(LessonsReceived value),
    Result startLesson(StartLesson value),
    Result advanceLesson(AdvanceLesson value),
    Result finishLesson(FinishLesson value),
    Result abortLesson(AbortLesson value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (startLesson != null) {
      return startLesson(this);
    }
    return orElse();
  }
}

abstract class StartLesson implements LessonEvent {
  const factory StartLesson(UniqueId id) = _$StartLesson;

  UniqueId get id;
  $StartLessonCopyWith<StartLesson> get copyWith;
}

abstract class $AdvanceLessonCopyWith<$Res> {
  factory $AdvanceLessonCopyWith(
          AdvanceLesson value, $Res Function(AdvanceLesson) then) =
      _$AdvanceLessonCopyWithImpl<$Res>;
}

class _$AdvanceLessonCopyWithImpl<$Res> extends _$LessonEventCopyWithImpl<$Res>
    implements $AdvanceLessonCopyWith<$Res> {
  _$AdvanceLessonCopyWithImpl(
      AdvanceLesson _value, $Res Function(AdvanceLesson) _then)
      : super(_value, (v) => _then(v as AdvanceLesson));

  @override
  AdvanceLesson get _value => super._value as AdvanceLesson;
}

class _$AdvanceLesson with DiagnosticableTreeMixin implements AdvanceLesson {
  const _$AdvanceLesson();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LessonEvent.advanceLesson()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'LessonEvent.advanceLesson'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is AdvanceLesson);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result fetchAllLessons(),
    @required
        Result lessonsReceived(
            Either<LessonFailure, ObjectList<Lesson>> failureOrLessons),
    @required Result startLesson(UniqueId id),
    @required Result advanceLesson(),
    @required Result finishLesson(Object results),
    @required Result abortLesson(),
  }) {
    assert(fetchAllLessons != null);
    assert(lessonsReceived != null);
    assert(startLesson != null);
    assert(advanceLesson != null);
    assert(finishLesson != null);
    assert(abortLesson != null);
    return advanceLesson();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result fetchAllLessons(),
    Result lessonsReceived(
        Either<LessonFailure, ObjectList<Lesson>> failureOrLessons),
    Result startLesson(UniqueId id),
    Result advanceLesson(),
    Result finishLesson(Object results),
    Result abortLesson(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (advanceLesson != null) {
      return advanceLesson();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result fetchAllLessons(FetchAllLessons value),
    @required Result lessonsReceived(LessonsReceived value),
    @required Result startLesson(StartLesson value),
    @required Result advanceLesson(AdvanceLesson value),
    @required Result finishLesson(FinishLesson value),
    @required Result abortLesson(AbortLesson value),
  }) {
    assert(fetchAllLessons != null);
    assert(lessonsReceived != null);
    assert(startLesson != null);
    assert(advanceLesson != null);
    assert(finishLesson != null);
    assert(abortLesson != null);
    return advanceLesson(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result fetchAllLessons(FetchAllLessons value),
    Result lessonsReceived(LessonsReceived value),
    Result startLesson(StartLesson value),
    Result advanceLesson(AdvanceLesson value),
    Result finishLesson(FinishLesson value),
    Result abortLesson(AbortLesson value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (advanceLesson != null) {
      return advanceLesson(this);
    }
    return orElse();
  }
}

abstract class AdvanceLesson implements LessonEvent {
  const factory AdvanceLesson() = _$AdvanceLesson;
}

abstract class $FinishLessonCopyWith<$Res> {
  factory $FinishLessonCopyWith(
          FinishLesson value, $Res Function(FinishLesson) then) =
      _$FinishLessonCopyWithImpl<$Res>;
  $Res call({Object results});
}

class _$FinishLessonCopyWithImpl<$Res> extends _$LessonEventCopyWithImpl<$Res>
    implements $FinishLessonCopyWith<$Res> {
  _$FinishLessonCopyWithImpl(
      FinishLesson _value, $Res Function(FinishLesson) _then)
      : super(_value, (v) => _then(v as FinishLesson));

  @override
  FinishLesson get _value => super._value as FinishLesson;

  @override
  $Res call({
    Object results = freezed,
  }) {
    return _then(FinishLesson(
      results == freezed ? _value.results : results,
    ));
  }
}

class _$FinishLesson with DiagnosticableTreeMixin implements FinishLesson {
  const _$FinishLesson(this.results) : assert(results != null);

  @override
  final Object results;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LessonEvent.finishLesson(results: $results)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LessonEvent.finishLesson'))
      ..add(DiagnosticsProperty('results', results));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FinishLesson &&
            (identical(other.results, results) ||
                const DeepCollectionEquality().equals(other.results, results)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(results);

  @override
  $FinishLessonCopyWith<FinishLesson> get copyWith =>
      _$FinishLessonCopyWithImpl<FinishLesson>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result fetchAllLessons(),
    @required
        Result lessonsReceived(
            Either<LessonFailure, ObjectList<Lesson>> failureOrLessons),
    @required Result startLesson(UniqueId id),
    @required Result advanceLesson(),
    @required Result finishLesson(Object results),
    @required Result abortLesson(),
  }) {
    assert(fetchAllLessons != null);
    assert(lessonsReceived != null);
    assert(startLesson != null);
    assert(advanceLesson != null);
    assert(finishLesson != null);
    assert(abortLesson != null);
    return finishLesson(results);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result fetchAllLessons(),
    Result lessonsReceived(
        Either<LessonFailure, ObjectList<Lesson>> failureOrLessons),
    Result startLesson(UniqueId id),
    Result advanceLesson(),
    Result finishLesson(Object results),
    Result abortLesson(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (finishLesson != null) {
      return finishLesson(results);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result fetchAllLessons(FetchAllLessons value),
    @required Result lessonsReceived(LessonsReceived value),
    @required Result startLesson(StartLesson value),
    @required Result advanceLesson(AdvanceLesson value),
    @required Result finishLesson(FinishLesson value),
    @required Result abortLesson(AbortLesson value),
  }) {
    assert(fetchAllLessons != null);
    assert(lessonsReceived != null);
    assert(startLesson != null);
    assert(advanceLesson != null);
    assert(finishLesson != null);
    assert(abortLesson != null);
    return finishLesson(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result fetchAllLessons(FetchAllLessons value),
    Result lessonsReceived(LessonsReceived value),
    Result startLesson(StartLesson value),
    Result advanceLesson(AdvanceLesson value),
    Result finishLesson(FinishLesson value),
    Result abortLesson(AbortLesson value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (finishLesson != null) {
      return finishLesson(this);
    }
    return orElse();
  }
}

abstract class FinishLesson implements LessonEvent {
  const factory FinishLesson(Object results) = _$FinishLesson;

  Object get results;
  $FinishLessonCopyWith<FinishLesson> get copyWith;
}

abstract class $AbortLessonCopyWith<$Res> {
  factory $AbortLessonCopyWith(
          AbortLesson value, $Res Function(AbortLesson) then) =
      _$AbortLessonCopyWithImpl<$Res>;
}

class _$AbortLessonCopyWithImpl<$Res> extends _$LessonEventCopyWithImpl<$Res>
    implements $AbortLessonCopyWith<$Res> {
  _$AbortLessonCopyWithImpl(
      AbortLesson _value, $Res Function(AbortLesson) _then)
      : super(_value, (v) => _then(v as AbortLesson));

  @override
  AbortLesson get _value => super._value as AbortLesson;
}

class _$AbortLesson with DiagnosticableTreeMixin implements AbortLesson {
  const _$AbortLesson();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LessonEvent.abortLesson()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'LessonEvent.abortLesson'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is AbortLesson);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result fetchAllLessons(),
    @required
        Result lessonsReceived(
            Either<LessonFailure, ObjectList<Lesson>> failureOrLessons),
    @required Result startLesson(UniqueId id),
    @required Result advanceLesson(),
    @required Result finishLesson(Object results),
    @required Result abortLesson(),
  }) {
    assert(fetchAllLessons != null);
    assert(lessonsReceived != null);
    assert(startLesson != null);
    assert(advanceLesson != null);
    assert(finishLesson != null);
    assert(abortLesson != null);
    return abortLesson();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result fetchAllLessons(),
    Result lessonsReceived(
        Either<LessonFailure, ObjectList<Lesson>> failureOrLessons),
    Result startLesson(UniqueId id),
    Result advanceLesson(),
    Result finishLesson(Object results),
    Result abortLesson(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (abortLesson != null) {
      return abortLesson();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result fetchAllLessons(FetchAllLessons value),
    @required Result lessonsReceived(LessonsReceived value),
    @required Result startLesson(StartLesson value),
    @required Result advanceLesson(AdvanceLesson value),
    @required Result finishLesson(FinishLesson value),
    @required Result abortLesson(AbortLesson value),
  }) {
    assert(fetchAllLessons != null);
    assert(lessonsReceived != null);
    assert(startLesson != null);
    assert(advanceLesson != null);
    assert(finishLesson != null);
    assert(abortLesson != null);
    return abortLesson(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result fetchAllLessons(FetchAllLessons value),
    Result lessonsReceived(LessonsReceived value),
    Result startLesson(StartLesson value),
    Result advanceLesson(AdvanceLesson value),
    Result finishLesson(FinishLesson value),
    Result abortLesson(AbortLesson value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (abortLesson != null) {
      return abortLesson(this);
    }
    return orElse();
  }
}

abstract class AbortLesson implements LessonEvent {
  const factory AbortLesson() = _$AbortLesson;
}

class _$LessonStateTearOff {
  const _$LessonStateTearOff();

  Initial initial() {
    return const Initial();
  }

  LessonLoading lessonLoading() {
    return const LessonLoading();
  }

  LessonLoaded lessonLoaded(Lesson lesson) {
    return LessonLoaded(
      lesson,
    );
  }

  LessonError lessonError(LessonFailure error) {
    return LessonError(
      error,
    );
  }

  AllLessonsLoaded allLessonsLoaded(ObjectList<Lesson> lessons) {
    return AllLessonsLoaded(
      lessons,
    );
  }

  LessonStarted lessonStarted(Exercise exercise, int lessonLength) {
    return LessonStarted(
      exercise,
      lessonLength,
    );
  }

  LessonAdvanced lessonAdvanced(Exercise exercise) {
    return LessonAdvanced(
      exercise,
    );
  }

  LessonFinished lessonFinished() {
    return const LessonFinished();
  }

  LessonAborted lessonAborted() {
    return const LessonAborted();
  }
}

// ignore: unused_element
const $LessonState = _$LessonStateTearOff();

mixin _$LessonState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result lessonLoading(),
    @required Result lessonLoaded(Lesson lesson),
    @required Result lessonError(LessonFailure error),
    @required Result allLessonsLoaded(ObjectList<Lesson> lessons),
    @required Result lessonStarted(Exercise exercise, int lessonLength),
    @required Result lessonAdvanced(Exercise exercise),
    @required Result lessonFinished(),
    @required Result lessonAborted(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result lessonLoading(),
    Result lessonLoaded(Lesson lesson),
    Result lessonError(LessonFailure error),
    Result allLessonsLoaded(ObjectList<Lesson> lessons),
    Result lessonStarted(Exercise exercise, int lessonLength),
    Result lessonAdvanced(Exercise exercise),
    Result lessonFinished(),
    Result lessonAborted(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result lessonLoading(LessonLoading value),
    @required Result lessonLoaded(LessonLoaded value),
    @required Result lessonError(LessonError value),
    @required Result allLessonsLoaded(AllLessonsLoaded value),
    @required Result lessonStarted(LessonStarted value),
    @required Result lessonAdvanced(LessonAdvanced value),
    @required Result lessonFinished(LessonFinished value),
    @required Result lessonAborted(LessonAborted value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result lessonLoading(LessonLoading value),
    Result lessonLoaded(LessonLoaded value),
    Result lessonError(LessonError value),
    Result allLessonsLoaded(AllLessonsLoaded value),
    Result lessonStarted(LessonStarted value),
    Result lessonAdvanced(LessonAdvanced value),
    Result lessonFinished(LessonFinished value),
    Result lessonAborted(LessonAborted value),
    @required Result orElse(),
  });
}

abstract class $LessonStateCopyWith<$Res> {
  factory $LessonStateCopyWith(
          LessonState value, $Res Function(LessonState) then) =
      _$LessonStateCopyWithImpl<$Res>;
}

class _$LessonStateCopyWithImpl<$Res> implements $LessonStateCopyWith<$Res> {
  _$LessonStateCopyWithImpl(this._value, this._then);

  final LessonState _value;
  // ignore: unused_field
  final $Res Function(LessonState) _then;
}

abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

class _$InitialCopyWithImpl<$Res> extends _$LessonStateCopyWithImpl<$Res>
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
    return 'LessonState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'LessonState.initial'));
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
    @required Result lessonLoading(),
    @required Result lessonLoaded(Lesson lesson),
    @required Result lessonError(LessonFailure error),
    @required Result allLessonsLoaded(ObjectList<Lesson> lessons),
    @required Result lessonStarted(Exercise exercise, int lessonLength),
    @required Result lessonAdvanced(Exercise exercise),
    @required Result lessonFinished(),
    @required Result lessonAborted(),
  }) {
    assert(initial != null);
    assert(lessonLoading != null);
    assert(lessonLoaded != null);
    assert(lessonError != null);
    assert(allLessonsLoaded != null);
    assert(lessonStarted != null);
    assert(lessonAdvanced != null);
    assert(lessonFinished != null);
    assert(lessonAborted != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result lessonLoading(),
    Result lessonLoaded(Lesson lesson),
    Result lessonError(LessonFailure error),
    Result allLessonsLoaded(ObjectList<Lesson> lessons),
    Result lessonStarted(Exercise exercise, int lessonLength),
    Result lessonAdvanced(Exercise exercise),
    Result lessonFinished(),
    Result lessonAborted(),
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
    @required Result lessonLoading(LessonLoading value),
    @required Result lessonLoaded(LessonLoaded value),
    @required Result lessonError(LessonError value),
    @required Result allLessonsLoaded(AllLessonsLoaded value),
    @required Result lessonStarted(LessonStarted value),
    @required Result lessonAdvanced(LessonAdvanced value),
    @required Result lessonFinished(LessonFinished value),
    @required Result lessonAborted(LessonAborted value),
  }) {
    assert(initial != null);
    assert(lessonLoading != null);
    assert(lessonLoaded != null);
    assert(lessonError != null);
    assert(allLessonsLoaded != null);
    assert(lessonStarted != null);
    assert(lessonAdvanced != null);
    assert(lessonFinished != null);
    assert(lessonAborted != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result lessonLoading(LessonLoading value),
    Result lessonLoaded(LessonLoaded value),
    Result lessonError(LessonError value),
    Result allLessonsLoaded(AllLessonsLoaded value),
    Result lessonStarted(LessonStarted value),
    Result lessonAdvanced(LessonAdvanced value),
    Result lessonFinished(LessonFinished value),
    Result lessonAborted(LessonAborted value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements LessonState {
  const factory Initial() = _$Initial;
}

abstract class $LessonLoadingCopyWith<$Res> {
  factory $LessonLoadingCopyWith(
          LessonLoading value, $Res Function(LessonLoading) then) =
      _$LessonLoadingCopyWithImpl<$Res>;
}

class _$LessonLoadingCopyWithImpl<$Res> extends _$LessonStateCopyWithImpl<$Res>
    implements $LessonLoadingCopyWith<$Res> {
  _$LessonLoadingCopyWithImpl(
      LessonLoading _value, $Res Function(LessonLoading) _then)
      : super(_value, (v) => _then(v as LessonLoading));

  @override
  LessonLoading get _value => super._value as LessonLoading;
}

class _$LessonLoading with DiagnosticableTreeMixin implements LessonLoading {
  const _$LessonLoading();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LessonState.lessonLoading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'LessonState.lessonLoading'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LessonLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result lessonLoading(),
    @required Result lessonLoaded(Lesson lesson),
    @required Result lessonError(LessonFailure error),
    @required Result allLessonsLoaded(ObjectList<Lesson> lessons),
    @required Result lessonStarted(Exercise exercise, int lessonLength),
    @required Result lessonAdvanced(Exercise exercise),
    @required Result lessonFinished(),
    @required Result lessonAborted(),
  }) {
    assert(initial != null);
    assert(lessonLoading != null);
    assert(lessonLoaded != null);
    assert(lessonError != null);
    assert(allLessonsLoaded != null);
    assert(lessonStarted != null);
    assert(lessonAdvanced != null);
    assert(lessonFinished != null);
    assert(lessonAborted != null);
    return lessonLoading();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result lessonLoading(),
    Result lessonLoaded(Lesson lesson),
    Result lessonError(LessonFailure error),
    Result allLessonsLoaded(ObjectList<Lesson> lessons),
    Result lessonStarted(Exercise exercise, int lessonLength),
    Result lessonAdvanced(Exercise exercise),
    Result lessonFinished(),
    Result lessonAborted(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (lessonLoading != null) {
      return lessonLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result lessonLoading(LessonLoading value),
    @required Result lessonLoaded(LessonLoaded value),
    @required Result lessonError(LessonError value),
    @required Result allLessonsLoaded(AllLessonsLoaded value),
    @required Result lessonStarted(LessonStarted value),
    @required Result lessonAdvanced(LessonAdvanced value),
    @required Result lessonFinished(LessonFinished value),
    @required Result lessonAborted(LessonAborted value),
  }) {
    assert(initial != null);
    assert(lessonLoading != null);
    assert(lessonLoaded != null);
    assert(lessonError != null);
    assert(allLessonsLoaded != null);
    assert(lessonStarted != null);
    assert(lessonAdvanced != null);
    assert(lessonFinished != null);
    assert(lessonAborted != null);
    return lessonLoading(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result lessonLoading(LessonLoading value),
    Result lessonLoaded(LessonLoaded value),
    Result lessonError(LessonError value),
    Result allLessonsLoaded(AllLessonsLoaded value),
    Result lessonStarted(LessonStarted value),
    Result lessonAdvanced(LessonAdvanced value),
    Result lessonFinished(LessonFinished value),
    Result lessonAborted(LessonAborted value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (lessonLoading != null) {
      return lessonLoading(this);
    }
    return orElse();
  }
}

abstract class LessonLoading implements LessonState {
  const factory LessonLoading() = _$LessonLoading;
}

abstract class $LessonLoadedCopyWith<$Res> {
  factory $LessonLoadedCopyWith(
          LessonLoaded value, $Res Function(LessonLoaded) then) =
      _$LessonLoadedCopyWithImpl<$Res>;
  $Res call({Lesson lesson});

  $LessonCopyWith<$Res> get lesson;
}

class _$LessonLoadedCopyWithImpl<$Res> extends _$LessonStateCopyWithImpl<$Res>
    implements $LessonLoadedCopyWith<$Res> {
  _$LessonLoadedCopyWithImpl(
      LessonLoaded _value, $Res Function(LessonLoaded) _then)
      : super(_value, (v) => _then(v as LessonLoaded));

  @override
  LessonLoaded get _value => super._value as LessonLoaded;

  @override
  $Res call({
    Object lesson = freezed,
  }) {
    return _then(LessonLoaded(
      lesson == freezed ? _value.lesson : lesson as Lesson,
    ));
  }

  @override
  $LessonCopyWith<$Res> get lesson {
    if (_value.lesson == null) {
      return null;
    }
    return $LessonCopyWith<$Res>(_value.lesson, (value) {
      return _then(_value.copyWith(lesson: value));
    });
  }
}

class _$LessonLoaded with DiagnosticableTreeMixin implements LessonLoaded {
  const _$LessonLoaded(this.lesson) : assert(lesson != null);

  @override
  final Lesson lesson;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LessonState.lessonLoaded(lesson: $lesson)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LessonState.lessonLoaded'))
      ..add(DiagnosticsProperty('lesson', lesson));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LessonLoaded &&
            (identical(other.lesson, lesson) ||
                const DeepCollectionEquality().equals(other.lesson, lesson)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(lesson);

  @override
  $LessonLoadedCopyWith<LessonLoaded> get copyWith =>
      _$LessonLoadedCopyWithImpl<LessonLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result lessonLoading(),
    @required Result lessonLoaded(Lesson lesson),
    @required Result lessonError(LessonFailure error),
    @required Result allLessonsLoaded(ObjectList<Lesson> lessons),
    @required Result lessonStarted(Exercise exercise, int lessonLength),
    @required Result lessonAdvanced(Exercise exercise),
    @required Result lessonFinished(),
    @required Result lessonAborted(),
  }) {
    assert(initial != null);
    assert(lessonLoading != null);
    assert(lessonLoaded != null);
    assert(lessonError != null);
    assert(allLessonsLoaded != null);
    assert(lessonStarted != null);
    assert(lessonAdvanced != null);
    assert(lessonFinished != null);
    assert(lessonAborted != null);
    return lessonLoaded(lesson);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result lessonLoading(),
    Result lessonLoaded(Lesson lesson),
    Result lessonError(LessonFailure error),
    Result allLessonsLoaded(ObjectList<Lesson> lessons),
    Result lessonStarted(Exercise exercise, int lessonLength),
    Result lessonAdvanced(Exercise exercise),
    Result lessonFinished(),
    Result lessonAborted(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (lessonLoaded != null) {
      return lessonLoaded(lesson);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result lessonLoading(LessonLoading value),
    @required Result lessonLoaded(LessonLoaded value),
    @required Result lessonError(LessonError value),
    @required Result allLessonsLoaded(AllLessonsLoaded value),
    @required Result lessonStarted(LessonStarted value),
    @required Result lessonAdvanced(LessonAdvanced value),
    @required Result lessonFinished(LessonFinished value),
    @required Result lessonAborted(LessonAborted value),
  }) {
    assert(initial != null);
    assert(lessonLoading != null);
    assert(lessonLoaded != null);
    assert(lessonError != null);
    assert(allLessonsLoaded != null);
    assert(lessonStarted != null);
    assert(lessonAdvanced != null);
    assert(lessonFinished != null);
    assert(lessonAborted != null);
    return lessonLoaded(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result lessonLoading(LessonLoading value),
    Result lessonLoaded(LessonLoaded value),
    Result lessonError(LessonError value),
    Result allLessonsLoaded(AllLessonsLoaded value),
    Result lessonStarted(LessonStarted value),
    Result lessonAdvanced(LessonAdvanced value),
    Result lessonFinished(LessonFinished value),
    Result lessonAborted(LessonAborted value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (lessonLoaded != null) {
      return lessonLoaded(this);
    }
    return orElse();
  }
}

abstract class LessonLoaded implements LessonState {
  const factory LessonLoaded(Lesson lesson) = _$LessonLoaded;

  Lesson get lesson;
  $LessonLoadedCopyWith<LessonLoaded> get copyWith;
}

abstract class $LessonErrorCopyWith<$Res> {
  factory $LessonErrorCopyWith(
          LessonError value, $Res Function(LessonError) then) =
      _$LessonErrorCopyWithImpl<$Res>;
  $Res call({LessonFailure error});

  $LessonFailureCopyWith<$Res> get error;
}

class _$LessonErrorCopyWithImpl<$Res> extends _$LessonStateCopyWithImpl<$Res>
    implements $LessonErrorCopyWith<$Res> {
  _$LessonErrorCopyWithImpl(
      LessonError _value, $Res Function(LessonError) _then)
      : super(_value, (v) => _then(v as LessonError));

  @override
  LessonError get _value => super._value as LessonError;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(LessonError(
      error == freezed ? _value.error : error as LessonFailure,
    ));
  }

  @override
  $LessonFailureCopyWith<$Res> get error {
    if (_value.error == null) {
      return null;
    }
    return $LessonFailureCopyWith<$Res>(_value.error, (value) {
      return _then(_value.copyWith(error: value));
    });
  }
}

class _$LessonError with DiagnosticableTreeMixin implements LessonError {
  const _$LessonError(this.error) : assert(error != null);

  @override
  final LessonFailure error;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LessonState.lessonError(error: $error)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LessonState.lessonError'))
      ..add(DiagnosticsProperty('error', error));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LessonError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  $LessonErrorCopyWith<LessonError> get copyWith =>
      _$LessonErrorCopyWithImpl<LessonError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result lessonLoading(),
    @required Result lessonLoaded(Lesson lesson),
    @required Result lessonError(LessonFailure error),
    @required Result allLessonsLoaded(ObjectList<Lesson> lessons),
    @required Result lessonStarted(Exercise exercise, int lessonLength),
    @required Result lessonAdvanced(Exercise exercise),
    @required Result lessonFinished(),
    @required Result lessonAborted(),
  }) {
    assert(initial != null);
    assert(lessonLoading != null);
    assert(lessonLoaded != null);
    assert(lessonError != null);
    assert(allLessonsLoaded != null);
    assert(lessonStarted != null);
    assert(lessonAdvanced != null);
    assert(lessonFinished != null);
    assert(lessonAborted != null);
    return lessonError(error);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result lessonLoading(),
    Result lessonLoaded(Lesson lesson),
    Result lessonError(LessonFailure error),
    Result allLessonsLoaded(ObjectList<Lesson> lessons),
    Result lessonStarted(Exercise exercise, int lessonLength),
    Result lessonAdvanced(Exercise exercise),
    Result lessonFinished(),
    Result lessonAborted(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (lessonError != null) {
      return lessonError(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result lessonLoading(LessonLoading value),
    @required Result lessonLoaded(LessonLoaded value),
    @required Result lessonError(LessonError value),
    @required Result allLessonsLoaded(AllLessonsLoaded value),
    @required Result lessonStarted(LessonStarted value),
    @required Result lessonAdvanced(LessonAdvanced value),
    @required Result lessonFinished(LessonFinished value),
    @required Result lessonAborted(LessonAborted value),
  }) {
    assert(initial != null);
    assert(lessonLoading != null);
    assert(lessonLoaded != null);
    assert(lessonError != null);
    assert(allLessonsLoaded != null);
    assert(lessonStarted != null);
    assert(lessonAdvanced != null);
    assert(lessonFinished != null);
    assert(lessonAborted != null);
    return lessonError(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result lessonLoading(LessonLoading value),
    Result lessonLoaded(LessonLoaded value),
    Result lessonError(LessonError value),
    Result allLessonsLoaded(AllLessonsLoaded value),
    Result lessonStarted(LessonStarted value),
    Result lessonAdvanced(LessonAdvanced value),
    Result lessonFinished(LessonFinished value),
    Result lessonAborted(LessonAborted value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (lessonError != null) {
      return lessonError(this);
    }
    return orElse();
  }
}

abstract class LessonError implements LessonState {
  const factory LessonError(LessonFailure error) = _$LessonError;

  LessonFailure get error;
  $LessonErrorCopyWith<LessonError> get copyWith;
}

abstract class $AllLessonsLoadedCopyWith<$Res> {
  factory $AllLessonsLoadedCopyWith(
          AllLessonsLoaded value, $Res Function(AllLessonsLoaded) then) =
      _$AllLessonsLoadedCopyWithImpl<$Res>;
  $Res call({ObjectList<Lesson> lessons});
}

class _$AllLessonsLoadedCopyWithImpl<$Res>
    extends _$LessonStateCopyWithImpl<$Res>
    implements $AllLessonsLoadedCopyWith<$Res> {
  _$AllLessonsLoadedCopyWithImpl(
      AllLessonsLoaded _value, $Res Function(AllLessonsLoaded) _then)
      : super(_value, (v) => _then(v as AllLessonsLoaded));

  @override
  AllLessonsLoaded get _value => super._value as AllLessonsLoaded;

  @override
  $Res call({
    Object lessons = freezed,
  }) {
    return _then(AllLessonsLoaded(
      lessons == freezed ? _value.lessons : lessons as ObjectList<Lesson>,
    ));
  }
}

class _$AllLessonsLoaded
    with DiagnosticableTreeMixin
    implements AllLessonsLoaded {
  const _$AllLessonsLoaded(this.lessons) : assert(lessons != null);

  @override
  final ObjectList<Lesson> lessons;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LessonState.allLessonsLoaded(lessons: $lessons)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LessonState.allLessonsLoaded'))
      ..add(DiagnosticsProperty('lessons', lessons));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AllLessonsLoaded &&
            (identical(other.lessons, lessons) ||
                const DeepCollectionEquality().equals(other.lessons, lessons)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(lessons);

  @override
  $AllLessonsLoadedCopyWith<AllLessonsLoaded> get copyWith =>
      _$AllLessonsLoadedCopyWithImpl<AllLessonsLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result lessonLoading(),
    @required Result lessonLoaded(Lesson lesson),
    @required Result lessonError(LessonFailure error),
    @required Result allLessonsLoaded(ObjectList<Lesson> lessons),
    @required Result lessonStarted(Exercise exercise, int lessonLength),
    @required Result lessonAdvanced(Exercise exercise),
    @required Result lessonFinished(),
    @required Result lessonAborted(),
  }) {
    assert(initial != null);
    assert(lessonLoading != null);
    assert(lessonLoaded != null);
    assert(lessonError != null);
    assert(allLessonsLoaded != null);
    assert(lessonStarted != null);
    assert(lessonAdvanced != null);
    assert(lessonFinished != null);
    assert(lessonAborted != null);
    return allLessonsLoaded(lessons);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result lessonLoading(),
    Result lessonLoaded(Lesson lesson),
    Result lessonError(LessonFailure error),
    Result allLessonsLoaded(ObjectList<Lesson> lessons),
    Result lessonStarted(Exercise exercise, int lessonLength),
    Result lessonAdvanced(Exercise exercise),
    Result lessonFinished(),
    Result lessonAborted(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (allLessonsLoaded != null) {
      return allLessonsLoaded(lessons);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result lessonLoading(LessonLoading value),
    @required Result lessonLoaded(LessonLoaded value),
    @required Result lessonError(LessonError value),
    @required Result allLessonsLoaded(AllLessonsLoaded value),
    @required Result lessonStarted(LessonStarted value),
    @required Result lessonAdvanced(LessonAdvanced value),
    @required Result lessonFinished(LessonFinished value),
    @required Result lessonAborted(LessonAborted value),
  }) {
    assert(initial != null);
    assert(lessonLoading != null);
    assert(lessonLoaded != null);
    assert(lessonError != null);
    assert(allLessonsLoaded != null);
    assert(lessonStarted != null);
    assert(lessonAdvanced != null);
    assert(lessonFinished != null);
    assert(lessonAborted != null);
    return allLessonsLoaded(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result lessonLoading(LessonLoading value),
    Result lessonLoaded(LessonLoaded value),
    Result lessonError(LessonError value),
    Result allLessonsLoaded(AllLessonsLoaded value),
    Result lessonStarted(LessonStarted value),
    Result lessonAdvanced(LessonAdvanced value),
    Result lessonFinished(LessonFinished value),
    Result lessonAborted(LessonAborted value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (allLessonsLoaded != null) {
      return allLessonsLoaded(this);
    }
    return orElse();
  }
}

abstract class AllLessonsLoaded implements LessonState {
  const factory AllLessonsLoaded(ObjectList<Lesson> lessons) =
      _$AllLessonsLoaded;

  ObjectList<Lesson> get lessons;
  $AllLessonsLoadedCopyWith<AllLessonsLoaded> get copyWith;
}

abstract class $LessonStartedCopyWith<$Res> {
  factory $LessonStartedCopyWith(
          LessonStarted value, $Res Function(LessonStarted) then) =
      _$LessonStartedCopyWithImpl<$Res>;
  $Res call({Exercise exercise, int lessonLength});

  $ExerciseCopyWith<$Res> get exercise;
}

class _$LessonStartedCopyWithImpl<$Res> extends _$LessonStateCopyWithImpl<$Res>
    implements $LessonStartedCopyWith<$Res> {
  _$LessonStartedCopyWithImpl(
      LessonStarted _value, $Res Function(LessonStarted) _then)
      : super(_value, (v) => _then(v as LessonStarted));

  @override
  LessonStarted get _value => super._value as LessonStarted;

  @override
  $Res call({
    Object exercise = freezed,
    Object lessonLength = freezed,
  }) {
    return _then(LessonStarted(
      exercise == freezed ? _value.exercise : exercise as Exercise,
      lessonLength == freezed ? _value.lessonLength : lessonLength as int,
    ));
  }

  @override
  $ExerciseCopyWith<$Res> get exercise {
    if (_value.exercise == null) {
      return null;
    }
    return $ExerciseCopyWith<$Res>(_value.exercise, (value) {
      return _then(_value.copyWith(exercise: value));
    });
  }
}

class _$LessonStarted with DiagnosticableTreeMixin implements LessonStarted {
  const _$LessonStarted(this.exercise, this.lessonLength)
      : assert(exercise != null),
        assert(lessonLength != null);

  @override
  final Exercise exercise;
  @override
  final int lessonLength;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LessonState.lessonStarted(exercise: $exercise, lessonLength: $lessonLength)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LessonState.lessonStarted'))
      ..add(DiagnosticsProperty('exercise', exercise))
      ..add(DiagnosticsProperty('lessonLength', lessonLength));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LessonStarted &&
            (identical(other.exercise, exercise) ||
                const DeepCollectionEquality()
                    .equals(other.exercise, exercise)) &&
            (identical(other.lessonLength, lessonLength) ||
                const DeepCollectionEquality()
                    .equals(other.lessonLength, lessonLength)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(exercise) ^
      const DeepCollectionEquality().hash(lessonLength);

  @override
  $LessonStartedCopyWith<LessonStarted> get copyWith =>
      _$LessonStartedCopyWithImpl<LessonStarted>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result lessonLoading(),
    @required Result lessonLoaded(Lesson lesson),
    @required Result lessonError(LessonFailure error),
    @required Result allLessonsLoaded(ObjectList<Lesson> lessons),
    @required Result lessonStarted(Exercise exercise, int lessonLength),
    @required Result lessonAdvanced(Exercise exercise),
    @required Result lessonFinished(),
    @required Result lessonAborted(),
  }) {
    assert(initial != null);
    assert(lessonLoading != null);
    assert(lessonLoaded != null);
    assert(lessonError != null);
    assert(allLessonsLoaded != null);
    assert(lessonStarted != null);
    assert(lessonAdvanced != null);
    assert(lessonFinished != null);
    assert(lessonAborted != null);
    return lessonStarted(exercise, lessonLength);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result lessonLoading(),
    Result lessonLoaded(Lesson lesson),
    Result lessonError(LessonFailure error),
    Result allLessonsLoaded(ObjectList<Lesson> lessons),
    Result lessonStarted(Exercise exercise, int lessonLength),
    Result lessonAdvanced(Exercise exercise),
    Result lessonFinished(),
    Result lessonAborted(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (lessonStarted != null) {
      return lessonStarted(exercise, lessonLength);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result lessonLoading(LessonLoading value),
    @required Result lessonLoaded(LessonLoaded value),
    @required Result lessonError(LessonError value),
    @required Result allLessonsLoaded(AllLessonsLoaded value),
    @required Result lessonStarted(LessonStarted value),
    @required Result lessonAdvanced(LessonAdvanced value),
    @required Result lessonFinished(LessonFinished value),
    @required Result lessonAborted(LessonAborted value),
  }) {
    assert(initial != null);
    assert(lessonLoading != null);
    assert(lessonLoaded != null);
    assert(lessonError != null);
    assert(allLessonsLoaded != null);
    assert(lessonStarted != null);
    assert(lessonAdvanced != null);
    assert(lessonFinished != null);
    assert(lessonAborted != null);
    return lessonStarted(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result lessonLoading(LessonLoading value),
    Result lessonLoaded(LessonLoaded value),
    Result lessonError(LessonError value),
    Result allLessonsLoaded(AllLessonsLoaded value),
    Result lessonStarted(LessonStarted value),
    Result lessonAdvanced(LessonAdvanced value),
    Result lessonFinished(LessonFinished value),
    Result lessonAborted(LessonAborted value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (lessonStarted != null) {
      return lessonStarted(this);
    }
    return orElse();
  }
}

abstract class LessonStarted implements LessonState {
  const factory LessonStarted(Exercise exercise, int lessonLength) =
      _$LessonStarted;

  Exercise get exercise;
  int get lessonLength;
  $LessonStartedCopyWith<LessonStarted> get copyWith;
}

abstract class $LessonAdvancedCopyWith<$Res> {
  factory $LessonAdvancedCopyWith(
          LessonAdvanced value, $Res Function(LessonAdvanced) then) =
      _$LessonAdvancedCopyWithImpl<$Res>;
  $Res call({Exercise exercise});

  $ExerciseCopyWith<$Res> get exercise;
}

class _$LessonAdvancedCopyWithImpl<$Res> extends _$LessonStateCopyWithImpl<$Res>
    implements $LessonAdvancedCopyWith<$Res> {
  _$LessonAdvancedCopyWithImpl(
      LessonAdvanced _value, $Res Function(LessonAdvanced) _then)
      : super(_value, (v) => _then(v as LessonAdvanced));

  @override
  LessonAdvanced get _value => super._value as LessonAdvanced;

  @override
  $Res call({
    Object exercise = freezed,
  }) {
    return _then(LessonAdvanced(
      exercise == freezed ? _value.exercise : exercise as Exercise,
    ));
  }

  @override
  $ExerciseCopyWith<$Res> get exercise {
    if (_value.exercise == null) {
      return null;
    }
    return $ExerciseCopyWith<$Res>(_value.exercise, (value) {
      return _then(_value.copyWith(exercise: value));
    });
  }
}

class _$LessonAdvanced with DiagnosticableTreeMixin implements LessonAdvanced {
  const _$LessonAdvanced(this.exercise) : assert(exercise != null);

  @override
  final Exercise exercise;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LessonState.lessonAdvanced(exercise: $exercise)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LessonState.lessonAdvanced'))
      ..add(DiagnosticsProperty('exercise', exercise));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LessonAdvanced &&
            (identical(other.exercise, exercise) ||
                const DeepCollectionEquality()
                    .equals(other.exercise, exercise)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(exercise);

  @override
  $LessonAdvancedCopyWith<LessonAdvanced> get copyWith =>
      _$LessonAdvancedCopyWithImpl<LessonAdvanced>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result lessonLoading(),
    @required Result lessonLoaded(Lesson lesson),
    @required Result lessonError(LessonFailure error),
    @required Result allLessonsLoaded(ObjectList<Lesson> lessons),
    @required Result lessonStarted(Exercise exercise, int lessonLength),
    @required Result lessonAdvanced(Exercise exercise),
    @required Result lessonFinished(),
    @required Result lessonAborted(),
  }) {
    assert(initial != null);
    assert(lessonLoading != null);
    assert(lessonLoaded != null);
    assert(lessonError != null);
    assert(allLessonsLoaded != null);
    assert(lessonStarted != null);
    assert(lessonAdvanced != null);
    assert(lessonFinished != null);
    assert(lessonAborted != null);
    return lessonAdvanced(exercise);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result lessonLoading(),
    Result lessonLoaded(Lesson lesson),
    Result lessonError(LessonFailure error),
    Result allLessonsLoaded(ObjectList<Lesson> lessons),
    Result lessonStarted(Exercise exercise, int lessonLength),
    Result lessonAdvanced(Exercise exercise),
    Result lessonFinished(),
    Result lessonAborted(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (lessonAdvanced != null) {
      return lessonAdvanced(exercise);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result lessonLoading(LessonLoading value),
    @required Result lessonLoaded(LessonLoaded value),
    @required Result lessonError(LessonError value),
    @required Result allLessonsLoaded(AllLessonsLoaded value),
    @required Result lessonStarted(LessonStarted value),
    @required Result lessonAdvanced(LessonAdvanced value),
    @required Result lessonFinished(LessonFinished value),
    @required Result lessonAborted(LessonAborted value),
  }) {
    assert(initial != null);
    assert(lessonLoading != null);
    assert(lessonLoaded != null);
    assert(lessonError != null);
    assert(allLessonsLoaded != null);
    assert(lessonStarted != null);
    assert(lessonAdvanced != null);
    assert(lessonFinished != null);
    assert(lessonAborted != null);
    return lessonAdvanced(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result lessonLoading(LessonLoading value),
    Result lessonLoaded(LessonLoaded value),
    Result lessonError(LessonError value),
    Result allLessonsLoaded(AllLessonsLoaded value),
    Result lessonStarted(LessonStarted value),
    Result lessonAdvanced(LessonAdvanced value),
    Result lessonFinished(LessonFinished value),
    Result lessonAborted(LessonAborted value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (lessonAdvanced != null) {
      return lessonAdvanced(this);
    }
    return orElse();
  }
}

abstract class LessonAdvanced implements LessonState {
  const factory LessonAdvanced(Exercise exercise) = _$LessonAdvanced;

  Exercise get exercise;
  $LessonAdvancedCopyWith<LessonAdvanced> get copyWith;
}

abstract class $LessonFinishedCopyWith<$Res> {
  factory $LessonFinishedCopyWith(
          LessonFinished value, $Res Function(LessonFinished) then) =
      _$LessonFinishedCopyWithImpl<$Res>;
}

class _$LessonFinishedCopyWithImpl<$Res> extends _$LessonStateCopyWithImpl<$Res>
    implements $LessonFinishedCopyWith<$Res> {
  _$LessonFinishedCopyWithImpl(
      LessonFinished _value, $Res Function(LessonFinished) _then)
      : super(_value, (v) => _then(v as LessonFinished));

  @override
  LessonFinished get _value => super._value as LessonFinished;
}

class _$LessonFinished with DiagnosticableTreeMixin implements LessonFinished {
  const _$LessonFinished();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LessonState.lessonFinished()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'LessonState.lessonFinished'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LessonFinished);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result lessonLoading(),
    @required Result lessonLoaded(Lesson lesson),
    @required Result lessonError(LessonFailure error),
    @required Result allLessonsLoaded(ObjectList<Lesson> lessons),
    @required Result lessonStarted(Exercise exercise, int lessonLength),
    @required Result lessonAdvanced(Exercise exercise),
    @required Result lessonFinished(),
    @required Result lessonAborted(),
  }) {
    assert(initial != null);
    assert(lessonLoading != null);
    assert(lessonLoaded != null);
    assert(lessonError != null);
    assert(allLessonsLoaded != null);
    assert(lessonStarted != null);
    assert(lessonAdvanced != null);
    assert(lessonFinished != null);
    assert(lessonAborted != null);
    return lessonFinished();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result lessonLoading(),
    Result lessonLoaded(Lesson lesson),
    Result lessonError(LessonFailure error),
    Result allLessonsLoaded(ObjectList<Lesson> lessons),
    Result lessonStarted(Exercise exercise, int lessonLength),
    Result lessonAdvanced(Exercise exercise),
    Result lessonFinished(),
    Result lessonAborted(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (lessonFinished != null) {
      return lessonFinished();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result lessonLoading(LessonLoading value),
    @required Result lessonLoaded(LessonLoaded value),
    @required Result lessonError(LessonError value),
    @required Result allLessonsLoaded(AllLessonsLoaded value),
    @required Result lessonStarted(LessonStarted value),
    @required Result lessonAdvanced(LessonAdvanced value),
    @required Result lessonFinished(LessonFinished value),
    @required Result lessonAborted(LessonAborted value),
  }) {
    assert(initial != null);
    assert(lessonLoading != null);
    assert(lessonLoaded != null);
    assert(lessonError != null);
    assert(allLessonsLoaded != null);
    assert(lessonStarted != null);
    assert(lessonAdvanced != null);
    assert(lessonFinished != null);
    assert(lessonAborted != null);
    return lessonFinished(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result lessonLoading(LessonLoading value),
    Result lessonLoaded(LessonLoaded value),
    Result lessonError(LessonError value),
    Result allLessonsLoaded(AllLessonsLoaded value),
    Result lessonStarted(LessonStarted value),
    Result lessonAdvanced(LessonAdvanced value),
    Result lessonFinished(LessonFinished value),
    Result lessonAborted(LessonAborted value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (lessonFinished != null) {
      return lessonFinished(this);
    }
    return orElse();
  }
}

abstract class LessonFinished implements LessonState {
  const factory LessonFinished() = _$LessonFinished;
}

abstract class $LessonAbortedCopyWith<$Res> {
  factory $LessonAbortedCopyWith(
          LessonAborted value, $Res Function(LessonAborted) then) =
      _$LessonAbortedCopyWithImpl<$Res>;
}

class _$LessonAbortedCopyWithImpl<$Res> extends _$LessonStateCopyWithImpl<$Res>
    implements $LessonAbortedCopyWith<$Res> {
  _$LessonAbortedCopyWithImpl(
      LessonAborted _value, $Res Function(LessonAborted) _then)
      : super(_value, (v) => _then(v as LessonAborted));

  @override
  LessonAborted get _value => super._value as LessonAborted;
}

class _$LessonAborted with DiagnosticableTreeMixin implements LessonAborted {
  const _$LessonAborted();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LessonState.lessonAborted()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'LessonState.lessonAborted'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LessonAborted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result lessonLoading(),
    @required Result lessonLoaded(Lesson lesson),
    @required Result lessonError(LessonFailure error),
    @required Result allLessonsLoaded(ObjectList<Lesson> lessons),
    @required Result lessonStarted(Exercise exercise, int lessonLength),
    @required Result lessonAdvanced(Exercise exercise),
    @required Result lessonFinished(),
    @required Result lessonAborted(),
  }) {
    assert(initial != null);
    assert(lessonLoading != null);
    assert(lessonLoaded != null);
    assert(lessonError != null);
    assert(allLessonsLoaded != null);
    assert(lessonStarted != null);
    assert(lessonAdvanced != null);
    assert(lessonFinished != null);
    assert(lessonAborted != null);
    return lessonAborted();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result lessonLoading(),
    Result lessonLoaded(Lesson lesson),
    Result lessonError(LessonFailure error),
    Result allLessonsLoaded(ObjectList<Lesson> lessons),
    Result lessonStarted(Exercise exercise, int lessonLength),
    Result lessonAdvanced(Exercise exercise),
    Result lessonFinished(),
    Result lessonAborted(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (lessonAborted != null) {
      return lessonAborted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result lessonLoading(LessonLoading value),
    @required Result lessonLoaded(LessonLoaded value),
    @required Result lessonError(LessonError value),
    @required Result allLessonsLoaded(AllLessonsLoaded value),
    @required Result lessonStarted(LessonStarted value),
    @required Result lessonAdvanced(LessonAdvanced value),
    @required Result lessonFinished(LessonFinished value),
    @required Result lessonAborted(LessonAborted value),
  }) {
    assert(initial != null);
    assert(lessonLoading != null);
    assert(lessonLoaded != null);
    assert(lessonError != null);
    assert(allLessonsLoaded != null);
    assert(lessonStarted != null);
    assert(lessonAdvanced != null);
    assert(lessonFinished != null);
    assert(lessonAborted != null);
    return lessonAborted(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result lessonLoading(LessonLoading value),
    Result lessonLoaded(LessonLoaded value),
    Result lessonError(LessonError value),
    Result allLessonsLoaded(AllLessonsLoaded value),
    Result lessonStarted(LessonStarted value),
    Result lessonAdvanced(LessonAdvanced value),
    Result lessonFinished(LessonFinished value),
    Result lessonAborted(LessonAborted value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (lessonAborted != null) {
      return lessonAborted(this);
    }
    return orElse();
  }
}

abstract class LessonAborted implements LessonState {
  const factory LessonAborted() = _$LessonAborted;
}
