import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:lrs_app_v3/domain/core/value_objects_barrel.dart';
import 'package:lrs_app_v3/domain/lesson/lesson_barrel.dart';
import 'package:lrs_app_v3/infrastructure/core/network_info.dart';
import 'package:lrs_app_v3/infrastructure/lesson/lesson_barrel.dart';
import 'package:mockito/mockito.dart';

@RegisterAs(LessonFacade, env: Environment.prod)
@lazySingleton
class LessonRepository implements LessonFacade {
  final LocalLessonDataSourceFacade _localData;
  final RemoteLessonDataSourceFacade _remoteData;
  final NetworkInfo _networkInfo;

  LessonRepository(this._localData, this._remoteData, this._networkInfo);

  Future<Either<LessonFailure, Stream<UniqueId>>> getUserLessonIds() async {}

  Future<Either<LessonFailure, Lesson>> getLessonById(UniqueId id) async {
    // needs implementation
    return null;
  }

  Future<Option<LessonFailure>> update(UniqueId userId) async {
    if (await _networkInfo.isConnected) {
      _remoteData.getAvailableLessonData().forEach((model) {
        _localData.cacheLessonModel(model);
      });
      try {
        _localData.getLessonResult(userId).forEach((resultModel) async {
          await _remoteData.pushResult(resultModel);
          _localData.removeLessonResultsModel(); // TODO: add userID
        });

        return none();
      } catch (e) {
        throw Exception(e.toString());
      }
    } else {
      return optionOf(LessonFailure.deviceOffline());
    }
  }

  Future<Option<LessonFailure>> saveResult(LessonResult result) async {
    // needs implementation
    return null;
  }
}

@RegisterAs(LessonFacade, env: Environment.dev)
@lazySingleton
class DevLessonRepository extends LessonRepository implements LessonFacade {
  final LocalLessonDataSourceFacade _localData;
  final RemoteLessonDataSourceFacade _remoteData;
  final NetworkInfo _networkInfo;

  DevLessonRepository(this._localData, this._remoteData, this._networkInfo)
      : super(_localData, _remoteData, _networkInfo);
}

@RegisterAs(LessonFacade, env: Environment.test)
@lazySingleton
class TestFirebaseLessonRepository extends Mock implements LessonFacade {}
