import "../models/lesson_model.dart";
import "../models/lesson_result_model.dart";

abstract class RemoteLessonDataSourceFacade {
  Stream<LessonModel> getAvailableLessonData();
  Future<void> pushResult(LessonResultModel resultModel);
}
