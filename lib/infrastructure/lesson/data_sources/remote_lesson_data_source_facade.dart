import 'package:lrs_app_v3/domain/lesson/lesson_barrel.dart';
import 'package:lrs_app_v3/infrastructure/lesson/lesson_barrel.dart';

abstract class RemoteLessonDataSourceFacade {
  Stream<LessonModel> getAvailableLessonData();
  Future<void> pushResults(List<LessonResult> results);
  Future<void> close();
}
