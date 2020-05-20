import 'package:lrs_app_v3/infrastructure/lesson/data_sources/remote_lesson_data_source_facade.dart';
import 'package:lrs_app_v3/infrastructure/lesson/lesson_barrel.dart';

class RemoteFirebaseLessonDataSource implements RemoteLessonDataSourceFacade {
  Stream<LessonModel> getAvailableLessonData() {
    // missing impl
    return null;
  }

  Future<void> pushResults(List<LessonResultModel> resultModels) {
    // missing impl
    return null;
  }

  Future<void> close() {
    // missing impl
    return null;
  }
}
