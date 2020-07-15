import "package:dartz/dartz.dart";
import "package:flutter/foundation.dart";
import "package:freezed_annotation/freezed_annotation.dart";
import "package:meta/meta.dart";

import "../../core/entitiy.dart";
import "../../core/failures.dart";
import "../../core/value_objects.dart";
import "validated_value_objects.dart";

part "exercise.freezed.dart";

@freezed

/// Data class for exercise object
abstract class Exercise with _$Exercise implements IEntity {
  const factory Exercise({
    @required UniqueId id,
    @required ExerciseType type,
    @required ExerciseData data,
  }) = _Exercise;
}

extension ExerciseX on Exercise {
  Option<ValueFailure<dynamic>> get failureOption {
    return type.failureOrUnit.andThen(data.failureOrUnit).fold(some, (r) => none());
  }
}
