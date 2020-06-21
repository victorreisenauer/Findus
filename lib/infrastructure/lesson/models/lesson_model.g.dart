// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lesson_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LessonModels _$_$_LessonModelsFromJson(Map<String, dynamic> json) {
  return _$_LessonModels(
    (json['exercises'] as List)
        ?.map((e) =>
            e == null ? null : LessonModel.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$_$_LessonModelsToJson(_$_LessonModels instance) =>
    <String, dynamic>{
      'exercises': instance.exercises,
    };

_$_LessonModel _$_$_LessonModelFromJson(Map<String, dynamic> json) {
  return _$_LessonModel(
    id: json['id'] as String,
    details: json['details'] == null
        ? null
        : LessonModelDetails.fromJson(json['details'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_LessonModelToJson(_$_LessonModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'details': instance.details,
    };

_$_LessonModelDetails _$_$_LessonModelDetailsFromJson(
    Map<String, dynamic> json) {
  return _$_LessonModelDetails(
    uid: json['uid'] as String,
    exercises: (json['exercises'] as List)?.map((e) => e as String)?.toList(),
    done: json['done'] as bool,
    exercise_types: (json['exercise_types'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(k, e as String),
    ),
    created: json['created'] as Map<String, dynamic>,
  );
}

Map<String, dynamic> _$_$_LessonModelDetailsToJson(
        _$_LessonModelDetails instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'exercises': instance.exercises,
      'done': instance.done,
      'exercise_types': instance.exercise_types,
      'created': instance.created,
    };
