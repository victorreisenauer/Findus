import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lrs_app_v3/domain/core/value_objects_barrel.dart';
import 'package:lrs_app_v3/domain/lesson/lesson_barrel.dart';
import 'package:lrs_app_v3/infrastructure/lesson/lesson_barrel.dart';
import 'package:kt_dart/collection.dart';

part 'lesson_model.freezed.dart';
part 'lesson_model.g.dart';

@freezed
abstract class LessonModels with _$LessonModels {
  factory LessonModels(List<LessonModel> exercises) = _LessonModels;

  factory LessonModels.fromJson(Map<String, dynamic> json) => _$LessonModelsFromJson(json);
}

@freezed
abstract class LessonModel with _$LessonModel {
  factory LessonModel({String id, LessonModelDetails details}) = _LessonModel;

  factory LessonModel.fromJson(Map<String, dynamic> json) => _$LessonModelFromJson(json);

  factory LessonModel.fromDomain(Lesson lesson, UniqueId assingedToUserId) {
    final exerciseList =
        lesson.exerciseList.getOrCrash().mapIndexed((index, exercise) => ExerciseModel.fromDomain(exercise)).asList();

    Map exercise_types = {};
    List exercises = [];

    exerciseList.forEach((element) {
      exercise_types[element.id] = element.type;
      exercises.add(element.id);
    });

    return LessonModel(
        id: lesson.id.getOrCrash(),
        details: LessonModelDetails(
            created: null,
            uid: assingedToUserId.getOrCrash(),
            done: null,
            exercise_types: exercise_types,
            exercises: exercises));
  }
}

/// turn [LessonModel] into [Lesson]
extension LessonModelX on LessonModel {
  Lesson toDomain() {
    return Lesson(
      id: UniqueId.fromUniqueId(id),
      exerciseList: ObjectList<Exercise>(
        details.exercises
            .map((model) => ExerciseModel(type: details.exercise_types[model], id: details.uid, data: {}).toDomain())
            .toImmutableList(),
      ),
    );
  }
}

@freezed
abstract class LessonModelDetails with _$LessonModelDetails {
  factory LessonModelDetails(
      {String uid,
      List<String> exercises,
      bool done,
      Map<String, String> exercise_types,
      Map<String, dynamic> created}) = _LessonModelDetails;

  factory LessonModelDetails.fromJson(Map<String, dynamic> json) => _$LessonModelDetailsFromJson(json);
}
