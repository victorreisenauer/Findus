import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:lrs_app_v3/domain/auth/auth_barrel.dart';
import 'package:lrs_app_v3/domain/core/value_objects_barrel.dart';
import 'package:lrs_app_v3/domain/lesson/lesson_barrel.dart';
import 'package:lrs_app_v3/infrastructure/core/local_exceptions.dart';
import 'package:lrs_app_v3/infrastructure/core/network_info.dart';
import 'package:lrs_app_v3/infrastructure/lesson/lesson_barrel.dart';

@RegisterAs(LessonFacade)
@lazySingleton
class LessonRepository implements LessonFacade {
  final LocalLessonDataSourceFacade _localData;
  final RemoteLessonDataSourceFacade _remoteData;
  final NetworkInfo _networkInfo;
  final AuthFacade _authFacade;

  LessonRepository(
    this._localData,
    this._remoteData,
    this._networkInfo,
    this._authFacade,
  );

  Future<Either<AuthFailure, User>> get eitherUserOrFailure =>
      _authFacade.getUser().then((response) => response);

  /// Fetches all available Lesson ids for user [userId].
  ///
  /// Only fetches lesson ids from cache. Be sure to call
  /// LessonRepository.update() to make sure all lesson data from
  /// remote data source is available in cache.
  ///
  /// Needs bugfix!
  Future<Either<LessonFailure, Stream<UniqueId>>> getLessonIdsForUser() async {
    UniqueId userId;
    AuthFailure authFailure;

    await eitherUserOrFailure.then((either) => either.fold((l) async {
          authFailure = l;
        }, (r) async {
          userId = r.id;
        }));

    if (authFailure != null) {
      return left(LessonFailure.unexpected());
    }

    if (await _localData.isLessonCacheEmpty()) {
      return left(LessonFailure.noCachedLessons());
    } else {
      return right(await _localData.getLessonIdsForUser(userId));
    }
  }

  /// Get a specific Lesson from cache by its [lessonId].
  ///
  /// Needs bugfix!
  Future<Either<LessonFailure, Lesson>> getLessonById(UniqueId lessonId) async {
    try {
      LessonModel model = await _localData.getLessonModelById(lessonId);
      return right(model.toDomain());
    } catch (e) {
      if (e is CacheEmptyException) {
        return left(LessonFailure.noCachedLessons());
      } else if (e is KeyNotFoundException) {
        return left(
            LessonFailure.lessonNotFound(failedId: lessonId.getOrCrash()));
      }

      //return left(LessonFailure.unexpected());
    }
  }

  /// Updates cache with Lesson data and server with cached LessonResults.
  ///
  /// Make sure to call this regularly, so app and server are always
  /// updated.
  Future<Option<LessonFailure>> update() async {
    UniqueId userId;
    AuthFailure authFailure;

    await eitherUserOrFailure.then((either) => either.fold((l) async {
          authFailure = l;
        }, (r) async {
          userId = r.id;
        }));

    if (authFailure != null) {
      return optionOf(LessonFailure.unexpected());
    }
    if (await _networkInfo.isConnected) {
      await _remoteData.getAvailableLessonData().forEach((model) async {
        await _localData.cacheLessonModel(model);
      });
      try {
        return await _localData
            .getLessonResultIdsForUser(userId)
            .forEach((resultModelId) async {
          LessonResultModel model =
              await _localData.getLessonResultModelById(resultModelId);
          await _remoteData.pushResult(model);
          await _localData.removeLessonResultModelById(resultModelId);
        }).then((value) => none());
      } catch (e) {
        throw Exception(e.toString());
      }
    } else {
      return optionOf(LessonFailure.deviceOffline());
    }
  }

  /// Store a LessonResult in cache.
  ///
  /// Be sure to call LessonRepository.update() at some point,
  /// to push results from cache to server.
  Future<Option<LessonFailure>> saveResult(LessonResult result) async {
    UniqueId userId;
    AuthFailure authFailure;

    await eitherUserOrFailure.then((either) => either.fold((l) async {
          authFailure = l;
        }, (r) async {
          userId = r.id;
        }));

    if (authFailure != null) {
      return optionOf(LessonFailure.unexpected());
    }
    try {
      await _localData
          .cacheLessonResultModel(LessonResultModel.fromDomain(result, userId));
      return none();
    } catch (e) {
      return optionOf(LessonFailure.unexpected());
    }
  }
}
