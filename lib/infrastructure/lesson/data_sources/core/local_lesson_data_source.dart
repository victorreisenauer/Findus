import "package:injectable/injectable.dart";

import "../../../../domain/core/value_objects_barrel.dart";
import "../../../core/boxes.dart";
import "../../../core/local_exceptions.dart";
import "../../models/lesson_model.dart";
import "../../models/lesson_result_model.dart";
import "../local_lesson_data_source_facade.dart";

@RegisterAs(LocalLessonDataSourceFacade)
@lazySingleton
class LocalLessonDataSource implements LocalLessonDataSourceFacade {
  final Boxes boxes;

  LocalLessonDataSource(this.boxes);

  /// Checks if the lesson box is empty
  @override
  Future<bool> isLessonCacheEmpty() async {
    var box = await boxes.lessonBox.then((box) => box);
    if (box.isEmpty) return true;
    return false;
  }

  /// Fetches all ids from cached LessonModels for this [userId].
  @override
  Stream<UniqueId> getLessonIdsForUser(UniqueId userId) async* {
    var box = await boxes.lessonBox.then((box) => box);
    for (var i = 0; i < box.length; i++) {
      // Get the model at index i.
      var model = await LessonModel.fromJson(box.getAt(i));
      var assignedUserId = UniqueId.fromUniqueId(model.assignedToUserId);
      // Yield the model only, if the model has correct user assigned to it.
      if (assignedUserId == userId) {
        yield UniqueId.fromUniqueId(model.id);
      }
    }
  }

  /// Fetches all ids from cached LessonResults for this [userId].
  ///
  /// Throws a CacheEmptyException, when cache is empty.
  /// Be sure to call .catchError on stream to catch this Exception.
  @override
  Stream<UniqueId> getLessonResultIdsForUser(UniqueId userId) async* {
    var box = await boxes.resultBox.then((box) => box);

    if (box.isEmpty) {
      throw CacheEmptyException(failedSource: box.toString());
    } else {
      for (var i = 0; i < box.length; i++) {
        // Get the model at index i.
        var model = await LessonResultModel.fromJson(box.getAt(i));
        var assignedUserId = UniqueId.fromUniqueId(model.assignedToUserId);
        // Yield the model only, if the model has correct user assigned to it.
        if (assignedUserId == userId) {
          yield UniqueId.fromUniqueId(model.id);
        }
      }
    }
  }

  /// Fetches LessonModel from cache by [lessonId].
  ///
  /// Throws a CacheEmptyException if cache is empty.
  /// If there is no LessonModel cached by [lessonId], throws
  /// a KeyNotFoundException(failedSource, failedValue).
  ///
  /// Failed source and failedValue relate to cache box and
  /// lessonId (that was not found in cache box) respectively.
  @override
  Future<LessonModel> getLessonModelById(UniqueId lessonId) async {
    var box = await boxes.lessonBox.then((box) => box);
    if (box.isEmpty) {
      throw CacheEmptyException(failedSource: box.toString());
    } else {
      var response = await box.get(lessonId.getOrCrash());
      if (response == null) {
        throw KeyNotFoundException(failedSource: box.toString(), failedValue: lessonId.getOrCrash());
      } else {
        return LessonModel.fromJson(response);
      }
    }
  }

  /// Fetches LessonResultModel from cache by [resultModelId].
  ///
  /// Throws a CacheEmptyException if cache is empty.
  /// If there is no LessonModel cached by [resultModelId], throws
  /// a KeyNotFoundException(failedSource, failedValue).
  ///
  /// Failed source and failedValue relate to cache box and
  /// [resultModelId] (that was not found in cache box) respectively.
  @override
  Future<LessonResultModel> getLessonResultModelById(UniqueId resultModelId) async {
    var box = await boxes.resultBox.then((box) => box);

    if (box.isEmpty) {
      throw CacheEmptyException(failedSource: box.toString());
    } else {
      var response = await box.get(resultModelId.getOrCrash());
      if (response == null) {
        throw KeyNotFoundException(failedSource: box.toString(), failedValue: resultModelId.getOrCrash());
      } else {
        return LessonResultModel.fromJson(response);
      }
    }
  }

  /// Fetches all LessonModels from cache.
  @override
  Stream<LessonModel> getAllLessonModels() async* {
    var box = await boxes.lessonBox.then((value) => value);
    for (var i = 0; i < box.length; i++) {
      yield LessonModel.fromJson(box.getAt(i));
    }
  }

  /// Fetches all LessonResultModels from cache.
  @override
  Stream<LessonResultModel> getAllLessonResultModels() async* {
    var box = await boxes.resultBox.then((value) => value);
    for (var i = 0; i < box.length; i++) {
      yield LessonResultModel.fromJson(box.getAt(i));
    }
  }

  /// Caches a [lessonModel] by its own id.
  ///
  /// Each model holds the id of the user it is assigned to under 'assignedToUserId'.
  /// This is neccessary to later fetch all LessonModels assigned to a specific user.
  @override
  Future<void> cacheLessonModel(LessonModel lessonModel) async {
    await boxes.lessonBox.then((box) => box.put(lessonModel.id, lessonModel.toJson()));
  }

  /// Caches a [resultModel] by own id modelId.
  ///
  /// Each model holds the id of the user it is assigned to under 'assignedToUserId'.
  /// This is neccessary to later fetch all LessonResultModels for a specific user.
  @override
  Future<void> cacheLessonResultModel(LessonResultModel resultModel) async {
    await boxes.resultBox.then((box) async => await box.put(resultModel.id, resultModel.toJson()));
  }

  /// Permanently removes a LessonResultModel by its [resultModelId].
  @override
  Future<void> removeLessonModelById(UniqueId lessonModelId) async {
    return await boxes.lessonBox.then((box) async {
      await box.delete(lessonModelId.getOrCrash());
    });
  }

  /// Permanently removes a LessonResultModel by its [resultModelId].
  @override
  Future<void> removeLessonResultModelById(UniqueId resultModelId) async {
    return await boxes.resultBox.then((box) async {
      await box.delete(resultModelId.getOrCrash());
    });
  }

  /// Closes all open connections to caches.
  @override
  Future<void> close() async {
    await boxes.lessonBox.then((box) => box.close());
    await boxes.resultBox.then((box) => box.close());
  }
}
