import "package:dartz/dartz.dart";
import "package:flutter/material.dart";
import "package:kt_dart/collection.dart";
import "package:uuid/uuid.dart";

import "common_interfaces.dart";
import "errors.dart";
import "failures.dart";

@immutable

/// Value Objects either contain a Failure, or a value.
/// They represent any value that needs to be passed around
/// between application and infrastructure layers and are part of the domain layer.
/// They are based on Functional Programming Principles.
abstract class ValueObject<T> implements IValidatable {
  const ValueObject();
  Either<ValueFailure<T>, T> get value;

  /// Throws [UnexpectedValueError] containing the [ValueFailure]
  T getOrCrash() {
    return value.fold((f) => throw UnexpectedValueError<T>(f), id);
  }

  T getOrElse(T dflt) {
    return value.getOrElse(() => dflt);
  }

  Either<ValueFailure<dynamic>, Unit> get failureOrUnit {
    return value.fold(
      left,
      (r) => right(unit),
    );
  }

  @override

  ///returns true when object contained within is data, not a Failure
  bool isValid() {
    return value.isRight();
  }

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;
    return o is ValueObject<T> && o.value == value;
  }

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => "Value($value)";
}

/// ValueObject that represents uniqueIds for users in application,
/// so the app is independent of userIds in backend.
class UniqueId extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory UniqueId() {
    return UniqueId._(
      right(Uuid().v1()),
    );
  }

  factory UniqueId.fromUniqueId(String id) {
    assert(id != null);
    return UniqueId._(
      right(id),
    );
  }

  const UniqueId._(this.value);
}

class ObjectList<T> extends ValueObject<KtList<T>> {
  @override
  final Either<ValueFailure<KtList<T>>, KtList<T>> value;

  factory ObjectList(KtList<T> input) {
    assert(input != null);
    return ObjectList._(Right(input));
  }

  const ObjectList._(this.value);

  int get length => value.getOrElse(emptyList).size;
}
