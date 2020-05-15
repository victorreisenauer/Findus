import 'dart:convert';
import 'package:lrs_data_client/lrs_api.dart';
import 'package:injectable/injectable.dart';

import 'package:lrs_app_v3/infrastructure/lesson/lesson_barrel.dart';
import 'package:lrs_app_v3/domain/lesson/lesson_barrel.dart';
import 'package:lrs_app_v3/infrastructure/core/exceptions.dart';

abstract class RemoteLessonDataSource {
  Stream<LessonModel> getAvailableLessonData();
  Future<void> pushResults(List<LessonResult> results);
  Future<void> close();
}

@RegisterAs(RemoteLessonDataSource, env: Environment.prod)
@injectable
class RemoteLessonDataSourceImpl implements RemoteLessonDataSource {
  final Api _api;
  RemoteLessonDataSourceImpl(this._api);

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

  Future<void> pushResults(List<LessonResult> results) {
    // needs implementation
  }

  Future<void> close() async {
    _api.close();
  }
}
