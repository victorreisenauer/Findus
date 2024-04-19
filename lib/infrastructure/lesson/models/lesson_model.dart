import "package:freezed_annotation/freezed_annotation.dart";
import "package:json_annotation/json_annotation.dart";
import "package:kt_dart/collection.dart";
import "package:meta/meta.dart";

import "../../../domain/core/value_objects_barrel.dart";
import "../../../domain/lesson/lesson_barrel.dart";
import "exercise_model.dart";

part "lesson_model.freezed.dart";
part "lesson_model.g.dart";

@freezed
abstract class LessonModel with _$LessonModel {
  factory LessonModel({
    @required String id,
    @required List<ExerciseModel> exerciseList,
    @required String assignedToUserId,
  }) = _LessonModel;

  /// turns Json into [LessonModel]
  factory LessonModel.fromJson(Map<String, dynamic> json) => _$LessonModelFromJson(json);

  /// turns [Lesson] into [LessonModel]
  factory LessonModel.fromDomain(Lesson lesson, UniqueId assignedToUserId) {
    return LessonModel(
      id: lesson.id.getOrCrash(),
      exerciseList:
          lesson.exerciseList.getOrCrash().mapIndexed((index, exercise) => ExerciseModel.fromDomain(exercise)).asList(),
      assignedToUserId: assignedToUserId.getOrCrash(),
    );
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

  Map<String, dynamic> toJsonDeep() =>
      <String, dynamic>{"id": id, "exerciseList": exerciseList.map((exModel) => exModel.toJson())};
}
