import 'package:meta/meta.dart';
import 'package:injectable/injectable.dart';
import 'package:hive/hive.dart';

import 'package:lrs_app_v3/infrastructure/lesson/lesson_barrel.dart';
import 'package:lrs_app_v3/domain/lesson/lesson_barrel.dart';
import 'package:lrs_app_v3/domain/core/value_objects_barrel.dart';

abstract class LocalLessonDataSource {
  Stream<UniqueId> getUserLessonIds();
  Future<LessonModel> getLessonModelById(UniqueId id);
  Future<void> cacheLessonModel(LessonModel lesson);
  Future<void> cacheLessonResultModel(LessonResultModel result);
  Future<List<LessonResult>> getUnpushedLessonResults();
  Future<void> close();
}

@RegisterAs(LocalLessonDataSource, env: Environment.prod)
@lazySingleton
class LocalLessonDataSourceImpl implements LocalLessonDataSource {
  final Box _lessonBox;
  final Box _resultBox;

  LocalLessonDataSourceImpl(this._lessonBox, this._resultBox);

  Stream<UniqueId> getUserLessonIds() async* {
    for (int i; i < _lessonBox.length; i++) {
      yield _lessonBox.keyAt(i);
    }
  }

  Future<LessonModel> getLessonModelById(UniqueId id) async {
    return LessonModel.fromJson(_lessonBox.get(id));
  }

  Future<void> cacheLessonModel(LessonModel model) async {
    _lessonBox.put(model.id, model.toJson());
  }

  Future<void> cacheLessonResultModel(LessonResultModel result) async {
    _resultBox.add(result.toJson());
  }

  Future<List<LessonResult>> getUnpushedLessonResults() {
    // needs implementation
    return null;
  }

  Future<void> close() async {
    _lessonBox.close();
    _resultBox.close();
  }
}

@RegisterAs(LocalLessonDataSource, env: Environment.test)
@lazySingleton
class TestLocalLessonDataSourceImpl implements LocalLessonDataSource {
  final Box _lessonBox;
  final Box _resultBox;
  final Box _exerciseBox = Hive.box('exerciseBox');

  TestLocalLessonDataSourceImpl(this._lessonBox, this._resultBox);

  Stream<UniqueId> getUserLessonIds() async* {
    for (int i; i < _lessonBox.length; i++) {
      yield _lessonBox.keyAt(i);
    }
  }

  Future<LessonModel> getLessonModelById(UniqueId id) async {
    return LessonModel.fromJson(_lessonBox.get(id));
  }

  Future<void> cacheLessonModel(LessonModel model) async {
    _lessonBox.put(model.id, model.toJson());
  }

  Future<void> cacheLessonResultModel(LessonResultModel result) async {
    _resultBox.add(result.toJson());
  }

  Future<List<LessonResult>> getUnpushedLessonResults() {
    // needs implementation
    return null;
  }

  Future<void> cacheExerciseModel(ExerciseModel model) async {
    _exerciseBox.put(model.id, model.toJson());
  }

  Future<ExerciseModel> getExerciseModelOfType(ExerciseType type) async {
    for (int i; i < _exerciseBox.length; i++) {
      ExerciseModel model = ExerciseModel.fromJson(_exerciseBox.getAt(i));
      if (model.type == type.getOrCrash()) {
        return model;
      } else {
        throw Exception(
            "No exercise of type ${type.getOrCrash().toString()} found"); //TODO: create designated exception

      }
    }
  }

  Future<void> removeAllExerciseModels() async {
    _exerciseBox.clear();
  }

  Future<void> close() async {
    _lessonBox.close();
    _resultBox.close();
  }
}
