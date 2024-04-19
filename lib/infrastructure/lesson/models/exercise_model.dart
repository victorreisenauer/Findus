import "package:freezed_annotation/freezed_annotation.dart";
import "package:json_annotation/json_annotation.dart";
import "package:meta/meta.dart";

import "../../../domain/core/value_objects.dart";
import "../../../domain/lesson/lesson_barrel.dart";

part "exercise_model.freezed.dart";
part "exercise_model.g.dart";

@freezed
abstract class ExerciseModel with _$ExerciseModel {
  const factory ExerciseModel({
    @required String id,
    @required String type,
    @required Map data,
  }) = _ExerciseModel;

  /// turns Json into [ExerciseModel]
  factory ExerciseModel.fromJson(Map<String, dynamic> json) => _$ExerciseModelFromJson(json);

  /// turns [Exercise] into [ExerciseModel]
  factory ExerciseModel.fromDomain(Exercise exercise) {
    return ExerciseModel(
        id: exercise.id.getOrCrash(), type: exercise.type.getOrCrash(), data: exercise.data.getOrCrash());
  }
}

/// turns [ExerciseModel] into [Exercise]
extension ExerciseModelX on ExerciseModel {
  Exercise toDomain() {
    return Exercise(
      id: UniqueId.fromUniqueId(id),
      type: ExerciseType(type),
      data: ExerciseData(data),
    );
  }
}
