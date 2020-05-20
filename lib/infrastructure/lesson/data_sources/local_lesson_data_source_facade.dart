import 'package:lrs_app_v3/domain/core/value_objects_barrel.dart';
import 'package:lrs_app_v3/infrastructure/lesson/lesson_barrel.dart';

abstract class LocalLessonDataSourceFacade {
  Stream<UniqueId> getUserLessonIds();
  Future<LessonModel> getLessonModelById(UniqueId id);
  Future<void> cacheLessonModel(LessonModel model);
  Future<void> cacheLessonResultModel(LessonResultModel result);
  Future<List<LessonResultModel>> getUnpushedLessonResults();
  Future<void> close();
}
