import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';
import 'package:injectable/injectable.dart';

import 'package:lrs_app_v3/domain/lesson/lesson_barrel.dart';
import 'package:lrs_app_v3/domain/core/value_objects_barrel.dart';
import 'package:lrs_app_v3/infrastructure/core/network_info.dart';
import 'package:lrs_app_v3/infrastructure/lesson/lesson_barrel.dart';

import '../core/exceptions.dart';

@RegisterAs(LessonFacade, env: Environment.prod)
@lazySingleton
class LessonRepository implements LessonFacade {
  final NetworkInfo networkInfo;
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
    LessonModel model = await localData.getLessonModelById(id);
    return right(model.toDomain());
  }

  Future<void> saveResult(LessonResult result) {
    // needs implementation
    return null;
  }

  Future<void> update() async {
    if (await networkInfo.isConnected && await remoteData.isAvailable) {
      final lessonModelsStream = remoteData.getAvailableLessonData();
      lessonModelsStream.listen((lessonModel) {
        localData.cacheLessonModel(lessonModel);
      });
      try {
        remoteData.pushResults(await localData.getUnpushedLessonResults());
      } catch (e) {
        throw Exception(e);
      }
      _close();
    } else {
      throw ServerException(); // failure?
    }
  }

  void _close() {
    remoteData.close();
    localData.close();
  }
}

@RegisterAs(LessonFacade, env: Environment.test)
@lazySingleton
class TestLessonRepository implements LessonFacade {
  //final SampleLessonGenerator sampler = SampleLessonGenerator();
  Either<LessonFailure, Stream<UniqueId>> getUserLessonIds() {}
  Future<Either<LessonFailure, Lesson>> getLessonById(UniqueId id) {}
  Future<void> update() {}
  Future<void> saveResult(LessonResult result) {}
}
