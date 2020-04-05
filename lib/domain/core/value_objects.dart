import 'package:flutter/material.dart';
import 'failures.dart';
import 'package:dartz/dartz.dart';

@immutable
abstract class ValueObject<T> {
  const ValueObject();
  Either<ValueFailure<T>, T> get value;

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;
    return o is ValueObject<T> && o.value == value;
  }

  @override
  int get hashCode => value.hashCode;
  
  @override
  String toString() => 'EmailAddress($value)';
}