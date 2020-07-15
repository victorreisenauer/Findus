import "package:flutter/foundation.dart";
import "package:freezed_annotation/freezed_annotation.dart";
import "package:meta/meta.dart";

import "../core/entitiy.dart";
import "../core/value_objects.dart";
import "exercise/exercise.dart";

part "lesson.freezed.dart";

@freezed

/// Data class for Lessons.
abstract class Lesson with _$Lesson implements IEntity {
  @override
  const factory Lesson({
    @required UniqueId id,
    @required ObjectList<Exercise> exerciseList,
  }) = _Lesson;
}
