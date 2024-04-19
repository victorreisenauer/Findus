import "package:flutter/foundation.dart";
import "package:freezed_annotation/freezed_annotation.dart";
import "package:meta/meta.dart";

import "../../core/entitiy.dart";
import "../../core/value_objects.dart";
import "calculated_value_objects.dart";

part "exercise_result.freezed.dart";

@freezed
abstract class ExerciseResult with _$ExerciseResult implements IEntity {
  @override
  const factory ExerciseResult({@required UniqueId id, @required ExerciseResultData data}) = _ExerciseResult;
}
