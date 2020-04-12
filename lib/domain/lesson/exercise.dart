import 'package:meta/meta.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import '../core/entitiy.dart';
import '../core/value_objects.dart';
import 'value_objects.dart';
import '../core/failures.dart';

part 'exercise.freezed.dart';

@freezed
abstract class Exercise with _$Exercise {
  const factory Exercise({
    @required UniqueId id,
    @required ExerciseType type,
    @required ExerciseData data,
  }) = _Exercise;
}

extension ExerciseX on Exercise {
  Option<ValueFailure<dynamic>> get failureOption {
    return type.failureOrUnit
      .andThen(data.failureOrUnit)
      .fold( (l) => some(l), (r) => none());
  }
}