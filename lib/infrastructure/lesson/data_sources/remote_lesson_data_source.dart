import 'package:lrs_app_v3/infrastructure/lesson/lesson_barrel.dart';
import 'package:lrs_app_v3/domain/lesson/lesson_barrel.dart';

abstract class RemoteLessonDataSource {
  Future<bool> get isAvailable;
  // is connected must check api availability and if user session valid
  Future<List<LessonModel>> getAvailableLessonData();
  Future<void> pushResults(List<LessonResult> results);
}
