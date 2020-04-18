// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lesson_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LessonModel _$_$_LessonModelFromJson(Map<String, dynamic> json) {
  return _$_LessonModel(
    id: json['id'] as String,
    exerciseList: (json['exerciseList'] as List)
        ?.map((e) => e == null
            ? null
            : ExerciseModel.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$_$_LessonModelToJson(_$_LessonModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'exerciseList': instance.exerciseList,
    };
