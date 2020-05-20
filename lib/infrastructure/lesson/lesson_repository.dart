import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:lrs_app_v3/domain/auth/auth_barrel.dart';
import 'package:lrs_app_v3/domain/core/value_objects_barrel.dart';
import 'package:lrs_app_v3/domain/lesson/lesson_barrel.dart';
import 'package:lrs_app_v3/infrastructure/core/network_info.dart';
import 'package:lrs_app_v3/infrastructure/core/remote_exceptions.dart';
import 'package:lrs_app_v3/infrastructure/lesson/lesson_barrel.dart';
import 'package:lrs_app_v3/injection.dart';
import 'package:meta/meta.dart';

@RegisterAs(LessonFacade, env: Environment.prod)
@lazySingleton
class LessonRepository implements LessonFacade {
  final NetworkInfo networkInfo;
  final LocalLessonDataSourceFacade localData;
  final RemoteLessonDataSourceFacade remoteData;

  final Future<Either<AuthFailure, User>> currentUser =
      getIt<AuthFacade>().getUser();

  LessonRepository({
    @required this.networkInfo,
    @required this.localData,
    @required this.remoteData,
  });

  @override
  Future<Either<LessonFailure, Stream<UniqueId>>> getUserLessonIds() {
    /*
    Either<AuthFailure, User> failureOrUser =
        await currentUser.then((either) => either);
    return failureOrUser.fold((failure) => left(LessonFailure.unexpected()),
        (user) {
      Stream stream = localData.getUserLessonIds(user.id);
      // catch errors
      return right(stream);
    });
    */
    return null;
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
    if (await networkInfo.isConnected) {
      // TODO
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
      throw UnknownRemoteException(); // failure?
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
  Future<Either<LessonFailure, Stream<UniqueId>>> getUserLessonIds() {}
  Future<Either<LessonFailure, Lesson>> getLessonById(UniqueId id) {}
  Future<void> update() {}
  Future<void> saveResult(LessonResult result) {}
}
