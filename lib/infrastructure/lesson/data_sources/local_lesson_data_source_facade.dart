import "../../../domain/core/value_objects_barrel.dart";
import "../models/lesson_model.dart";
import "../models/lesson_result_model.dart";

abstract class LocalLessonDataSourceFacade {
  Future<bool> isLessonCacheEmpty();
  Stream<UniqueId> getLessonIdsForUser(UniqueId userId);
  Stream<UniqueId> getLessonResultIdsForUser(UniqueId userId);
  Stream<LessonModel> getAllLessonModels();
  Stream<LessonResultModel> getAllLessonResultModels();
  Future<LessonModel> getLessonModelById(UniqueId lessonModelId);
  Future<LessonResultModel> getLessonResultModelById(UniqueId resultModelId);
  Future<void> cacheLessonModel(LessonModel lessonModel);
  Future<void> cacheLessonResultModel(LessonResultModel resultModel);
  Future<void> removeLessonResultModelById(UniqueId resultModelId);
  Future<void> removeLessonModelById(UniqueId lessonModelId);
  Future<void> close();
}
