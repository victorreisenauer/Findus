import 'dart:convert';

import 'package:lrs_app_v3/infrastructure/core/remote_exceptions.dart';
import 'package:lrs_app_v3/infrastructure/lesson/lesson_barrel.dart';
import 'package:lrs_data_client/lrs_api.dart';

class RemoteApiLessonDataSource implements RemoteLessonDataSourceFacade {
  final Api _api;
  RemoteApiLessonDataSource(this._api);

  Future<bool> get isAvailable async {
    if (await _api.checkConnection()) {
      if (await _api.validateSession()) {
        return true;
      } else {
        throw InvalidSessionException();
      }
    } else {
      throw ServerNotReachableException();
    }
  }

  Stream<LessonModel> getAvailableLessonData() async* {
    for (Map<String, dynamic> json in jsonDecode(await _api.lessonsJson)) {
      yield LessonModel.fromJson(json);
    }
  }

  Future<void> pushResult(LessonResultModel result) {
    // needs implementation
  }

  Future<void> close() async {
    _api.close();
  }
}
