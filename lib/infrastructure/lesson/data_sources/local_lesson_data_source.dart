import 'package:lrs_app_v3/infrastructure/lesson/lesson_barrel.dart';
import 'package:lrs_app_v3/domain/lesson/lesson_barrel.dart';
import 'package:lrs_app_v3/domain/core/value_objects_barrel.dart';

abstract class LocalLessonDataSource {
  Stream<UniqueId> getUserLessonIds();
  Future<LessonModel> getLessonById(UniqueId id);
  Future<void> cacheLesson(LessonModel lesson);
  // TODO: create designated LessonResultModel object
  Future<void> cacheResult(LessonResult result);
  Future<void> cacheMultipleResults(List<LessonResult> results);
  Future<List<LessonResult>> getUnpushedResults();
}
