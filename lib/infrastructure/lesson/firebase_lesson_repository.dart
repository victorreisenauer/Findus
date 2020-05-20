import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:lrs_app_v3/domain/core/value_objects_barrel.dart';
import 'package:lrs_app_v3/domain/lesson/lesson_barrel.dart';
import 'package:lrs_app_v3/infrastructure/lesson/lesson_barrel.dart';
import 'package:mockito/mockito.dart';

@RegisterAs(LessonFacade, env: Environment.prod)
class FirebaseLessonRepository implements LessonFacade {
  final LocalLessonDataSourceFacade _localData;
  final RemoteLessonDataSourceFacade _remoteData;

  FirebaseLessonRepository(this._localData, this._remoteData);

  Future<Either<LessonFailure, Stream<UniqueId>>> getUserLessonIds() async {
    // needs implementation
    return null;
  }

  Future<Either<LessonFailure, Lesson>> getLessonById(UniqueId id) async {
    // needs implementation
    return null;
  }

  Future<void> update() async {
    // needs implementation
    return null;
  }

  Future<void> saveResult(LessonResult result) async {
    // needs implementation
    return null;
  }
}

@RegisterAs(LessonFacade, env: Environment.dev)
class DevFirebaseLessonRepository extends FirebaseLessonRepository
    implements LessonFacade {
  final LocalLessonDataSourceFacade _localData;
  final RemoteLessonDataSourceFacade _remoteData;

  DevFirebaseLessonRepository(this._localData, this._remoteData)
      : super(_localData, _remoteData);
}

@RegisterAs(LessonFacade, env: Environment.test)
class TestFirebaseLessonRepository extends Mock implements LessonFacade {}
