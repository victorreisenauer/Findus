// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'lesson_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$LessonEventTearOff {
  const _$LessonEventTearOff();

  FetchLessonById fetchLessonById(UniqueId id) {
    return FetchLessonById(
      id,
    );
  }

  FetchAllLessons fetchAllLessons() {
    return const FetchAllLessons();
  }
}

// ignore: unused_element
const $LessonEvent = _$LessonEventTearOff();

mixin _$LessonEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result fetchLessonById(UniqueId id),
    @required Result fetchAllLessons(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result fetchLessonById(UniqueId id),
    Result fetchAllLessons(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result fetchLessonById(FetchLessonById value),
    @required Result fetchAllLessons(FetchAllLessons value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result fetchLessonById(FetchLessonById value),
    Result fetchAllLessons(FetchAllLessons value),
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

abstract class $FetchLessonByIdCopyWith<$Res> {
  factory $FetchLessonByIdCopyWith(
          FetchLessonById value, $Res Function(FetchLessonById) then) =
      _$FetchLessonByIdCopyWithImpl<$Res>;
  $Res call({UniqueId id});
}

class _$FetchLessonByIdCopyWithImpl<$Res>
    extends _$LessonEventCopyWithImpl<$Res>
    implements $FetchLessonByIdCopyWith<$Res> {
  _$FetchLessonByIdCopyWithImpl(
      FetchLessonById _value, $Res Function(FetchLessonById) _then)
      : super(_value, (v) => _then(v as FetchLessonById));

  @override
  FetchLessonById get _value => super._value as FetchLessonById;

  @override
  $Res call({
    Object id = freezed,
  }) {
    return _then(FetchLessonById(
      id == freezed ? _value.id : id as UniqueId,
    ));
  }
}

class _$FetchLessonById
    with DiagnosticableTreeMixin
    implements FetchLessonById {
  const _$FetchLessonById(this.id) : assert(id != null);

  @override
  final UniqueId id;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LessonEvent.fetchLessonById(id: $id)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LessonEvent.fetchLessonById'))
      ..add(DiagnosticsProperty('id', id));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FetchLessonById &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @override
  $FetchLessonByIdCopyWith<FetchLessonById> get copyWith =>
      _$FetchLessonByIdCopyWithImpl<FetchLessonById>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result fetchLessonById(UniqueId id),
    @required Result fetchAllLessons(),
  }) {
    assert(fetchLessonById != null);
    assert(fetchAllLessons != null);
    return fetchLessonById(id);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result fetchLessonById(UniqueId id),
    Result fetchAllLessons(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fetchLessonById != null) {
      return fetchLessonById(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result fetchLessonById(FetchLessonById value),
    @required Result fetchAllLessons(FetchAllLessons value),
  }) {
    assert(fetchLessonById != null);
    assert(fetchAllLessons != null);
    return fetchLessonById(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result fetchLessonById(FetchLessonById value),
    Result fetchAllLessons(FetchAllLessons value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fetchLessonById != null) {
      return fetchLessonById(this);
    }
    return orElse();
  }
}

abstract class FetchLessonById implements LessonEvent {
  const factory FetchLessonById(UniqueId id) = _$FetchLessonById;

  UniqueId get id;
  $FetchLessonByIdCopyWith<FetchLessonById> get copyWith;
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
    @required Result fetchLessonById(UniqueId id),
    @required Result fetchAllLessons(),
  }) {
    assert(fetchLessonById != null);
    assert(fetchAllLessons != null);
    return fetchAllLessons();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result fetchLessonById(UniqueId id),
    Result fetchAllLessons(),
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
    @required Result fetchLessonById(FetchLessonById value),
    @required Result fetchAllLessons(FetchAllLessons value),
  }) {
    assert(fetchLessonById != null);
    assert(fetchAllLessons != null);
    return fetchAllLessons(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result fetchLessonById(FetchLessonById value),
    Result fetchAllLessons(FetchAllLessons value),
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

  AllLessonsLoading allLessonsLoading() {
    return const AllLessonsLoading();
  }

  AllLessonsLoaded allLessonsLoaded(ObjectList<Lesson> lessons) {
    return AllLessonsLoaded(
      lessons,
    );
  }

  AllLessonsError allLessonsError(LessonFailure error) {
    return AllLessonsError(
      error,
    );
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
    @required Result allLessonsLoading(),
    @required Result allLessonsLoaded(ObjectList<Lesson> lessons),
    @required Result allLessonsError(LessonFailure error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result lessonLoading(),
    Result lessonLoaded(Lesson lesson),
    Result lessonError(LessonFailure error),
    Result allLessonsLoading(),
    Result allLessonsLoaded(ObjectList<Lesson> lessons),
    Result allLessonsError(LessonFailure error),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result lessonLoading(LessonLoading value),
    @required Result lessonLoaded(LessonLoaded value),
    @required Result lessonError(LessonError value),
    @required Result allLessonsLoading(AllLessonsLoading value),
    @required Result allLessonsLoaded(AllLessonsLoaded value),
    @required Result allLessonsError(AllLessonsError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result lessonLoading(LessonLoading value),
    Result lessonLoaded(LessonLoaded value),
    Result lessonError(LessonError value),
    Result allLessonsLoading(AllLessonsLoading value),
    Result allLessonsLoaded(AllLessonsLoaded value),
    Result allLessonsError(AllLessonsError value),
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
    @required Result allLessonsLoading(),
    @required Result allLessonsLoaded(ObjectList<Lesson> lessons),
    @required Result allLessonsError(LessonFailure error),
  }) {
    assert(initial != null);
    assert(lessonLoading != null);
    assert(lessonLoaded != null);
    assert(lessonError != null);
    assert(allLessonsLoading != null);
    assert(allLessonsLoaded != null);
    assert(allLessonsError != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result lessonLoading(),
    Result lessonLoaded(Lesson lesson),
    Result lessonError(LessonFailure error),
    Result allLessonsLoading(),
    Result allLessonsLoaded(ObjectList<Lesson> lessons),
    Result allLessonsError(LessonFailure error),
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
    @required Result allLessonsLoading(AllLessonsLoading value),
    @required Result allLessonsLoaded(AllLessonsLoaded value),
    @required Result allLessonsError(AllLessonsError value),
  }) {
    assert(initial != null);
    assert(lessonLoading != null);
    assert(lessonLoaded != null);
    assert(lessonError != null);
    assert(allLessonsLoading != null);
    assert(allLessonsLoaded != null);
    assert(allLessonsError != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result lessonLoading(LessonLoading value),
    Result lessonLoaded(LessonLoaded value),
    Result lessonError(LessonError value),
    Result allLessonsLoading(AllLessonsLoading value),
    Result allLessonsLoaded(AllLessonsLoaded value),
    Result allLessonsError(AllLessonsError value),
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
    @required Result allLessonsLoading(),
    @required Result allLessonsLoaded(ObjectList<Lesson> lessons),
    @required Result allLessonsError(LessonFailure error),
  }) {
    assert(initial != null);
    assert(lessonLoading != null);
    assert(lessonLoaded != null);
    assert(lessonError != null);
    assert(allLessonsLoading != null);
    assert(allLessonsLoaded != null);
    assert(allLessonsError != null);
    return lessonLoading();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result lessonLoading(),
    Result lessonLoaded(Lesson lesson),
    Result lessonError(LessonFailure error),
    Result allLessonsLoading(),
    Result allLessonsLoaded(ObjectList<Lesson> lessons),
    Result allLessonsError(LessonFailure error),
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
    @required Result allLessonsLoading(AllLessonsLoading value),
    @required Result allLessonsLoaded(AllLessonsLoaded value),
    @required Result allLessonsError(AllLessonsError value),
  }) {
    assert(initial != null);
    assert(lessonLoading != null);
    assert(lessonLoaded != null);
    assert(lessonError != null);
    assert(allLessonsLoading != null);
    assert(allLessonsLoaded != null);
    assert(allLessonsError != null);
    return lessonLoading(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result lessonLoading(LessonLoading value),
    Result lessonLoaded(LessonLoaded value),
    Result lessonError(LessonError value),
    Result allLessonsLoading(AllLessonsLoading value),
    Result allLessonsLoaded(AllLessonsLoaded value),
    Result allLessonsError(AllLessonsError value),
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
    @required Result allLessonsLoading(),
    @required Result allLessonsLoaded(ObjectList<Lesson> lessons),
    @required Result allLessonsError(LessonFailure error),
  }) {
    assert(initial != null);
    assert(lessonLoading != null);
    assert(lessonLoaded != null);
    assert(lessonError != null);
    assert(allLessonsLoading != null);
    assert(allLessonsLoaded != null);
    assert(allLessonsError != null);
    return lessonLoaded(lesson);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result lessonLoading(),
    Result lessonLoaded(Lesson lesson),
    Result lessonError(LessonFailure error),
    Result allLessonsLoading(),
    Result allLessonsLoaded(ObjectList<Lesson> lessons),
    Result allLessonsError(LessonFailure error),
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
    @required Result allLessonsLoading(AllLessonsLoading value),
    @required Result allLessonsLoaded(AllLessonsLoaded value),
    @required Result allLessonsError(AllLessonsError value),
  }) {
    assert(initial != null);
    assert(lessonLoading != null);
    assert(lessonLoaded != null);
    assert(lessonError != null);
    assert(allLessonsLoading != null);
    assert(allLessonsLoaded != null);
    assert(allLessonsError != null);
    return lessonLoaded(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result lessonLoading(LessonLoading value),
    Result lessonLoaded(LessonLoaded value),
    Result lessonError(LessonError value),
    Result allLessonsLoading(AllLessonsLoading value),
    Result allLessonsLoaded(AllLessonsLoaded value),
    Result allLessonsError(AllLessonsError value),
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
    @required Result allLessonsLoading(),
    @required Result allLessonsLoaded(ObjectList<Lesson> lessons),
    @required Result allLessonsError(LessonFailure error),
  }) {
    assert(initial != null);
    assert(lessonLoading != null);
    assert(lessonLoaded != null);
    assert(lessonError != null);
    assert(allLessonsLoading != null);
    assert(allLessonsLoaded != null);
    assert(allLessonsError != null);
    return lessonError(error);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result lessonLoading(),
    Result lessonLoaded(Lesson lesson),
    Result lessonError(LessonFailure error),
    Result allLessonsLoading(),
    Result allLessonsLoaded(ObjectList<Lesson> lessons),
    Result allLessonsError(LessonFailure error),
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
    @required Result allLessonsLoading(AllLessonsLoading value),
    @required Result allLessonsLoaded(AllLessonsLoaded value),
    @required Result allLessonsError(AllLessonsError value),
  }) {
    assert(initial != null);
    assert(lessonLoading != null);
    assert(lessonLoaded != null);
    assert(lessonError != null);
    assert(allLessonsLoading != null);
    assert(allLessonsLoaded != null);
    assert(allLessonsError != null);
    return lessonError(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result lessonLoading(LessonLoading value),
    Result lessonLoaded(LessonLoaded value),
    Result lessonError(LessonError value),
    Result allLessonsLoading(AllLessonsLoading value),
    Result allLessonsLoaded(AllLessonsLoaded value),
    Result allLessonsError(AllLessonsError value),
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

abstract class $AllLessonsLoadingCopyWith<$Res> {
  factory $AllLessonsLoadingCopyWith(
          AllLessonsLoading value, $Res Function(AllLessonsLoading) then) =
      _$AllLessonsLoadingCopyWithImpl<$Res>;
}

class _$AllLessonsLoadingCopyWithImpl<$Res>
    extends _$LessonStateCopyWithImpl<$Res>
    implements $AllLessonsLoadingCopyWith<$Res> {
  _$AllLessonsLoadingCopyWithImpl(
      AllLessonsLoading _value, $Res Function(AllLessonsLoading) _then)
      : super(_value, (v) => _then(v as AllLessonsLoading));

  @override
  AllLessonsLoading get _value => super._value as AllLessonsLoading;
}

class _$AllLessonsLoading
    with DiagnosticableTreeMixin
    implements AllLessonsLoading {
  const _$AllLessonsLoading();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LessonState.allLessonsLoading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LessonState.allLessonsLoading'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is AllLessonsLoading);
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
    @required Result allLessonsLoading(),
    @required Result allLessonsLoaded(ObjectList<Lesson> lessons),
    @required Result allLessonsError(LessonFailure error),
  }) {
    assert(initial != null);
    assert(lessonLoading != null);
    assert(lessonLoaded != null);
    assert(lessonError != null);
    assert(allLessonsLoading != null);
    assert(allLessonsLoaded != null);
    assert(allLessonsError != null);
    return allLessonsLoading();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result lessonLoading(),
    Result lessonLoaded(Lesson lesson),
    Result lessonError(LessonFailure error),
    Result allLessonsLoading(),
    Result allLessonsLoaded(ObjectList<Lesson> lessons),
    Result allLessonsError(LessonFailure error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (allLessonsLoading != null) {
      return allLessonsLoading();
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
    @required Result allLessonsLoading(AllLessonsLoading value),
    @required Result allLessonsLoaded(AllLessonsLoaded value),
    @required Result allLessonsError(AllLessonsError value),
  }) {
    assert(initial != null);
    assert(lessonLoading != null);
    assert(lessonLoaded != null);
    assert(lessonError != null);
    assert(allLessonsLoading != null);
    assert(allLessonsLoaded != null);
    assert(allLessonsError != null);
    return allLessonsLoading(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result lessonLoading(LessonLoading value),
    Result lessonLoaded(LessonLoaded value),
    Result lessonError(LessonError value),
    Result allLessonsLoading(AllLessonsLoading value),
    Result allLessonsLoaded(AllLessonsLoaded value),
    Result allLessonsError(AllLessonsError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (allLessonsLoading != null) {
      return allLessonsLoading(this);
    }
    return orElse();
  }
}

abstract class AllLessonsLoading implements LessonState {
  const factory AllLessonsLoading() = _$AllLessonsLoading;
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
    @required Result allLessonsLoading(),
    @required Result allLessonsLoaded(ObjectList<Lesson> lessons),
    @required Result allLessonsError(LessonFailure error),
  }) {
    assert(initial != null);
    assert(lessonLoading != null);
    assert(lessonLoaded != null);
    assert(lessonError != null);
    assert(allLessonsLoading != null);
    assert(allLessonsLoaded != null);
    assert(allLessonsError != null);
    return allLessonsLoaded(lessons);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result lessonLoading(),
    Result lessonLoaded(Lesson lesson),
    Result lessonError(LessonFailure error),
    Result allLessonsLoading(),
    Result allLessonsLoaded(ObjectList<Lesson> lessons),
    Result allLessonsError(LessonFailure error),
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
    @required Result allLessonsLoading(AllLessonsLoading value),
    @required Result allLessonsLoaded(AllLessonsLoaded value),
    @required Result allLessonsError(AllLessonsError value),
  }) {
    assert(initial != null);
    assert(lessonLoading != null);
    assert(lessonLoaded != null);
    assert(lessonError != null);
    assert(allLessonsLoading != null);
    assert(allLessonsLoaded != null);
    assert(allLessonsError != null);
    return allLessonsLoaded(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result lessonLoading(LessonLoading value),
    Result lessonLoaded(LessonLoaded value),
    Result lessonError(LessonError value),
    Result allLessonsLoading(AllLessonsLoading value),
    Result allLessonsLoaded(AllLessonsLoaded value),
    Result allLessonsError(AllLessonsError value),
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

abstract class $AllLessonsErrorCopyWith<$Res> {
  factory $AllLessonsErrorCopyWith(
          AllLessonsError value, $Res Function(AllLessonsError) then) =
      _$AllLessonsErrorCopyWithImpl<$Res>;
  $Res call({LessonFailure error});

  $LessonFailureCopyWith<$Res> get error;
}

class _$AllLessonsErrorCopyWithImpl<$Res>
    extends _$LessonStateCopyWithImpl<$Res>
    implements $AllLessonsErrorCopyWith<$Res> {
  _$AllLessonsErrorCopyWithImpl(
      AllLessonsError _value, $Res Function(AllLessonsError) _then)
      : super(_value, (v) => _then(v as AllLessonsError));

  @override
  AllLessonsError get _value => super._value as AllLessonsError;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(AllLessonsError(
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

class _$AllLessonsError
    with DiagnosticableTreeMixin
    implements AllLessonsError {
  const _$AllLessonsError(this.error) : assert(error != null);

  @override
  final LessonFailure error;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LessonState.allLessonsError(error: $error)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LessonState.allLessonsError'))
      ..add(DiagnosticsProperty('error', error));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AllLessonsError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  $AllLessonsErrorCopyWith<AllLessonsError> get copyWith =>
      _$AllLessonsErrorCopyWithImpl<AllLessonsError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result lessonLoading(),
    @required Result lessonLoaded(Lesson lesson),
    @required Result lessonError(LessonFailure error),
    @required Result allLessonsLoading(),
    @required Result allLessonsLoaded(ObjectList<Lesson> lessons),
    @required Result allLessonsError(LessonFailure error),
  }) {
    assert(initial != null);
    assert(lessonLoading != null);
    assert(lessonLoaded != null);
    assert(lessonError != null);
    assert(allLessonsLoading != null);
    assert(allLessonsLoaded != null);
    assert(allLessonsError != null);
    return allLessonsError(error);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result lessonLoading(),
    Result lessonLoaded(Lesson lesson),
    Result lessonError(LessonFailure error),
    Result allLessonsLoading(),
    Result allLessonsLoaded(ObjectList<Lesson> lessons),
    Result allLessonsError(LessonFailure error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (allLessonsError != null) {
      return allLessonsError(error);
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
    @required Result allLessonsLoading(AllLessonsLoading value),
    @required Result allLessonsLoaded(AllLessonsLoaded value),
    @required Result allLessonsError(AllLessonsError value),
  }) {
    assert(initial != null);
    assert(lessonLoading != null);
    assert(lessonLoaded != null);
    assert(lessonError != null);
    assert(allLessonsLoading != null);
    assert(allLessonsLoaded != null);
    assert(allLessonsError != null);
    return allLessonsError(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result lessonLoading(LessonLoading value),
    Result lessonLoaded(LessonLoaded value),
    Result lessonError(LessonError value),
    Result allLessonsLoading(AllLessonsLoading value),
    Result allLessonsLoaded(AllLessonsLoaded value),
    Result allLessonsError(AllLessonsError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (allLessonsError != null) {
      return allLessonsError(this);
    }
    return orElse();
  }
}

abstract class AllLessonsError implements LessonState {
  const factory AllLessonsError(LessonFailure error) = _$AllLessonsError;

  LessonFailure get error;
  $AllLessonsErrorCopyWith<AllLessonsError> get copyWith;
}
