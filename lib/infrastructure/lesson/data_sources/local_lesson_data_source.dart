import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';
import 'package:lrs_app_v3/domain/core/value_objects_barrel.dart';
import 'package:lrs_app_v3/domain/lesson/lesson_barrel.dart';
import 'package:lrs_app_v3/infrastructure/core/boxes.dart';
import 'package:lrs_app_v3/infrastructure/lesson/lesson_barrel.dart';

abstract class LocalLessonDataSource {
  Stream<UniqueId> getUserLessonIds();
  Future<LessonModel> getLessonModelById(UniqueId id);
  Future<void> cacheLessonModel(LessonModel model);
  Future<void> cacheLessonResultModel(LessonResultModel result);
  Future<List<LessonResult>> getUnpushedLessonResults();
  Future<void> close();
}

@RegisterAs(LocalLessonDataSource, env: Environment.prod)
@lazySingleton
class LocalLessonDataSourceImpl implements LocalLessonDataSource {
  final Boxes boxes;

  LocalLessonDataSourceImpl(this.boxes);

  Stream<UniqueId> getUserLessonIds() async* {
    Box box = await boxes.lessonBox.then((box) => box);
    for (int i; i < box.length; i++) {
      yield box.keyAt(i);
    }
  }

  Future<LessonModel> getLessonModelById(UniqueId id) async {
    return LessonModel.fromJson(
        await boxes.lessonBox.then((box) => box.get(id)));
  }

  Future<void> cacheLessonModel(LessonModel model) async {
    await boxes.lessonBox.then((box) => box.put(model.id, model.toJson()));
  }

  Future<void> cacheLessonResultModel(LessonResultModel result) async {
    await boxes.resultBox.then((box) => box.add(result.toJson()));
  }

  Future<List<LessonResult>> getUnpushedLessonResults() {
    // needs implementation
    return null;
  }

  Future<void> close() async {
    boxes.lessonBox.then((box) => box.close());
    boxes.resultBox.then((box) => box.close());
  }
}
