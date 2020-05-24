import 'package:lrs_app_v3/domain/core/value_objects_barrel.dart';
import 'package:lrs_app_v3/infrastructure/lesson/lesson_barrel.dart';

abstract class LocalLessonDataSourceFacade {
  Stream<UniqueId> getUserLessonIds();
  Future<LessonModel> getLessonModelById(UniqueId lessonId);
  Future<void> cacheLessonModel(LessonModel model);
  Future<void> cacheLessonResultModel(LessonResultModel result);
  Stream<LessonResultModel> getLessonResult(UniqueId userId);
  Future<void> close();
  Future<void> removeLessonResultsModel(); // needs work
}
