import 'dart:convert';

import 'package:cloud_functions/cloud_functions.dart';
import 'package:injectable/injectable.dart';
import 'package:lrs_app_v3/infrastructure/lesson/data_sources/remote_lesson_data_source_facade.dart';
import 'package:lrs_app_v3/infrastructure/lesson/lesson_barrel.dart';
import 'package:mockito/mockito.dart';

@RegisterAs(RemoteLessonDataSourceFacade, env: Environment.prod)
@lazySingleton
class RemoteFirebaseLessonDataSource implements RemoteLessonDataSourceFacade {
  final CloudFunctions _cloudFunctions;
  RemoteFirebaseLessonDataSource(this._cloudFunctions);

  Stream<LessonModel> getAvailableLessonData() async* {
    String response = await _cloudFunctions
        .getHttpsCallable(functionName: "getLessons")
        .call()
        .then((response) => response.data);
    yield LessonModel.fromJson(jsonDecode(response));
  }

  Future<void> pushResult(LessonResultModel resultModel) {
    // missing impl
    return null;
  }

  Future<void> close() {
    // missing impl
    return null;
  }
}

@RegisterAs(RemoteLessonDataSourceFacade, env: Environment.dev)
@lazySingleton
class DevRemoteFirebaseLessonDataSource extends RemoteFirebaseLessonDataSource {
  final _cloudFunctions;
  DevRemoteFirebaseLessonDataSource(this._cloudFunctions)
      : super(_cloudFunctions);
}

@RegisterAs(RemoteLessonDataSourceFacade, env: Environment.test)
@lazySingleton
class TestRemoteFirebaseLessonDataSource extends Mock
    implements RemoteLessonDataSourceFacade {}
