import 'package:kt_dart/collection.dart';
import 'package:meta/meta.dart';
import 'package:flutter/foundation.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lrs_app_v3/domain/core/value_objects.dart';
import 'package:lrs_app_v3/domain/lesson/lesson_barrel.dart';
import 'package:lrs_app_v3/domain/core/entitiy.dart';

part 'lesson_result.freezed.dart';

@freezed

/// Data class for results of lessons
abstract class LessonResult with _$LessonResult implements IEntity {
  const factory LessonResult({
    @required UniqueId id,
    // required: timestamp
    @required KtList<ExerciseResult> resultList,
  }) = _LessonResult;
}
