// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ValueFailureTearOff {
  const _$ValueFailureTearOff();

  ExceedingLength<T> exceedingLength<T>(
      {@required T failedValue, @required int max}) {
    return ExceedingLength<T>(
      failedValue: failedValue,
      max: max,
    );
  }

  Empty<T> empty<T>({@required T failedValue}) {
    return Empty<T>(
      failedValue: failedValue,
    );
  }

  Multiline<T> multiline<T>({@required T failedValue}) {
    return Multiline<T>(
      failedValue: failedValue,
    );
  }

  NumberTooLarge<T> numberTooLarge<T>(
      {@required T failedValue, @required num max}) {
    return NumberTooLarge<T>(
      failedValue: failedValue,
      max: max,
    );
  }

  ListTooLong<T> listTooLong<T>({@required T failedValue, @required int max}) {
    return ListTooLong<T>(
      failedValue: failedValue,
      max: max,
    );
  }

  InvalidEmail<T> invalidEmail<T>({@required T failedValue}) {
    return InvalidEmail<T>(
      failedValue: failedValue,
    );
  }

  ShortPassword<T> shortPassword<T>({@required T failedValue}) {
    return ShortPassword<T>(
      failedValue: failedValue,
    );
  }

  InvalidPhotoUrl<T> invalidPhotoUrl<T>({@required T failedValue}) {
    return InvalidPhotoUrl<T>(
      failedValue: failedValue,
    );
  }

  NotOfObjectType<T> notOfObjectType<T>(
      {@required T failedValue, @required Type validType}) {
    return NotOfObjectType<T>(
      failedValue: failedValue,
      validType: validType,
    );
  }
}

// ignore: unused_element
const $ValueFailure = _$ValueFailureTearOff();

mixin _$ValueFailure<T> {
  T get failedValue;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result exceedingLength(T failedValue, int max),
    @required Result empty(T failedValue),
    @required Result multiline(T failedValue),
    @required Result numberTooLarge(T failedValue, num max),
    @required Result listTooLong(T failedValue, int max),
    @required Result invalidEmail(T failedValue),
    @required Result shortPassword(T failedValue),
    @required Result invalidPhotoUrl(T failedValue),
    @required Result notOfObjectType(T failedValue, Type validType),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result exceedingLength(T failedValue, int max),
    Result empty(T failedValue),
    Result multiline(T failedValue),
    Result numberTooLarge(T failedValue, num max),
    Result listTooLong(T failedValue, int max),
    Result invalidEmail(T failedValue),
    Result shortPassword(T failedValue),
    Result invalidPhotoUrl(T failedValue),
    Result notOfObjectType(T failedValue, Type validType),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result exceedingLength(ExceedingLength<T> value),
    @required Result empty(Empty<T> value),
    @required Result multiline(Multiline<T> value),
    @required Result numberTooLarge(NumberTooLarge<T> value),
    @required Result listTooLong(ListTooLong<T> value),
    @required Result invalidEmail(InvalidEmail<T> value),
    @required Result shortPassword(ShortPassword<T> value),
    @required Result invalidPhotoUrl(InvalidPhotoUrl<T> value),
    @required Result notOfObjectType(NotOfObjectType<T> value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result exceedingLength(ExceedingLength<T> value),
    Result empty(Empty<T> value),
    Result multiline(Multiline<T> value),
    Result numberTooLarge(NumberTooLarge<T> value),
    Result listTooLong(ListTooLong<T> value),
    Result invalidEmail(InvalidEmail<T> value),
    Result shortPassword(ShortPassword<T> value),
    Result invalidPhotoUrl(InvalidPhotoUrl<T> value),
    Result notOfObjectType(NotOfObjectType<T> value),
    @required Result orElse(),
  });

  $ValueFailureCopyWith<T, ValueFailure<T>> get copyWith;
}

abstract class $ValueFailureCopyWith<T, $Res> {
  factory $ValueFailureCopyWith(
          ValueFailure<T> value, $Res Function(ValueFailure<T>) then) =
      _$ValueFailureCopyWithImpl<T, $Res>;
  $Res call({T failedValue});
}

class _$ValueFailureCopyWithImpl<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  _$ValueFailureCopyWithImpl(this._value, this._then);

  final ValueFailure<T> _value;
  // ignore: unused_field
  final $Res Function(ValueFailure<T>) _then;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(_value.copyWith(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
    ));
  }
}

abstract class $ExceedingLengthCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $ExceedingLengthCopyWith(
          ExceedingLength<T> value, $Res Function(ExceedingLength<T>) then) =
      _$ExceedingLengthCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue, int max});
}

class _$ExceedingLengthCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $ExceedingLengthCopyWith<T, $Res> {
  _$ExceedingLengthCopyWithImpl(
      ExceedingLength<T> _value, $Res Function(ExceedingLength<T>) _then)
      : super(_value, (v) => _then(v as ExceedingLength<T>));

  @override
  ExceedingLength<T> get _value => super._value as ExceedingLength<T>;

  @override
  $Res call({
    Object failedValue = freezed,
    Object max = freezed,
  }) {
    return _then(ExceedingLength<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
      max: max == freezed ? _value.max : max as int,
    ));
  }
}

class _$ExceedingLength<T>
    with DiagnosticableTreeMixin
    implements ExceedingLength<T> {
  const _$ExceedingLength({@required this.failedValue, @required this.max})
      : assert(failedValue != null),
        assert(max != null);

  @override
  final T failedValue;
  @override
  final int max;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ValueFailure<$T>.exceedingLength(failedValue: $failedValue, max: $max)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ValueFailure<$T>.exceedingLength'))
      ..add(DiagnosticsProperty('failedValue', failedValue))
      ..add(DiagnosticsProperty('max', max));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExceedingLength<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)) &&
            (identical(other.max, max) ||
                const DeepCollectionEquality().equals(other.max, max)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failedValue) ^
      const DeepCollectionEquality().hash(max);

  @override
  $ExceedingLengthCopyWith<T, ExceedingLength<T>> get copyWith =>
      _$ExceedingLengthCopyWithImpl<T, ExceedingLength<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result exceedingLength(T failedValue, int max),
    @required Result empty(T failedValue),
    @required Result multiline(T failedValue),
    @required Result numberTooLarge(T failedValue, num max),
    @required Result listTooLong(T failedValue, int max),
    @required Result invalidEmail(T failedValue),
    @required Result shortPassword(T failedValue),
    @required Result invalidPhotoUrl(T failedValue),
    @required Result notOfObjectType(T failedValue, Type validType),
  }) {
    assert(exceedingLength != null);
    assert(empty != null);
    assert(multiline != null);
    assert(numberTooLarge != null);
    assert(listTooLong != null);
    assert(invalidEmail != null);
    assert(shortPassword != null);
    assert(invalidPhotoUrl != null);
    assert(notOfObjectType != null);
    return exceedingLength(failedValue, max);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result exceedingLength(T failedValue, int max),
    Result empty(T failedValue),
    Result multiline(T failedValue),
    Result numberTooLarge(T failedValue, num max),
    Result listTooLong(T failedValue, int max),
    Result invalidEmail(T failedValue),
    Result shortPassword(T failedValue),
    Result invalidPhotoUrl(T failedValue),
    Result notOfObjectType(T failedValue, Type validType),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (exceedingLength != null) {
      return exceedingLength(failedValue, max);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result exceedingLength(ExceedingLength<T> value),
    @required Result empty(Empty<T> value),
    @required Result multiline(Multiline<T> value),
    @required Result numberTooLarge(NumberTooLarge<T> value),
    @required Result listTooLong(ListTooLong<T> value),
    @required Result invalidEmail(InvalidEmail<T> value),
    @required Result shortPassword(ShortPassword<T> value),
    @required Result invalidPhotoUrl(InvalidPhotoUrl<T> value),
    @required Result notOfObjectType(NotOfObjectType<T> value),
  }) {
    assert(exceedingLength != null);
    assert(empty != null);
    assert(multiline != null);
    assert(numberTooLarge != null);
    assert(listTooLong != null);
    assert(invalidEmail != null);
    assert(shortPassword != null);
    assert(invalidPhotoUrl != null);
    assert(notOfObjectType != null);
    return exceedingLength(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result exceedingLength(ExceedingLength<T> value),
    Result empty(Empty<T> value),
    Result multiline(Multiline<T> value),
    Result numberTooLarge(NumberTooLarge<T> value),
    Result listTooLong(ListTooLong<T> value),
    Result invalidEmail(InvalidEmail<T> value),
    Result shortPassword(ShortPassword<T> value),
    Result invalidPhotoUrl(InvalidPhotoUrl<T> value),
    Result notOfObjectType(NotOfObjectType<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (exceedingLength != null) {
      return exceedingLength(this);
    }
    return orElse();
  }
}

abstract class ExceedingLength<T> implements ValueFailure<T> {
  const factory ExceedingLength({@required T failedValue, @required int max}) =
      _$ExceedingLength<T>;

  @override
  T get failedValue;
  int get max;
  @override
  $ExceedingLengthCopyWith<T, ExceedingLength<T>> get copyWith;
}

abstract class $EmptyCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $EmptyCopyWith(Empty<T> value, $Res Function(Empty<T>) then) =
      _$EmptyCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

class _$EmptyCopyWithImpl<T, $Res> extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $EmptyCopyWith<T, $Res> {
  _$EmptyCopyWithImpl(Empty<T> _value, $Res Function(Empty<T>) _then)
      : super(_value, (v) => _then(v as Empty<T>));

  @override
  Empty<T> get _value => super._value as Empty<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(Empty<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
    ));
  }
}

class _$Empty<T> with DiagnosticableTreeMixin implements Empty<T> {
  const _$Empty({@required this.failedValue}) : assert(failedValue != null);

  @override
  final T failedValue;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ValueFailure<$T>.empty(failedValue: $failedValue)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ValueFailure<$T>.empty'))
      ..add(DiagnosticsProperty('failedValue', failedValue));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Empty<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @override
  $EmptyCopyWith<T, Empty<T>> get copyWith =>
      _$EmptyCopyWithImpl<T, Empty<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result exceedingLength(T failedValue, int max),
    @required Result empty(T failedValue),
    @required Result multiline(T failedValue),
    @required Result numberTooLarge(T failedValue, num max),
    @required Result listTooLong(T failedValue, int max),
    @required Result invalidEmail(T failedValue),
    @required Result shortPassword(T failedValue),
    @required Result invalidPhotoUrl(T failedValue),
    @required Result notOfObjectType(T failedValue, Type validType),
  }) {
    assert(exceedingLength != null);
    assert(empty != null);
    assert(multiline != null);
    assert(numberTooLarge != null);
    assert(listTooLong != null);
    assert(invalidEmail != null);
    assert(shortPassword != null);
    assert(invalidPhotoUrl != null);
    assert(notOfObjectType != null);
    return empty(failedValue);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result exceedingLength(T failedValue, int max),
    Result empty(T failedValue),
    Result multiline(T failedValue),
    Result numberTooLarge(T failedValue, num max),
    Result listTooLong(T failedValue, int max),
    Result invalidEmail(T failedValue),
    Result shortPassword(T failedValue),
    Result invalidPhotoUrl(T failedValue),
    Result notOfObjectType(T failedValue, Type validType),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (empty != null) {
      return empty(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result exceedingLength(ExceedingLength<T> value),
    @required Result empty(Empty<T> value),
    @required Result multiline(Multiline<T> value),
    @required Result numberTooLarge(NumberTooLarge<T> value),
    @required Result listTooLong(ListTooLong<T> value),
    @required Result invalidEmail(InvalidEmail<T> value),
    @required Result shortPassword(ShortPassword<T> value),
    @required Result invalidPhotoUrl(InvalidPhotoUrl<T> value),
    @required Result notOfObjectType(NotOfObjectType<T> value),
  }) {
    assert(exceedingLength != null);
    assert(empty != null);
    assert(multiline != null);
    assert(numberTooLarge != null);
    assert(listTooLong != null);
    assert(invalidEmail != null);
    assert(shortPassword != null);
    assert(invalidPhotoUrl != null);
    assert(notOfObjectType != null);
    return empty(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result exceedingLength(ExceedingLength<T> value),
    Result empty(Empty<T> value),
    Result multiline(Multiline<T> value),
    Result numberTooLarge(NumberTooLarge<T> value),
    Result listTooLong(ListTooLong<T> value),
    Result invalidEmail(InvalidEmail<T> value),
    Result shortPassword(ShortPassword<T> value),
    Result invalidPhotoUrl(InvalidPhotoUrl<T> value),
    Result notOfObjectType(NotOfObjectType<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class Empty<T> implements ValueFailure<T> {
  const factory Empty({@required T failedValue}) = _$Empty<T>;

  @override
  T get failedValue;
  @override
  $EmptyCopyWith<T, Empty<T>> get copyWith;
}

abstract class $MultilineCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $MultilineCopyWith(
          Multiline<T> value, $Res Function(Multiline<T>) then) =
      _$MultilineCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

class _$MultilineCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $MultilineCopyWith<T, $Res> {
  _$MultilineCopyWithImpl(
      Multiline<T> _value, $Res Function(Multiline<T>) _then)
      : super(_value, (v) => _then(v as Multiline<T>));

  @override
  Multiline<T> get _value => super._value as Multiline<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(Multiline<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
    ));
  }
}

class _$Multiline<T> with DiagnosticableTreeMixin implements Multiline<T> {
  const _$Multiline({@required this.failedValue}) : assert(failedValue != null);

  @override
  final T failedValue;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ValueFailure<$T>.multiline(failedValue: $failedValue)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ValueFailure<$T>.multiline'))
      ..add(DiagnosticsProperty('failedValue', failedValue));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Multiline<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @override
  $MultilineCopyWith<T, Multiline<T>> get copyWith =>
      _$MultilineCopyWithImpl<T, Multiline<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result exceedingLength(T failedValue, int max),
    @required Result empty(T failedValue),
    @required Result multiline(T failedValue),
    @required Result numberTooLarge(T failedValue, num max),
    @required Result listTooLong(T failedValue, int max),
    @required Result invalidEmail(T failedValue),
    @required Result shortPassword(T failedValue),
    @required Result invalidPhotoUrl(T failedValue),
    @required Result notOfObjectType(T failedValue, Type validType),
  }) {
    assert(exceedingLength != null);
    assert(empty != null);
    assert(multiline != null);
    assert(numberTooLarge != null);
    assert(listTooLong != null);
    assert(invalidEmail != null);
    assert(shortPassword != null);
    assert(invalidPhotoUrl != null);
    assert(notOfObjectType != null);
    return multiline(failedValue);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result exceedingLength(T failedValue, int max),
    Result empty(T failedValue),
    Result multiline(T failedValue),
    Result numberTooLarge(T failedValue, num max),
    Result listTooLong(T failedValue, int max),
    Result invalidEmail(T failedValue),
    Result shortPassword(T failedValue),
    Result invalidPhotoUrl(T failedValue),
    Result notOfObjectType(T failedValue, Type validType),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (multiline != null) {
      return multiline(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result exceedingLength(ExceedingLength<T> value),
    @required Result empty(Empty<T> value),
    @required Result multiline(Multiline<T> value),
    @required Result numberTooLarge(NumberTooLarge<T> value),
    @required Result listTooLong(ListTooLong<T> value),
    @required Result invalidEmail(InvalidEmail<T> value),
    @required Result shortPassword(ShortPassword<T> value),
    @required Result invalidPhotoUrl(InvalidPhotoUrl<T> value),
    @required Result notOfObjectType(NotOfObjectType<T> value),
  }) {
    assert(exceedingLength != null);
    assert(empty != null);
    assert(multiline != null);
    assert(numberTooLarge != null);
    assert(listTooLong != null);
    assert(invalidEmail != null);
    assert(shortPassword != null);
    assert(invalidPhotoUrl != null);
    assert(notOfObjectType != null);
    return multiline(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result exceedingLength(ExceedingLength<T> value),
    Result empty(Empty<T> value),
    Result multiline(Multiline<T> value),
    Result numberTooLarge(NumberTooLarge<T> value),
    Result listTooLong(ListTooLong<T> value),
    Result invalidEmail(InvalidEmail<T> value),
    Result shortPassword(ShortPassword<T> value),
    Result invalidPhotoUrl(InvalidPhotoUrl<T> value),
    Result notOfObjectType(NotOfObjectType<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (multiline != null) {
      return multiline(this);
    }
    return orElse();
  }
}

abstract class Multiline<T> implements ValueFailure<T> {
  const factory Multiline({@required T failedValue}) = _$Multiline<T>;

  @override
  T get failedValue;
  @override
  $MultilineCopyWith<T, Multiline<T>> get copyWith;
}

abstract class $NumberTooLargeCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $NumberTooLargeCopyWith(
          NumberTooLarge<T> value, $Res Function(NumberTooLarge<T>) then) =
      _$NumberTooLargeCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue, num max});
}

class _$NumberTooLargeCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $NumberTooLargeCopyWith<T, $Res> {
  _$NumberTooLargeCopyWithImpl(
      NumberTooLarge<T> _value, $Res Function(NumberTooLarge<T>) _then)
      : super(_value, (v) => _then(v as NumberTooLarge<T>));

  @override
  NumberTooLarge<T> get _value => super._value as NumberTooLarge<T>;

  @override
  $Res call({
    Object failedValue = freezed,
    Object max = freezed,
  }) {
    return _then(NumberTooLarge<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
      max: max == freezed ? _value.max : max as num,
    ));
  }
}

class _$NumberTooLarge<T>
    with DiagnosticableTreeMixin
    implements NumberTooLarge<T> {
  const _$NumberTooLarge({@required this.failedValue, @required this.max})
      : assert(failedValue != null),
        assert(max != null);

  @override
  final T failedValue;
  @override
  final num max;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ValueFailure<$T>.numberTooLarge(failedValue: $failedValue, max: $max)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ValueFailure<$T>.numberTooLarge'))
      ..add(DiagnosticsProperty('failedValue', failedValue))
      ..add(DiagnosticsProperty('max', max));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NumberTooLarge<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)) &&
            (identical(other.max, max) ||
                const DeepCollectionEquality().equals(other.max, max)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failedValue) ^
      const DeepCollectionEquality().hash(max);

  @override
  $NumberTooLargeCopyWith<T, NumberTooLarge<T>> get copyWith =>
      _$NumberTooLargeCopyWithImpl<T, NumberTooLarge<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result exceedingLength(T failedValue, int max),
    @required Result empty(T failedValue),
    @required Result multiline(T failedValue),
    @required Result numberTooLarge(T failedValue, num max),
    @required Result listTooLong(T failedValue, int max),
    @required Result invalidEmail(T failedValue),
    @required Result shortPassword(T failedValue),
    @required Result invalidPhotoUrl(T failedValue),
    @required Result notOfObjectType(T failedValue, Type validType),
  }) {
    assert(exceedingLength != null);
    assert(empty != null);
    assert(multiline != null);
    assert(numberTooLarge != null);
    assert(listTooLong != null);
    assert(invalidEmail != null);
    assert(shortPassword != null);
    assert(invalidPhotoUrl != null);
    assert(notOfObjectType != null);
    return numberTooLarge(failedValue, max);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result exceedingLength(T failedValue, int max),
    Result empty(T failedValue),
    Result multiline(T failedValue),
    Result numberTooLarge(T failedValue, num max),
    Result listTooLong(T failedValue, int max),
    Result invalidEmail(T failedValue),
    Result shortPassword(T failedValue),
    Result invalidPhotoUrl(T failedValue),
    Result notOfObjectType(T failedValue, Type validType),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (numberTooLarge != null) {
      return numberTooLarge(failedValue, max);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result exceedingLength(ExceedingLength<T> value),
    @required Result empty(Empty<T> value),
    @required Result multiline(Multiline<T> value),
    @required Result numberTooLarge(NumberTooLarge<T> value),
    @required Result listTooLong(ListTooLong<T> value),
    @required Result invalidEmail(InvalidEmail<T> value),
    @required Result shortPassword(ShortPassword<T> value),
    @required Result invalidPhotoUrl(InvalidPhotoUrl<T> value),
    @required Result notOfObjectType(NotOfObjectType<T> value),
  }) {
    assert(exceedingLength != null);
    assert(empty != null);
    assert(multiline != null);
    assert(numberTooLarge != null);
    assert(listTooLong != null);
    assert(invalidEmail != null);
    assert(shortPassword != null);
    assert(invalidPhotoUrl != null);
    assert(notOfObjectType != null);
    return numberTooLarge(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result exceedingLength(ExceedingLength<T> value),
    Result empty(Empty<T> value),
    Result multiline(Multiline<T> value),
    Result numberTooLarge(NumberTooLarge<T> value),
    Result listTooLong(ListTooLong<T> value),
    Result invalidEmail(InvalidEmail<T> value),
    Result shortPassword(ShortPassword<T> value),
    Result invalidPhotoUrl(InvalidPhotoUrl<T> value),
    Result notOfObjectType(NotOfObjectType<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (numberTooLarge != null) {
      return numberTooLarge(this);
    }
    return orElse();
  }
}

abstract class NumberTooLarge<T> implements ValueFailure<T> {
  const factory NumberTooLarge({@required T failedValue, @required num max}) =
      _$NumberTooLarge<T>;

  @override
  T get failedValue;
  num get max;
  @override
  $NumberTooLargeCopyWith<T, NumberTooLarge<T>> get copyWith;
}

abstract class $ListTooLongCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $ListTooLongCopyWith(
          ListTooLong<T> value, $Res Function(ListTooLong<T>) then) =
      _$ListTooLongCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue, int max});
}

class _$ListTooLongCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $ListTooLongCopyWith<T, $Res> {
  _$ListTooLongCopyWithImpl(
      ListTooLong<T> _value, $Res Function(ListTooLong<T>) _then)
      : super(_value, (v) => _then(v as ListTooLong<T>));

  @override
  ListTooLong<T> get _value => super._value as ListTooLong<T>;

  @override
  $Res call({
    Object failedValue = freezed,
    Object max = freezed,
  }) {
    return _then(ListTooLong<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
      max: max == freezed ? _value.max : max as int,
    ));
  }
}

class _$ListTooLong<T> with DiagnosticableTreeMixin implements ListTooLong<T> {
  const _$ListTooLong({@required this.failedValue, @required this.max})
      : assert(failedValue != null),
        assert(max != null);

  @override
  final T failedValue;
  @override
  final int max;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ValueFailure<$T>.listTooLong(failedValue: $failedValue, max: $max)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ValueFailure<$T>.listTooLong'))
      ..add(DiagnosticsProperty('failedValue', failedValue))
      ..add(DiagnosticsProperty('max', max));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ListTooLong<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)) &&
            (identical(other.max, max) ||
                const DeepCollectionEquality().equals(other.max, max)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failedValue) ^
      const DeepCollectionEquality().hash(max);

  @override
  $ListTooLongCopyWith<T, ListTooLong<T>> get copyWith =>
      _$ListTooLongCopyWithImpl<T, ListTooLong<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result exceedingLength(T failedValue, int max),
    @required Result empty(T failedValue),
    @required Result multiline(T failedValue),
    @required Result numberTooLarge(T failedValue, num max),
    @required Result listTooLong(T failedValue, int max),
    @required Result invalidEmail(T failedValue),
    @required Result shortPassword(T failedValue),
    @required Result invalidPhotoUrl(T failedValue),
    @required Result notOfObjectType(T failedValue, Type validType),
  }) {
    assert(exceedingLength != null);
    assert(empty != null);
    assert(multiline != null);
    assert(numberTooLarge != null);
    assert(listTooLong != null);
    assert(invalidEmail != null);
    assert(shortPassword != null);
    assert(invalidPhotoUrl != null);
    assert(notOfObjectType != null);
    return listTooLong(failedValue, max);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result exceedingLength(T failedValue, int max),
    Result empty(T failedValue),
    Result multiline(T failedValue),
    Result numberTooLarge(T failedValue, num max),
    Result listTooLong(T failedValue, int max),
    Result invalidEmail(T failedValue),
    Result shortPassword(T failedValue),
    Result invalidPhotoUrl(T failedValue),
    Result notOfObjectType(T failedValue, Type validType),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (listTooLong != null) {
      return listTooLong(failedValue, max);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result exceedingLength(ExceedingLength<T> value),
    @required Result empty(Empty<T> value),
    @required Result multiline(Multiline<T> value),
    @required Result numberTooLarge(NumberTooLarge<T> value),
    @required Result listTooLong(ListTooLong<T> value),
    @required Result invalidEmail(InvalidEmail<T> value),
    @required Result shortPassword(ShortPassword<T> value),
    @required Result invalidPhotoUrl(InvalidPhotoUrl<T> value),
    @required Result notOfObjectType(NotOfObjectType<T> value),
  }) {
    assert(exceedingLength != null);
    assert(empty != null);
    assert(multiline != null);
    assert(numberTooLarge != null);
    assert(listTooLong != null);
    assert(invalidEmail != null);
    assert(shortPassword != null);
    assert(invalidPhotoUrl != null);
    assert(notOfObjectType != null);
    return listTooLong(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result exceedingLength(ExceedingLength<T> value),
    Result empty(Empty<T> value),
    Result multiline(Multiline<T> value),
    Result numberTooLarge(NumberTooLarge<T> value),
    Result listTooLong(ListTooLong<T> value),
    Result invalidEmail(InvalidEmail<T> value),
    Result shortPassword(ShortPassword<T> value),
    Result invalidPhotoUrl(InvalidPhotoUrl<T> value),
    Result notOfObjectType(NotOfObjectType<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (listTooLong != null) {
      return listTooLong(this);
    }
    return orElse();
  }
}

abstract class ListTooLong<T> implements ValueFailure<T> {
  const factory ListTooLong({@required T failedValue, @required int max}) =
      _$ListTooLong<T>;

  @override
  T get failedValue;
  int get max;
  @override
  $ListTooLongCopyWith<T, ListTooLong<T>> get copyWith;
}

abstract class $InvalidEmailCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $InvalidEmailCopyWith(
          InvalidEmail<T> value, $Res Function(InvalidEmail<T>) then) =
      _$InvalidEmailCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

class _$InvalidEmailCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $InvalidEmailCopyWith<T, $Res> {
  _$InvalidEmailCopyWithImpl(
      InvalidEmail<T> _value, $Res Function(InvalidEmail<T>) _then)
      : super(_value, (v) => _then(v as InvalidEmail<T>));

  @override
  InvalidEmail<T> get _value => super._value as InvalidEmail<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(InvalidEmail<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
    ));
  }
}

class _$InvalidEmail<T>
    with DiagnosticableTreeMixin
    implements InvalidEmail<T> {
  const _$InvalidEmail({@required this.failedValue})
      : assert(failedValue != null);

  @override
  final T failedValue;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ValueFailure<$T>.invalidEmail(failedValue: $failedValue)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ValueFailure<$T>.invalidEmail'))
      ..add(DiagnosticsProperty('failedValue', failedValue));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InvalidEmail<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @override
  $InvalidEmailCopyWith<T, InvalidEmail<T>> get copyWith =>
      _$InvalidEmailCopyWithImpl<T, InvalidEmail<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result exceedingLength(T failedValue, int max),
    @required Result empty(T failedValue),
    @required Result multiline(T failedValue),
    @required Result numberTooLarge(T failedValue, num max),
    @required Result listTooLong(T failedValue, int max),
    @required Result invalidEmail(T failedValue),
    @required Result shortPassword(T failedValue),
    @required Result invalidPhotoUrl(T failedValue),
    @required Result notOfObjectType(T failedValue, Type validType),
  }) {
    assert(exceedingLength != null);
    assert(empty != null);
    assert(multiline != null);
    assert(numberTooLarge != null);
    assert(listTooLong != null);
    assert(invalidEmail != null);
    assert(shortPassword != null);
    assert(invalidPhotoUrl != null);
    assert(notOfObjectType != null);
    return invalidEmail(failedValue);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result exceedingLength(T failedValue, int max),
    Result empty(T failedValue),
    Result multiline(T failedValue),
    Result numberTooLarge(T failedValue, num max),
    Result listTooLong(T failedValue, int max),
    Result invalidEmail(T failedValue),
    Result shortPassword(T failedValue),
    Result invalidPhotoUrl(T failedValue),
    Result notOfObjectType(T failedValue, Type validType),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidEmail != null) {
      return invalidEmail(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result exceedingLength(ExceedingLength<T> value),
    @required Result empty(Empty<T> value),
    @required Result multiline(Multiline<T> value),
    @required Result numberTooLarge(NumberTooLarge<T> value),
    @required Result listTooLong(ListTooLong<T> value),
    @required Result invalidEmail(InvalidEmail<T> value),
    @required Result shortPassword(ShortPassword<T> value),
    @required Result invalidPhotoUrl(InvalidPhotoUrl<T> value),
    @required Result notOfObjectType(NotOfObjectType<T> value),
  }) {
    assert(exceedingLength != null);
    assert(empty != null);
    assert(multiline != null);
    assert(numberTooLarge != null);
    assert(listTooLong != null);
    assert(invalidEmail != null);
    assert(shortPassword != null);
    assert(invalidPhotoUrl != null);
    assert(notOfObjectType != null);
    return invalidEmail(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result exceedingLength(ExceedingLength<T> value),
    Result empty(Empty<T> value),
    Result multiline(Multiline<T> value),
    Result numberTooLarge(NumberTooLarge<T> value),
    Result listTooLong(ListTooLong<T> value),
    Result invalidEmail(InvalidEmail<T> value),
    Result shortPassword(ShortPassword<T> value),
    Result invalidPhotoUrl(InvalidPhotoUrl<T> value),
    Result notOfObjectType(NotOfObjectType<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidEmail != null) {
      return invalidEmail(this);
    }
    return orElse();
  }
}

abstract class InvalidEmail<T> implements ValueFailure<T> {
  const factory InvalidEmail({@required T failedValue}) = _$InvalidEmail<T>;

  @override
  T get failedValue;
  @override
  $InvalidEmailCopyWith<T, InvalidEmail<T>> get copyWith;
}

abstract class $ShortPasswordCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $ShortPasswordCopyWith(
          ShortPassword<T> value, $Res Function(ShortPassword<T>) then) =
      _$ShortPasswordCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

class _$ShortPasswordCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $ShortPasswordCopyWith<T, $Res> {
  _$ShortPasswordCopyWithImpl(
      ShortPassword<T> _value, $Res Function(ShortPassword<T>) _then)
      : super(_value, (v) => _then(v as ShortPassword<T>));

  @override
  ShortPassword<T> get _value => super._value as ShortPassword<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(ShortPassword<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
    ));
  }
}

class _$ShortPassword<T>
    with DiagnosticableTreeMixin
    implements ShortPassword<T> {
  const _$ShortPassword({@required this.failedValue})
      : assert(failedValue != null);

  @override
  final T failedValue;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ValueFailure<$T>.shortPassword(failedValue: $failedValue)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ValueFailure<$T>.shortPassword'))
      ..add(DiagnosticsProperty('failedValue', failedValue));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ShortPassword<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @override
  $ShortPasswordCopyWith<T, ShortPassword<T>> get copyWith =>
      _$ShortPasswordCopyWithImpl<T, ShortPassword<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result exceedingLength(T failedValue, int max),
    @required Result empty(T failedValue),
    @required Result multiline(T failedValue),
    @required Result numberTooLarge(T failedValue, num max),
    @required Result listTooLong(T failedValue, int max),
    @required Result invalidEmail(T failedValue),
    @required Result shortPassword(T failedValue),
    @required Result invalidPhotoUrl(T failedValue),
    @required Result notOfObjectType(T failedValue, Type validType),
  }) {
    assert(exceedingLength != null);
    assert(empty != null);
    assert(multiline != null);
    assert(numberTooLarge != null);
    assert(listTooLong != null);
    assert(invalidEmail != null);
    assert(shortPassword != null);
    assert(invalidPhotoUrl != null);
    assert(notOfObjectType != null);
    return shortPassword(failedValue);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result exceedingLength(T failedValue, int max),
    Result empty(T failedValue),
    Result multiline(T failedValue),
    Result numberTooLarge(T failedValue, num max),
    Result listTooLong(T failedValue, int max),
    Result invalidEmail(T failedValue),
    Result shortPassword(T failedValue),
    Result invalidPhotoUrl(T failedValue),
    Result notOfObjectType(T failedValue, Type validType),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (shortPassword != null) {
      return shortPassword(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result exceedingLength(ExceedingLength<T> value),
    @required Result empty(Empty<T> value),
    @required Result multiline(Multiline<T> value),
    @required Result numberTooLarge(NumberTooLarge<T> value),
    @required Result listTooLong(ListTooLong<T> value),
    @required Result invalidEmail(InvalidEmail<T> value),
    @required Result shortPassword(ShortPassword<T> value),
    @required Result invalidPhotoUrl(InvalidPhotoUrl<T> value),
    @required Result notOfObjectType(NotOfObjectType<T> value),
  }) {
    assert(exceedingLength != null);
    assert(empty != null);
    assert(multiline != null);
    assert(numberTooLarge != null);
    assert(listTooLong != null);
    assert(invalidEmail != null);
    assert(shortPassword != null);
    assert(invalidPhotoUrl != null);
    assert(notOfObjectType != null);
    return shortPassword(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result exceedingLength(ExceedingLength<T> value),
    Result empty(Empty<T> value),
    Result multiline(Multiline<T> value),
    Result numberTooLarge(NumberTooLarge<T> value),
    Result listTooLong(ListTooLong<T> value),
    Result invalidEmail(InvalidEmail<T> value),
    Result shortPassword(ShortPassword<T> value),
    Result invalidPhotoUrl(InvalidPhotoUrl<T> value),
    Result notOfObjectType(NotOfObjectType<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (shortPassword != null) {
      return shortPassword(this);
    }
    return orElse();
  }
}

abstract class ShortPassword<T> implements ValueFailure<T> {
  const factory ShortPassword({@required T failedValue}) = _$ShortPassword<T>;

  @override
  T get failedValue;
  @override
  $ShortPasswordCopyWith<T, ShortPassword<T>> get copyWith;
}

abstract class $InvalidPhotoUrlCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $InvalidPhotoUrlCopyWith(
          InvalidPhotoUrl<T> value, $Res Function(InvalidPhotoUrl<T>) then) =
      _$InvalidPhotoUrlCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

class _$InvalidPhotoUrlCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $InvalidPhotoUrlCopyWith<T, $Res> {
  _$InvalidPhotoUrlCopyWithImpl(
      InvalidPhotoUrl<T> _value, $Res Function(InvalidPhotoUrl<T>) _then)
      : super(_value, (v) => _then(v as InvalidPhotoUrl<T>));

  @override
  InvalidPhotoUrl<T> get _value => super._value as InvalidPhotoUrl<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(InvalidPhotoUrl<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
    ));
  }
}

class _$InvalidPhotoUrl<T>
    with DiagnosticableTreeMixin
    implements InvalidPhotoUrl<T> {
  const _$InvalidPhotoUrl({@required this.failedValue})
      : assert(failedValue != null);

  @override
  final T failedValue;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ValueFailure<$T>.invalidPhotoUrl(failedValue: $failedValue)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ValueFailure<$T>.invalidPhotoUrl'))
      ..add(DiagnosticsProperty('failedValue', failedValue));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InvalidPhotoUrl<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @override
  $InvalidPhotoUrlCopyWith<T, InvalidPhotoUrl<T>> get copyWith =>
      _$InvalidPhotoUrlCopyWithImpl<T, InvalidPhotoUrl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result exceedingLength(T failedValue, int max),
    @required Result empty(T failedValue),
    @required Result multiline(T failedValue),
    @required Result numberTooLarge(T failedValue, num max),
    @required Result listTooLong(T failedValue, int max),
    @required Result invalidEmail(T failedValue),
    @required Result shortPassword(T failedValue),
    @required Result invalidPhotoUrl(T failedValue),
    @required Result notOfObjectType(T failedValue, Type validType),
  }) {
    assert(exceedingLength != null);
    assert(empty != null);
    assert(multiline != null);
    assert(numberTooLarge != null);
    assert(listTooLong != null);
    assert(invalidEmail != null);
    assert(shortPassword != null);
    assert(invalidPhotoUrl != null);
    assert(notOfObjectType != null);
    return invalidPhotoUrl(failedValue);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result exceedingLength(T failedValue, int max),
    Result empty(T failedValue),
    Result multiline(T failedValue),
    Result numberTooLarge(T failedValue, num max),
    Result listTooLong(T failedValue, int max),
    Result invalidEmail(T failedValue),
    Result shortPassword(T failedValue),
    Result invalidPhotoUrl(T failedValue),
    Result notOfObjectType(T failedValue, Type validType),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidPhotoUrl != null) {
      return invalidPhotoUrl(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result exceedingLength(ExceedingLength<T> value),
    @required Result empty(Empty<T> value),
    @required Result multiline(Multiline<T> value),
    @required Result numberTooLarge(NumberTooLarge<T> value),
    @required Result listTooLong(ListTooLong<T> value),
    @required Result invalidEmail(InvalidEmail<T> value),
    @required Result shortPassword(ShortPassword<T> value),
    @required Result invalidPhotoUrl(InvalidPhotoUrl<T> value),
    @required Result notOfObjectType(NotOfObjectType<T> value),
  }) {
    assert(exceedingLength != null);
    assert(empty != null);
    assert(multiline != null);
    assert(numberTooLarge != null);
    assert(listTooLong != null);
    assert(invalidEmail != null);
    assert(shortPassword != null);
    assert(invalidPhotoUrl != null);
    assert(notOfObjectType != null);
    return invalidPhotoUrl(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result exceedingLength(ExceedingLength<T> value),
    Result empty(Empty<T> value),
    Result multiline(Multiline<T> value),
    Result numberTooLarge(NumberTooLarge<T> value),
    Result listTooLong(ListTooLong<T> value),
    Result invalidEmail(InvalidEmail<T> value),
    Result shortPassword(ShortPassword<T> value),
    Result invalidPhotoUrl(InvalidPhotoUrl<T> value),
    Result notOfObjectType(NotOfObjectType<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidPhotoUrl != null) {
      return invalidPhotoUrl(this);
    }
    return orElse();
  }
}

abstract class InvalidPhotoUrl<T> implements ValueFailure<T> {
  const factory InvalidPhotoUrl({@required T failedValue}) =
      _$InvalidPhotoUrl<T>;

  @override
  T get failedValue;
  @override
  $InvalidPhotoUrlCopyWith<T, InvalidPhotoUrl<T>> get copyWith;
}

abstract class $NotOfObjectTypeCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $NotOfObjectTypeCopyWith(
          NotOfObjectType<T> value, $Res Function(NotOfObjectType<T>) then) =
      _$NotOfObjectTypeCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue, Type validType});
}

class _$NotOfObjectTypeCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $NotOfObjectTypeCopyWith<T, $Res> {
  _$NotOfObjectTypeCopyWithImpl(
      NotOfObjectType<T> _value, $Res Function(NotOfObjectType<T>) _then)
      : super(_value, (v) => _then(v as NotOfObjectType<T>));

  @override
  NotOfObjectType<T> get _value => super._value as NotOfObjectType<T>;

  @override
  $Res call({
    Object failedValue = freezed,
    Object validType = freezed,
  }) {
    return _then(NotOfObjectType<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
      validType: validType == freezed ? _value.validType : validType as Type,
    ));
  }
}

class _$NotOfObjectType<T>
    with DiagnosticableTreeMixin
    implements NotOfObjectType<T> {
  const _$NotOfObjectType(
      {@required this.failedValue, @required this.validType})
      : assert(failedValue != null),
        assert(validType != null);

  @override
  final T failedValue;
  @override
  final Type validType;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ValueFailure<$T>.notOfObjectType(failedValue: $failedValue, validType: $validType)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ValueFailure<$T>.notOfObjectType'))
      ..add(DiagnosticsProperty('failedValue', failedValue))
      ..add(DiagnosticsProperty('validType', validType));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NotOfObjectType<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)) &&
            (identical(other.validType, validType) ||
                const DeepCollectionEquality()
                    .equals(other.validType, validType)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failedValue) ^
      const DeepCollectionEquality().hash(validType);

  @override
  $NotOfObjectTypeCopyWith<T, NotOfObjectType<T>> get copyWith =>
      _$NotOfObjectTypeCopyWithImpl<T, NotOfObjectType<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result exceedingLength(T failedValue, int max),
    @required Result empty(T failedValue),
    @required Result multiline(T failedValue),
    @required Result numberTooLarge(T failedValue, num max),
    @required Result listTooLong(T failedValue, int max),
    @required Result invalidEmail(T failedValue),
    @required Result shortPassword(T failedValue),
    @required Result invalidPhotoUrl(T failedValue),
    @required Result notOfObjectType(T failedValue, Type validType),
  }) {
    assert(exceedingLength != null);
    assert(empty != null);
    assert(multiline != null);
    assert(numberTooLarge != null);
    assert(listTooLong != null);
    assert(invalidEmail != null);
    assert(shortPassword != null);
    assert(invalidPhotoUrl != null);
    assert(notOfObjectType != null);
    return notOfObjectType(failedValue, validType);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result exceedingLength(T failedValue, int max),
    Result empty(T failedValue),
    Result multiline(T failedValue),
    Result numberTooLarge(T failedValue, num max),
    Result listTooLong(T failedValue, int max),
    Result invalidEmail(T failedValue),
    Result shortPassword(T failedValue),
    Result invalidPhotoUrl(T failedValue),
    Result notOfObjectType(T failedValue, Type validType),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (notOfObjectType != null) {
      return notOfObjectType(failedValue, validType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result exceedingLength(ExceedingLength<T> value),
    @required Result empty(Empty<T> value),
    @required Result multiline(Multiline<T> value),
    @required Result numberTooLarge(NumberTooLarge<T> value),
    @required Result listTooLong(ListTooLong<T> value),
    @required Result invalidEmail(InvalidEmail<T> value),
    @required Result shortPassword(ShortPassword<T> value),
    @required Result invalidPhotoUrl(InvalidPhotoUrl<T> value),
    @required Result notOfObjectType(NotOfObjectType<T> value),
  }) {
    assert(exceedingLength != null);
    assert(empty != null);
    assert(multiline != null);
    assert(numberTooLarge != null);
    assert(listTooLong != null);
    assert(invalidEmail != null);
    assert(shortPassword != null);
    assert(invalidPhotoUrl != null);
    assert(notOfObjectType != null);
    return notOfObjectType(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result exceedingLength(ExceedingLength<T> value),
    Result empty(Empty<T> value),
    Result multiline(Multiline<T> value),
    Result numberTooLarge(NumberTooLarge<T> value),
    Result listTooLong(ListTooLong<T> value),
    Result invalidEmail(InvalidEmail<T> value),
    Result shortPassword(ShortPassword<T> value),
    Result invalidPhotoUrl(InvalidPhotoUrl<T> value),
    Result notOfObjectType(NotOfObjectType<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (notOfObjectType != null) {
      return notOfObjectType(this);
    }
    return orElse();
  }
}

abstract class NotOfObjectType<T> implements ValueFailure<T> {
  const factory NotOfObjectType(
      {@required T failedValue,
      @required Type validType}) = _$NotOfObjectType<T>;

  @override
  T get failedValue;
  Type get validType;
  @override
  $NotOfObjectTypeCopyWith<T, NotOfObjectType<T>> get copyWith;
}

class _$ServerFailureTearOff {
  const _$ServerFailureTearOff();

  DeviceOffline deviceOffline() {
    return const DeviceOffline();
  }

  ApiUnreachable apiUnreachable() {
    return const ApiUnreachable();
  }

  NoSession noSession() {
    return const NoSession();
  }

  InvalidSession invalidSession() {
    return const InvalidSession();
  }
}

// ignore: unused_element
const $ServerFailure = _$ServerFailureTearOff();

mixin _$ServerFailure {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result deviceOffline(),
    @required Result apiUnreachable(),
    @required Result noSession(),
    @required Result invalidSession(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result deviceOffline(),
    Result apiUnreachable(),
    Result noSession(),
    Result invalidSession(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result deviceOffline(DeviceOffline value),
    @required Result apiUnreachable(ApiUnreachable value),
    @required Result noSession(NoSession value),
    @required Result invalidSession(InvalidSession value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result deviceOffline(DeviceOffline value),
    Result apiUnreachable(ApiUnreachable value),
    Result noSession(NoSession value),
    Result invalidSession(InvalidSession value),
    @required Result orElse(),
  });
}

abstract class $ServerFailureCopyWith<$Res> {
  factory $ServerFailureCopyWith(
          ServerFailure value, $Res Function(ServerFailure) then) =
      _$ServerFailureCopyWithImpl<$Res>;
}

class _$ServerFailureCopyWithImpl<$Res>
    implements $ServerFailureCopyWith<$Res> {
  _$ServerFailureCopyWithImpl(this._value, this._then);

  final ServerFailure _value;
  // ignore: unused_field
  final $Res Function(ServerFailure) _then;
}

abstract class $DeviceOfflineCopyWith<$Res> {
  factory $DeviceOfflineCopyWith(
          DeviceOffline value, $Res Function(DeviceOffline) then) =
      _$DeviceOfflineCopyWithImpl<$Res>;
}

class _$DeviceOfflineCopyWithImpl<$Res>
    extends _$ServerFailureCopyWithImpl<$Res>
    implements $DeviceOfflineCopyWith<$Res> {
  _$DeviceOfflineCopyWithImpl(
      DeviceOffline _value, $Res Function(DeviceOffline) _then)
      : super(_value, (v) => _then(v as DeviceOffline));

  @override
  DeviceOffline get _value => super._value as DeviceOffline;
}

class _$DeviceOffline with DiagnosticableTreeMixin implements DeviceOffline {
  const _$DeviceOffline();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ServerFailure.deviceOffline()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'ServerFailure.deviceOffline'));
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
    @required Result deviceOffline(),
    @required Result apiUnreachable(),
    @required Result noSession(),
    @required Result invalidSession(),
  }) {
    assert(deviceOffline != null);
    assert(apiUnreachable != null);
    assert(noSession != null);
    assert(invalidSession != null);
    return deviceOffline();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result deviceOffline(),
    Result apiUnreachable(),
    Result noSession(),
    Result invalidSession(),
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
    @required Result deviceOffline(DeviceOffline value),
    @required Result apiUnreachable(ApiUnreachable value),
    @required Result noSession(NoSession value),
    @required Result invalidSession(InvalidSession value),
  }) {
    assert(deviceOffline != null);
    assert(apiUnreachable != null);
    assert(noSession != null);
    assert(invalidSession != null);
    return deviceOffline(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result deviceOffline(DeviceOffline value),
    Result apiUnreachable(ApiUnreachable value),
    Result noSession(NoSession value),
    Result invalidSession(InvalidSession value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deviceOffline != null) {
      return deviceOffline(this);
    }
    return orElse();
  }
}

abstract class DeviceOffline implements ServerFailure {
  const factory DeviceOffline() = _$DeviceOffline;
}

abstract class $ApiUnreachableCopyWith<$Res> {
  factory $ApiUnreachableCopyWith(
          ApiUnreachable value, $Res Function(ApiUnreachable) then) =
      _$ApiUnreachableCopyWithImpl<$Res>;
}

class _$ApiUnreachableCopyWithImpl<$Res>
    extends _$ServerFailureCopyWithImpl<$Res>
    implements $ApiUnreachableCopyWith<$Res> {
  _$ApiUnreachableCopyWithImpl(
      ApiUnreachable _value, $Res Function(ApiUnreachable) _then)
      : super(_value, (v) => _then(v as ApiUnreachable));

  @override
  ApiUnreachable get _value => super._value as ApiUnreachable;
}

class _$ApiUnreachable with DiagnosticableTreeMixin implements ApiUnreachable {
  const _$ApiUnreachable();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ServerFailure.apiUnreachable()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ServerFailure.apiUnreachable'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ApiUnreachable);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result deviceOffline(),
    @required Result apiUnreachable(),
    @required Result noSession(),
    @required Result invalidSession(),
  }) {
    assert(deviceOffline != null);
    assert(apiUnreachable != null);
    assert(noSession != null);
    assert(invalidSession != null);
    return apiUnreachable();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result deviceOffline(),
    Result apiUnreachable(),
    Result noSession(),
    Result invalidSession(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (apiUnreachable != null) {
      return apiUnreachable();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result deviceOffline(DeviceOffline value),
    @required Result apiUnreachable(ApiUnreachable value),
    @required Result noSession(NoSession value),
    @required Result invalidSession(InvalidSession value),
  }) {
    assert(deviceOffline != null);
    assert(apiUnreachable != null);
    assert(noSession != null);
    assert(invalidSession != null);
    return apiUnreachable(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result deviceOffline(DeviceOffline value),
    Result apiUnreachable(ApiUnreachable value),
    Result noSession(NoSession value),
    Result invalidSession(InvalidSession value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (apiUnreachable != null) {
      return apiUnreachable(this);
    }
    return orElse();
  }
}

abstract class ApiUnreachable implements ServerFailure {
  const factory ApiUnreachable() = _$ApiUnreachable;
}

abstract class $NoSessionCopyWith<$Res> {
  factory $NoSessionCopyWith(NoSession value, $Res Function(NoSession) then) =
      _$NoSessionCopyWithImpl<$Res>;
}

class _$NoSessionCopyWithImpl<$Res> extends _$ServerFailureCopyWithImpl<$Res>
    implements $NoSessionCopyWith<$Res> {
  _$NoSessionCopyWithImpl(NoSession _value, $Res Function(NoSession) _then)
      : super(_value, (v) => _then(v as NoSession));

  @override
  NoSession get _value => super._value as NoSession;
}

class _$NoSession with DiagnosticableTreeMixin implements NoSession {
  const _$NoSession();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ServerFailure.noSession()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'ServerFailure.noSession'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is NoSession);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result deviceOffline(),
    @required Result apiUnreachable(),
    @required Result noSession(),
    @required Result invalidSession(),
  }) {
    assert(deviceOffline != null);
    assert(apiUnreachable != null);
    assert(noSession != null);
    assert(invalidSession != null);
    return noSession();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result deviceOffline(),
    Result apiUnreachable(),
    Result noSession(),
    Result invalidSession(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (noSession != null) {
      return noSession();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result deviceOffline(DeviceOffline value),
    @required Result apiUnreachable(ApiUnreachable value),
    @required Result noSession(NoSession value),
    @required Result invalidSession(InvalidSession value),
  }) {
    assert(deviceOffline != null);
    assert(apiUnreachable != null);
    assert(noSession != null);
    assert(invalidSession != null);
    return noSession(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result deviceOffline(DeviceOffline value),
    Result apiUnreachable(ApiUnreachable value),
    Result noSession(NoSession value),
    Result invalidSession(InvalidSession value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (noSession != null) {
      return noSession(this);
    }
    return orElse();
  }
}

abstract class NoSession implements ServerFailure {
  const factory NoSession() = _$NoSession;
}

abstract class $InvalidSessionCopyWith<$Res> {
  factory $InvalidSessionCopyWith(
          InvalidSession value, $Res Function(InvalidSession) then) =
      _$InvalidSessionCopyWithImpl<$Res>;
}

class _$InvalidSessionCopyWithImpl<$Res>
    extends _$ServerFailureCopyWithImpl<$Res>
    implements $InvalidSessionCopyWith<$Res> {
  _$InvalidSessionCopyWithImpl(
      InvalidSession _value, $Res Function(InvalidSession) _then)
      : super(_value, (v) => _then(v as InvalidSession));

  @override
  InvalidSession get _value => super._value as InvalidSession;
}

class _$InvalidSession with DiagnosticableTreeMixin implements InvalidSession {
  const _$InvalidSession();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ServerFailure.invalidSession()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ServerFailure.invalidSession'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is InvalidSession);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result deviceOffline(),
    @required Result apiUnreachable(),
    @required Result noSession(),
    @required Result invalidSession(),
  }) {
    assert(deviceOffline != null);
    assert(apiUnreachable != null);
    assert(noSession != null);
    assert(invalidSession != null);
    return invalidSession();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result deviceOffline(),
    Result apiUnreachable(),
    Result noSession(),
    Result invalidSession(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidSession != null) {
      return invalidSession();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result deviceOffline(DeviceOffline value),
    @required Result apiUnreachable(ApiUnreachable value),
    @required Result noSession(NoSession value),
    @required Result invalidSession(InvalidSession value),
  }) {
    assert(deviceOffline != null);
    assert(apiUnreachable != null);
    assert(noSession != null);
    assert(invalidSession != null);
    return invalidSession(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result deviceOffline(DeviceOffline value),
    Result apiUnreachable(ApiUnreachable value),
    Result noSession(NoSession value),
    Result invalidSession(InvalidSession value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidSession != null) {
      return invalidSession(this);
    }
    return orElse();
  }
}

abstract class InvalidSession implements ServerFailure {
  const factory InvalidSession() = _$InvalidSession;
}
