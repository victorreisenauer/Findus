import "package:flutter/foundation.dart";
import "package:freezed_annotation/freezed_annotation.dart";

part "failures.freezed.dart";

abstract class Failure {}

@freezed

/// Failure to handle Exceptions with ValueObjects (like Password, emailAddress).
/// Examples: password exceeds length, password is empty, email is invalide etc.
abstract class ValueFailure<T> extends Failure with _$ValueFailure<T> {
  const factory ValueFailure.exceedingLength({
    @required T failedValue,
    @required int max,
  }) = ExceedingLength<T>;
  const factory ValueFailure.empty({
    @required T failedValue,
  }) = Empty<T>;
  const factory ValueFailure.multiline({
    @required T failedValue,
  }) = Multiline<T>;
  const factory ValueFailure.numberTooLarge({
    @required T failedValue,
    @required num max,
  }) = NumberTooLarge<T>;
  const factory ValueFailure.listTooLong({
    @required T failedValue,
    @required int max,
  }) = ListTooLong<T>;
  const factory ValueFailure.invalidEmail({
    @required T failedValue,
  }) = InvalidEmail<T>;
  const factory ValueFailure.shortPassword({
    @required T failedValue,
  }) = ShortPassword<T>;
  const factory ValueFailure.invalidPhotoUrl({
    @required T failedValue,
  }) = InvalidPhotoUrl<T>;
  const factory ValueFailure.notOfObjectType({
    @required T failedValue,
    @required Type validType,
  }) = NotOfObjectType<T>;
}
