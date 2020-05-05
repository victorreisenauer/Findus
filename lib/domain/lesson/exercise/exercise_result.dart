import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

import 'package:lrs_app_v3/domain/core/value_objects.dart';
import 'calculated_value_objects.dart';
import 'package:lrs_app_v3/domain/core/entitiy.dart';

part 'exercise_result.freezed.dart';

@freezed
abstract class ExerciseResult with _$ExerciseResult implements IEntity {
  @override
  const factory ExerciseResult(
      {@required UniqueId id,
      @required ExerciseResultData data}) = _ExerciseResult;
}
