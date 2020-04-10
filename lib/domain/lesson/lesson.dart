
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

import 'value_objects.dart';
import '../core/value_objects.dart';
import '../core/entitiy.dart';
import 'exercise.dart';

part 'lesson.freezed.dart';

// TODO: make lesson and exercise implement IEntity
@freezed
/// Data class for Lessons. 
abstract class Lesson with _$Lesson  {
  @override
  const factory Lesson({
    @required UniqueId id, 
    @required ExerciseList<Exercise> exerciseList,
  }) = _Lesson;
}