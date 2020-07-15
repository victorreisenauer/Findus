// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'lesson_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$LessonFailureTearOff {
  const _$LessonFailureTearOff();

  Unexpected unexpected() {
    return const Unexpected();
  }

  UnableToUpdate unableToUpdate() {
    return const UnableToUpdate();
  }

  DeviceOffline deviceOffline() {
    return const DeviceOffline();
  }

  NoCachedLessons noCachedLessons() {
    return const NoCachedLessons();
  }

  LessonNotFound lessonNotFound({String failedId}) {
    return LessonNotFound(
      failedId: failedId,
    );
  }
}

// ignore: unused_element
const $LessonFailure = _$LessonFailureTearOff();

mixin _$LessonFailure {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result unexpected(),
    @required Result unableToUpdate(),
    @required Result deviceOffline(),
    @required Result noCachedLessons(),
    @required Result lessonNotFound(String failedId),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result unexpected(),
    Result unableToUpdate(),
    Result deviceOffline(),
    Result noCachedLessons(),
    Result lessonNotFound(String failedId),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result unexpected(Unexpected value),
    @required Result unableToUpdate(UnableToUpdate value),
    @required Result deviceOffline(DeviceOffline value),
    @required Result noCachedLessons(NoCachedLessons value),
    @required Result lessonNotFound(LessonNotFound value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result unexpected(Unexpected value),
    Result unableToUpdate(UnableToUpdate value),
    Result deviceOffline(DeviceOffline value),
    Result noCachedLessons(NoCachedLessons value),
    Result lessonNotFound(LessonNotFound value),
    @required Result orElse(),
  });
}

abstract class $LessonFailureCopyWith<$Res> {
  factory $LessonFailureCopyWith(LessonFailure value, $Res Function(LessonFailure) then) =
      _$LessonFailureCopyWithImpl<$Res>;
}

class _$LessonFailureCopyWithImpl<$Res> implements $LessonFailureCopyWith<$Res> {
  _$LessonFailureCopyWithImpl(this._value, this._then);

  final LessonFailure _value;
  // ignore: unused_field
  final $Res Function(LessonFailure) _then;
}

abstract class $UnexpectedCopyWith<$Res> {
  factory $UnexpectedCopyWith(Unexpected value, $Res Function(Unexpected) then) = _$UnexpectedCopyWithImpl<$Res>;
}

class _$UnexpectedCopyWithImpl<$Res> extends _$LessonFailureCopyWithImpl<$Res> implements $UnexpectedCopyWith<$Res> {
  _$UnexpectedCopyWithImpl(Unexpected _value, $Res Function(Unexpected) _then)
      : super(_value, (v) => _then(v as Unexpected));

  @override
  Unexpected get _value => super._value as Unexpected;
}

class _$Unexpected implements Unexpected {
  const _$Unexpected();

  @override
  String toString() {
    return 'LessonFailure.unexpected()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Unexpected);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result unexpected(),
    @required Result unableToUpdate(),
    @required Result deviceOffline(),
    @required Result noCachedLessons(),
    @required Result lessonNotFound(String failedId),
  }) {
    assert(unexpected != null);
    assert(unableToUpdate != null);
    assert(deviceOffline != null);
    assert(noCachedLessons != null);
    assert(lessonNotFound != null);
    return unexpected();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result unexpected(),
    Result unableToUpdate(),
    Result deviceOffline(),
    Result noCachedLessons(),
    Result lessonNotFound(String failedId),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unexpected != null) {
      return unexpected();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result unexpected(Unexpected value),
    @required Result unableToUpdate(UnableToUpdate value),
    @required Result deviceOffline(DeviceOffline value),
    @required Result noCachedLessons(NoCachedLessons value),
    @required Result lessonNotFound(LessonNotFound value),
  }) {
    assert(unexpected != null);
    assert(unableToUpdate != null);
    assert(deviceOffline != null);
    assert(noCachedLessons != null);
    assert(lessonNotFound != null);
    return unexpected(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result unexpected(Unexpected value),
    Result unableToUpdate(UnableToUpdate value),
    Result deviceOffline(DeviceOffline value),
    Result noCachedLessons(NoCachedLessons value),
    Result lessonNotFound(LessonNotFound value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unexpected != null) {
      return unexpected(this);
    }
    return orElse();
  }
}

abstract class Unexpected implements LessonFailure {
  const factory Unexpected() = _$Unexpected;
}

abstract class $UnableToUpdateCopyWith<$Res> {
  factory $UnableToUpdateCopyWith(UnableToUpdate value, $Res Function(UnableToUpdate) then) =
      _$UnableToUpdateCopyWithImpl<$Res>;
}

class _$UnableToUpdateCopyWithImpl<$Res> extends _$LessonFailureCopyWithImpl<$Res>
    implements $UnableToUpdateCopyWith<$Res> {
  _$UnableToUpdateCopyWithImpl(UnableToUpdate _value, $Res Function(UnableToUpdate) _then)
      : super(_value, (v) => _then(v as UnableToUpdate));

  @override
  UnableToUpdate get _value => super._value as UnableToUpdate;
}

class _$UnableToUpdate implements UnableToUpdate {
  const _$UnableToUpdate();

  @override
  String toString() {
    return 'LessonFailure.unableToUpdate()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is UnableToUpdate);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result unexpected(),
    @required Result unableToUpdate(),
    @required Result deviceOffline(),
    @required Result noCachedLessons(),
    @required Result lessonNotFound(String failedId),
  }) {
    assert(unexpected != null);
    assert(unableToUpdate != null);
    assert(deviceOffline != null);
    assert(noCachedLessons != null);
    assert(lessonNotFound != null);
    return unableToUpdate();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result unexpected(),
    Result unableToUpdate(),
    Result deviceOffline(),
    Result noCachedLessons(),
    Result lessonNotFound(String failedId),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unableToUpdate != null) {
      return unableToUpdate();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result unexpected(Unexpected value),
    @required Result unableToUpdate(UnableToUpdate value),
    @required Result deviceOffline(DeviceOffline value),
    @required Result noCachedLessons(NoCachedLessons value),
    @required Result lessonNotFound(LessonNotFound value),
  }) {
    assert(unexpected != null);
    assert(unableToUpdate != null);
    assert(deviceOffline != null);
    assert(noCachedLessons != null);
    assert(lessonNotFound != null);
    return unableToUpdate(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result unexpected(Unexpected value),
    Result unableToUpdate(UnableToUpdate value),
    Result deviceOffline(DeviceOffline value),
    Result noCachedLessons(NoCachedLessons value),
    Result lessonNotFound(LessonNotFound value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unableToUpdate != null) {
      return unableToUpdate(this);
    }
    return orElse();
  }
}

abstract class UnableToUpdate implements LessonFailure {
  const factory UnableToUpdate() = _$UnableToUpdate;
}

abstract class $DeviceOfflineCopyWith<$Res> {
  factory $DeviceOfflineCopyWith(DeviceOffline value, $Res Function(DeviceOffline) then) =
      _$DeviceOfflineCopyWithImpl<$Res>;
}

class _$DeviceOfflineCopyWithImpl<$Res> extends _$LessonFailureCopyWithImpl<$Res>
    implements $DeviceOfflineCopyWith<$Res> {
  _$DeviceOfflineCopyWithImpl(DeviceOffline _value, $Res Function(DeviceOffline) _then)
      : super(_value, (v) => _then(v as DeviceOffline));

  @override
  DeviceOffline get _value => super._value as DeviceOffline;
}

class _$DeviceOffline implements DeviceOffline {
  const _$DeviceOffline();

  @override
  String toString() {
    return 'LessonFailure.deviceOffline()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is DeviceOffline);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result unexpected(),
    @required Result unableToUpdate(),
    @required Result deviceOffline(),
    @required Result noCachedLessons(),
    @required Result lessonNotFound(String failedId),
  }) {
    assert(unexpected != null);
    assert(unableToUpdate != null);
    assert(deviceOffline != null);
    assert(noCachedLessons != null);
    assert(lessonNotFound != null);
    return deviceOffline();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result unexpected(),
    Result unableToUpdate(),
    Result deviceOffline(),
    Result noCachedLessons(),
    Result lessonNotFound(String failedId),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deviceOffline != null) {
      return deviceOffline();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result unexpected(Unexpected value),
    @required Result unableToUpdate(UnableToUpdate value),
    @required Result deviceOffline(DeviceOffline value),
    @required Result noCachedLessons(NoCachedLessons value),
    @required Result lessonNotFound(LessonNotFound value),
  }) {
    assert(unexpected != null);
    assert(unableToUpdate != null);
    assert(deviceOffline != null);
    assert(noCachedLessons != null);
    assert(lessonNotFound != null);
    return deviceOffline(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result unexpected(Unexpected value),
    Result unableToUpdate(UnableToUpdate value),
    Result deviceOffline(DeviceOffline value),
    Result noCachedLessons(NoCachedLessons value),
    Result lessonNotFound(LessonNotFound value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deviceOffline != null) {
      return deviceOffline(this);
    }
    return orElse();
  }
}

abstract class DeviceOffline implements LessonFailure {
  const factory DeviceOffline() = _$DeviceOffline;
}

abstract class $NoCachedLessonsCopyWith<$Res> {
  factory $NoCachedLessonsCopyWith(NoCachedLessons value, $Res Function(NoCachedLessons) then) =
      _$NoCachedLessonsCopyWithImpl<$Res>;
}

class _$NoCachedLessonsCopyWithImpl<$Res> extends _$LessonFailureCopyWithImpl<$Res>
    implements $NoCachedLessonsCopyWith<$Res> {
  _$NoCachedLessonsCopyWithImpl(NoCachedLessons _value, $Res Function(NoCachedLessons) _then)
      : super(_value, (v) => _then(v as NoCachedLessons));

  @override
  NoCachedLessons get _value => super._value as NoCachedLessons;
}

class _$NoCachedLessons implements NoCachedLessons {
  const _$NoCachedLessons();

  @override
  String toString() {
    return 'LessonFailure.noCachedLessons()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is NoCachedLessons);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result unexpected(),
    @required Result unableToUpdate(),
    @required Result deviceOffline(),
    @required Result noCachedLessons(),
    @required Result lessonNotFound(String failedId),
  }) {
    assert(unexpected != null);
    assert(unableToUpdate != null);
    assert(deviceOffline != null);
    assert(noCachedLessons != null);
    assert(lessonNotFound != null);
    return noCachedLessons();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result unexpected(),
    Result unableToUpdate(),
    Result deviceOffline(),
    Result noCachedLessons(),
    Result lessonNotFound(String failedId),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (noCachedLessons != null) {
      return noCachedLessons();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result unexpected(Unexpected value),
    @required Result unableToUpdate(UnableToUpdate value),
    @required Result deviceOffline(DeviceOffline value),
    @required Result noCachedLessons(NoCachedLessons value),
    @required Result lessonNotFound(LessonNotFound value),
  }) {
    assert(unexpected != null);
    assert(unableToUpdate != null);
    assert(deviceOffline != null);
    assert(noCachedLessons != null);
    assert(lessonNotFound != null);
    return noCachedLessons(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result unexpected(Unexpected value),
    Result unableToUpdate(UnableToUpdate value),
    Result deviceOffline(DeviceOffline value),
    Result noCachedLessons(NoCachedLessons value),
    Result lessonNotFound(LessonNotFound value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (noCachedLessons != null) {
      return noCachedLessons(this);
    }
    return orElse();
  }
}

abstract class NoCachedLessons implements LessonFailure {
  const factory NoCachedLessons() = _$NoCachedLessons;
}

abstract class $LessonNotFoundCopyWith<$Res> {
  factory $LessonNotFoundCopyWith(LessonNotFound value, $Res Function(LessonNotFound) then) =
      _$LessonNotFoundCopyWithImpl<$Res>;
  $Res call({String failedId});
}

class _$LessonNotFoundCopyWithImpl<$Res> extends _$LessonFailureCopyWithImpl<$Res>
    implements $LessonNotFoundCopyWith<$Res> {
  _$LessonNotFoundCopyWithImpl(LessonNotFound _value, $Res Function(LessonNotFound) _then)
      : super(_value, (v) => _then(v as LessonNotFound));

  @override
  LessonNotFound get _value => super._value as LessonNotFound;

  @override
  $Res call({
    Object failedId = freezed,
  }) {
    return _then(LessonNotFound(
      failedId: failedId == freezed ? _value.failedId : failedId as String,
    ));
  }
}

class _$LessonNotFound implements LessonNotFound {
  const _$LessonNotFound({this.failedId});

  @override
  final String failedId;

  @override
  String toString() {
    return 'LessonFailure.lessonNotFound(failedId: $failedId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LessonNotFound &&
            (identical(other.failedId, failedId) || const DeepCollectionEquality().equals(other.failedId, failedId)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedId);

  @override
  $LessonNotFoundCopyWith<LessonNotFound> get copyWith =>
      _$LessonNotFoundCopyWithImpl<LessonNotFound>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result unexpected(),
    @required Result unableToUpdate(),
    @required Result deviceOffline(),
    @required Result noCachedLessons(),
    @required Result lessonNotFound(String failedId),
  }) {
    assert(unexpected != null);
    assert(unableToUpdate != null);
    assert(deviceOffline != null);
    assert(noCachedLessons != null);
    assert(lessonNotFound != null);
    return lessonNotFound(failedId);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result unexpected(),
    Result unableToUpdate(),
    Result deviceOffline(),
    Result noCachedLessons(),
    Result lessonNotFound(String failedId),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (lessonNotFound != null) {
      return lessonNotFound(failedId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result unexpected(Unexpected value),
    @required Result unableToUpdate(UnableToUpdate value),
    @required Result deviceOffline(DeviceOffline value),
    @required Result noCachedLessons(NoCachedLessons value),
    @required Result lessonNotFound(LessonNotFound value),
  }) {
    assert(unexpected != null);
    assert(unableToUpdate != null);
    assert(deviceOffline != null);
    assert(noCachedLessons != null);
    assert(lessonNotFound != null);
    return lessonNotFound(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result unexpected(Unexpected value),
    Result unableToUpdate(UnableToUpdate value),
    Result deviceOffline(DeviceOffline value),
    Result noCachedLessons(NoCachedLessons value),
    Result lessonNotFound(LessonNotFound value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (lessonNotFound != null) {
      return lessonNotFound(this);
    }
    return orElse();
  }
}

abstract class LessonNotFound implements LessonFailure {
  const factory LessonNotFound({String failedId}) = _$LessonNotFound;

  String get failedId;
  $LessonNotFoundCopyWith<LessonNotFound> get copyWith;
}
