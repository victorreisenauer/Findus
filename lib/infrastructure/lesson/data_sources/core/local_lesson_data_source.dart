import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';
import 'package:lrs_app_v3/domain/core/value_objects_barrel.dart';
import 'package:lrs_app_v3/infrastructure/core/boxes.dart';
import 'package:lrs_app_v3/infrastructure/core/local_exceptions.dart';
import 'package:lrs_app_v3/infrastructure/lesson/lesson_barrel.dart';

@RegisterAs(LocalLessonDataSourceFacade)
@lazySingleton
class LocalLessonDataSource implements LocalLessonDataSourceFacade {
  final Boxes boxes;

  LocalLessonDataSource(this.boxes);

  /// Fetches all ids from cached LessonModels for this [userId].
  ///
  /// Throws a CacheEmptyException, when cache is empty.
  /// Be sure to call stream.catchError on stream to catch this Exception.
  Stream<UniqueId> getLessonIdsForUser(UniqueId userId) async* {
    Box box = await boxes.lessonBox.then((box) => box);
    if (box.isEmpty) {
      throw CacheEmptyException(failedSource: box.toString());
    } else {
      for (int i = 0; i < box.length; i++) {
        // Get the model at index i.
        LessonModel model = await LessonModel.fromJson(box.getAt(i));
        UniqueId assignedUserId = UniqueId.fromUniqueId(model.assignedToUserId);
        // Yield the model only, if the model has correct user assigned to it.
        if (assignedUserId == userId) {
          yield UniqueId.fromUniqueId(model.id);
        }
      }
    }
  }

  /// Fetches all ids from cached LessonResults for this [userId].
  ///
  /// Throws a CacheEmptyException, when cache is empty.
  /// Be sure to call .catchError on stream to catch this Exception.
  Stream<UniqueId> getLessonResultIdsForUser(UniqueId userId) async* {
    Box box = await boxes.resultBox.then((box) => box);

    if (box.isEmpty) {
      throw CacheEmptyException(failedSource: box.toString());
    } else {
      for (int i = 0; i < box.length; i++) {
        // Get the model at index i.
        LessonResultModel model =
            await LessonResultModel.fromJson(box.getAt(i));
        UniqueId assignedUserId = UniqueId.fromUniqueId(model.assignedToUserId);
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
  Future<LessonModel> getLessonModelById(UniqueId lessonId) async {
    Box box = await boxes.lessonBox.then((box) => box);
    if (box.isEmpty) {
      throw CacheEmptyException(failedSource: box.toString());
    } else {
      var response = await box.get(lessonId.getOrCrash());
      if (response == null) {
        throw KeyNotFoundException(
            failedSource: box.toString(), failedValue: lessonId.getOrCrash());
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
  Future<LessonResultModel> getLessonResultModelById(
      UniqueId resultModelId) async {
    Box box = await boxes.resultBox.then((box) => box);

    if (box.isEmpty) {
      throw CacheEmptyException(failedSource: box.toString());
    } else {
      var response = await box.get(resultModelId.getOrCrash());
      if (response == null) {
        throw KeyNotFoundException(
            failedSource: box.toString(),
            failedValue: resultModelId.getOrCrash());
      } else {
        return LessonResultModel.fromJson(response);
      }
    }
  }

  /// Fetches all LessonModels in cache.
  ///
  /// Untested! Needs implementation!
  Stream<LessonModel> getAllLessonsModels() {
    // needs implementation
    return null;
  }

  /// Fetches all LessonResultModels in cache.
  ///
  /// Untested! Needs implementation!
  Stream<LessonResultModel> getAllLessonResultModels() {
    // needs implementation
    return null;
  }

  /// Caches a [lessonModel] by its own id.
  ///
  /// Each model holds the id of the user it is assigned to under 'assignedToUserId'.
  /// This is neccessary to later fetch all LessonModels assigned to a specific user.
  Future<void> cacheLessonModel(LessonModel lessonModel) async {
    await boxes.lessonBox
        .then((box) => box.put(lessonModel.id, lessonModel.toJson()));
  }

  /// Caches a [resultModel] by own id modelId.
  ///
  /// Each model holds the id of the user it is assigned to under 'assignedToUserId'.
  /// This is neccessary to later fetch all LessonResultModels for a specific user.
  Future<void> cacheLessonResultModel(LessonResultModel resultModel) async {
    await boxes.resultBox.then(
        (box) async => await box.put(resultModel.id, resultModel.toJson()));
  }

  /// Permanently removes a LessonResultModel by its [resultModelId].
  ///
  /// Untested! Needs implementation!
  Future<void> removeLessonResultModelById(UniqueId resultModelId) async {
    return null;
  }

  /// Permanently removes a LessonResultModel by its [resultModelId].
  ///
  /// Untested! Needs implementation!
  Future<void> removeLessonModelById(UniqueId lessonModelId) {
    // needs implementation
    return null;
  }

  /// Closes all open connections to caches.
  ///
  /// Untested!
  Future<void> close() async {
    await boxes.lessonBox.then((box) => box.close());
    await boxes.resultBox.then((box) => box.close());
  }
}
