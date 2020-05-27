import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';
import 'package:lrs_app_v3/domain/core/value_objects_barrel.dart';
import 'package:lrs_app_v3/infrastructure/core/boxes.dart';
import 'package:lrs_app_v3/infrastructure/lesson/lesson_barrel.dart';

@RegisterAs(LocalLessonDataSourceFacade)
@lazySingleton
class LocalLessonDataSource implements LocalLessonDataSourceFacade {
  final Boxes boxes;

  LocalLessonDataSource(this.boxes);

  Stream<UniqueId> getUserLessonIds() async* {
    Box box = await boxes.lessonBox.then((box) => box);
    for (int i; i < box.length; i++) {
      yield box.keyAt(i);
    }
  }

  Future<LessonModel> getLessonModelById(UniqueId userId) async {
    return LessonModel.fromJson(
        await boxes.lessonBox.then((box) => box.get(userId)));
  }

  Future<void> cacheLessonModel(LessonModel model) async {
    await boxes.lessonBox.then((box) => box.put(model.id, model.toJson()));
  }

  Future<void> cacheLessonResultModel(LessonResultModel result) async {
    await boxes.resultBox.then((box) => box.add(result.toJson()));
  }

  Stream<LessonResultModel> getLessonResult(UniqueId userId) async* {
    await boxes.resultBox.then((box) => box.get(userId));
    yield null;
  }

  Future<void> removeLessonResultsModel() async {
    return null;
  }

  Future<void> close() async {
    boxes.lessonBox.then((box) => box.close());
    boxes.resultBox.then((box) => box.close());
  }
}
