import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:kt_dart/collection.dart';

import 'package:lrs_app_v3/infrastructure/lesson/models/exercise_model.dart';
import 'package:lrs_app_v3/domain/lesson/lesson_barrel.dart';
import 'package:lrs_app_v3/domain/core/value_objects_barrel.dart';

part 'lesson_model.freezed.dart';
part 'lesson_model.g.dart';

@freezed
abstract class LessonModel with _$LessonModel {
  factory LessonModel({
    @required String id,
    @required List<ExerciseModel> exerciseList,
  }) = _LessonModel;

  /// turns Json into [LessonModel]
  factory LessonModel.fromJson(Map<String, dynamic> json) =>
      _$LessonModelFromJson(json);

  /// turns [Lesson] into [LessonModel]
  factory LessonModel.fromDomain(Lesson lesson) {
    return LessonModel(
        id: lesson.id.getOrCrash(),
        exerciseList: lesson.exerciseList
            .getOrCrash()
            .mapIndexed((index, exercise) => ExerciseModel.fromDomain(exercise))
            .asList());
  }
}

/// turns [LessonModel] into [Lesson]
extension LessonModelX on LessonModel {
  Lesson toDomain() {
    return Lesson(
      id: UniqueId.fromUniqueId(id),
      exerciseList: ObjectList<Exercise>(
        exerciseList.map((eModel) => eModel.toDomain()).toImmutableList(),
      ),
    );
  }
}
