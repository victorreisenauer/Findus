import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:lrs_app_v3/domain/lesson/lesson_barrel.dart';
import 'package:lrs_app_v3/domain/core/value_objects.dart';

part 'exercise_result_model.freezed.dart';
part 'exercise_result_model.g.dart';

@freezed
abstract class ExerciseResultModel with _$ExerciseResultModel {
  const factory ExerciseResultModel({
    @required String id,
    @required Map data,
  }) = _ExerciseResultModel;

  /// turn json into [ExerciseResultModel]
  factory ExerciseResultModel.fromJson(Map<String, dynamic> json) =>
      _$ExerciseResultModelFromJson(json);

  /// turn [ExerciseResult] into [ExerciseResultModel]
  factory ExerciseResultModel.fromDomain(ExerciseResult result) {
    return ExerciseResultModel(
      id: result.id.getOrCrash(),
      data: result.data.getOrCrash(),
    );
  }
}

/// turns [ExerciseResultModel] into [ExerciseResult]
extension ExerciseResultModelX on ExerciseResultModel {
  ExerciseResult toDomain() {
    return ExerciseResult(
      id: UniqueId.fromUniqueId(id),
      data: ExerciseResultData(data),
    );
  }
}
