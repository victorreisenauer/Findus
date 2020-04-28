import 'package:meta/meta.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lrs_app_v3/domain/core/value_objects.dart';
import 'package:lrs_app_v3/domain/lesson/lesson_barrel.dart';
import 'package:lrs_app_v3/domain/core/failures.dart';
import 'package:lrs_app_v3/domain/core/entitiy.dart';

part 'exercise.freezed.dart';

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
    return type.failureOrUnit
        .andThen(data.failureOrUnit)
        .fold((l) => some(l), (r) => none());
  }
}
