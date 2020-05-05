import 'package:kt_dart/collection.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:lrs_app_v3/domain/lesson/lesson_barrel.dart';
import 'package:lrs_app_v3/domain/core/value_objects_barrel.dart';
import 'package:lrs_app_v3/infrastructure/lesson/lesson_barrel.dart';

part 'lesson_result_model.freezed.dart';
part 'lesson_result_model.g.dart';

@freezed
abstract class LessonResultModel with _$LessonResultModel {
  const factory LessonResultModel({
    @required String id,
    @required List<ExerciseResultModel> resultsList,
  }) = _LessonResultModel;

  /// turns json into [LessonResultModel]
  factory LessonResultModel.fromJson(Map<String, dynamic> json) =>
      _$LessonResultModelFromJson(json);

  /// turns [LessonResult] into [LessonResultModel]
  factory LessonResultModel.fromDomain(LessonResult result) {
    return LessonResultModel(
        id: result.id.getOrCrash(),
        resultsList: result.resultList
            .mapIndexed((index, exerciseResult) =>
                ExerciseResultModel.fromDomain(exerciseResult))
            .asList());
  }
}

/// turns [LessonResultModel] into [LessonResult]
extension LessonResultModelX on LessonResultModel {
  LessonResult toDomain() {
    return LessonResult(
      id: UniqueId.fromUniqueId(id),
      resultList: resultsList
          .map((exResultModel) => exResultModel.toDomain())
          .toImmutableList(),
    );
  }
}
