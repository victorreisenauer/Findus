import 'package:lrs_app_v3/infrastructure/lesson/lesson_barrel.dart';

abstract class RemoteLessonDataSourceFacade {
  Stream<LessonModel> getAvailableLessonData();
  Future<void> pushResults(List<LessonResultModel> resultModels);
  Future<void> close();
}
