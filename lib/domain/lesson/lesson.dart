import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

import 'package:lrs_app_v3/domain/lesson/value_objects.dart';
import 'package:lrs_app_v3/domain/core/value_objects.dart';
import 'package:lrs_app_v3/domain/lesson/exercise.dart';

part 'lesson.freezed.dart';

// TODO: make lesson implement IEntity
@freezed

/// Data class for Lessons.
abstract class Lesson with _$Lesson {
  @override
  const factory Lesson({
    @required UniqueId id,
    @required ObjectList<Exercise> exerciseList,
  }) = _Lesson;
}
