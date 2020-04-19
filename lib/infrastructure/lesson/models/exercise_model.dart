import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:lrs_app_v3/domain/lesson/exercise.dart';
import 'package:lrs_app_v3/domain/lesson/value_objects.dart';
import 'package:lrs_app_v3/domain/core/value_objects.dart';

part 'exercise_model.freezed.dart';
part 'exercise_model.g.dart';

@freezed
abstract class ExerciseModel with _$ExerciseModel {
  const factory ExerciseModel({
    @required String id,
    @required String type,
    @required Map data,
  }) = _ExerciseModel;

  factory ExerciseModel.fromJson(Map<String, dynamic> json) =>
      _$ExerciseModelFromJson(json);

  factory ExerciseModel.fromDomain(Exercise exercise) {
    return ExerciseModel(
        id: exercise.id.getOrCrash(),
        type: exercise.type.getOrCrash(),
        data: exercise.data.getOrCrash());
  }
}

extension ExerciseModelX on ExerciseModel {
  Exercise toDomain() {
    return Exercise(
      id: UniqueId(),
      type: ExerciseType(type),
      data: ExerciseData(data),
    );
  }
}
