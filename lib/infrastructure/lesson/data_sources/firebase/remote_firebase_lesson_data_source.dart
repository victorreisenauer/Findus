import 'dart:convert';

import 'package:cloud_functions/cloud_functions.dart';
import 'package:injectable/injectable.dart';
import 'package:lrs_app_v3/infrastructure/core/remote_exceptions.dart';
import 'package:lrs_app_v3/infrastructure/lesson/data_sources/remote_lesson_data_source_facade.dart';
import 'package:lrs_app_v3/infrastructure/lesson/lesson_barrel.dart';

@RegisterAs(RemoteLessonDataSourceFacade)
@lazySingleton
class RemoteFirebaseLessonDataSource implements RemoteLessonDataSourceFacade {
  final CloudFunctions _cloudFunctions;
  RemoteFirebaseLessonDataSource(this._cloudFunctions);

  /// Fetches Lesson data for current user from Firebase Cloud Functions.
  ///
  /// Requires user to be authenticated.
  /// Throws NoUserLoggedInException if user isn't.
  Stream<LessonModel> getAvailableLessonData() async* {
    try {
      String response = await _cloudFunctions
          .getHttpsCallable(functionName: "getLessons")
          .call()
          .then((response) => response.data);
      yield LessonModel.fromJson(jsonDecode(response));
    } catch (e) {
      if (e) {
        // Todo: if (e is HttpsError)
        throw NoLoggedInUserException();
      }
    }
  }

  /// Pushes [resultModel] to Firebase Cloud Functions.
  ///
  /// Requires user to be authenticated.
  /// Throws NoUserLoggedInException if user isn't.
  Future<void> pushResult(LessonResultModel resultModel) {
    // missing implementation
    return null;
  }

  /// Closes all connections to Cloud Functions.
  Future<void> close() {
    // missing impl
    return null;
  }
}
