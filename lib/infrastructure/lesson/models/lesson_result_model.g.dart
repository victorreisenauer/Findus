// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lesson_result_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LessonResultModel _$_$_LessonResultModelFromJson(Map<String, dynamic> json) {
  return _$_LessonResultModel(
    id: json['id'] as String,
    resultsList: (json['resultsList'] as List)
        ?.map((e) => e == null
            ? null
            : ExerciseResultModel.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$_$_LessonResultModelToJson(
        _$_LessonResultModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'resultsList': instance.resultsList,
    };
