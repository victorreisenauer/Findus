import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

import 'package:lrs_app_v3/domain/lesson/lesson_barrel.dart';
import 'package:lrs_app_v3/domain/core/value_objects.dart';

import '../core/entitiy.dart';

part 'lesson.freezed.dart';

@freezed

/// Data class for Lessons.
abstract class Lesson with _$Lesson implements IEntity {
  @override
  const factory Lesson({
    @required UniqueId id,
    @required ObjectList<Exercise> exerciseList,
  }) = _Lesson;
}
