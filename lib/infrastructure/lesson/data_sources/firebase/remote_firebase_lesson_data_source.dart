import 'dart:convert';

import 'package:cloud_functions/cloud_functions.dart';
import 'package:injectable/injectable.dart';
import 'package:lrs_app_v3/domain/core/value_objects_barrel.dart';
import 'package:lrs_app_v3/infrastructure/lesson/data_sources/remote_lesson_data_source_facade.dart';
import 'package:lrs_app_v3/infrastructure/lesson/lesson_barrel.dart';

/// Interacts directly with Firebase server to push and pull data.
@RegisterAs(RemoteLessonDataSourceFacade)
@lazySingleton
class RemoteFirebaseLessonDataSource implements RemoteLessonDataSourceFacade {
  final CloudFunctions _cloudFunctions;

  RemoteFirebaseLessonDataSource(this._cloudFunctions);

  /// Fetches all data for lesssons available to user.
  ///
  /// If there is no authenticated user, throws NoUserLoggedInException.
  ///
  /// Missing implementation!
  Stream<LessonModel> getAvailableLessonData() async* {
    Map response =
        await _cloudFunctions.getHttpsCallable(functionName: "getLessons").call().then((response) => response.data);

    // converts Map<dynamic, dynamic> to Map<String, dynamic>
    // fixes some types in Json
    response = jsonDecode(jsonEncode(response));
    LessonModels models = LessonModels.fromJson(response);

    for (LessonModel model in models.exercises) {
      yield model;
    }
  }

  /// Pushes a [resultModel] to server.
  ///
  /// If there is no authenticated user, throws NoUserLoggedInException.
  ///
  /// Missing implementation!
  Future<void> pushResult(LessonResultModel resultModel) async {
    await _cloudFunctions.getHttpsCallable(functionName: "submitLesson").call({
      'data': resultModel.toJson(),
    });
    return null;
  }
}
