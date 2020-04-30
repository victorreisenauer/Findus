import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';

import 'package:lrs_app_v3/domain/lesson/lesson_barrel.dart';
import 'package:lrs_app_v3/domain/core/value_objects_barrel.dart';
import 'package:lrs_app_v3/infrastructure/core/network_info.dart';
import 'package:lrs_app_v3/infrastructure/lesson/lesson_barrel.dart';

import '../core/exceptions.dart';

class LessonRepository implements LessonFacade {
  final NetworkInfoFacade networkInfo;
  final LocalLessonDataSource localData;
  final RemoteLessonDataSource remoteData;

  LessonRepository({
    @required this.networkInfo,
    @required this.localData,
    @required this.remoteData,
  });

  @override
  Either<LessonFailure, Stream<UniqueId>> getUserLessonIds() {
    // TODO: pass back a lesson failure, if ids could not be obtained
    return right(localData.getUserLessonIds());
  }

  Future<Either<LessonFailure, Lesson>> getLessonById(UniqueId id) async {
    LessonModel model = await localData.getLessonById(id);
    return right(model.toDomain());
  }

  Future<void> saveResult(LessonResult result) {
    // needs implementation
    return null;
  }

  Future<void> update() async {
    if (await networkInfo.isConnected && await remoteData.isAvailable) {
      List<LessonModel> lessonModels =
          await remoteData.getAvailableLessonData();
      for (LessonModel model in lessonModels) {
        // cache lessons from remoteData into localData
        localData.cacheLesson(model);

        // push new Results from localData to remoteData
        try {
          remoteData.pushResults(await localData.getUnpushedResults());
        } catch (e) {
          throw Exception(e);
        }
      }
    } else {
      throw ServerException();
    }
  }
}
