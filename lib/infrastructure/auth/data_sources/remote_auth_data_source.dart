import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';
import 'package:injectable/injectable.dart';

import 'package:lrs_data_client/lrs_api.dart';
import 'package:lrs_app_v3/domain/auth/auth_barrel.dart';
import 'package:lrs_app_v3/infrastructure/core/network_info.dart';
import 'package:lrs_app_v3/domain/core/failures.dart';
import 'package:lrs_app_v3/infrastructure/auth/auth_barrel.dart';

import '../../core/exceptions.dart';

abstract class RemoteAuthDataSource {
  Future<UserModel> getCurrentUser();
  Future<void> signOut();
  Future<void> signIn({String username, password});
}

@RegisterAs(RemoteAuthDataSource, env: Environment.prod)
@lazySingleton
class RemoteAuthDataSourceImpl implements RemoteAuthDataSource {
  Api _api;

  RemoteAuthDataSourceImpl(this._api);

  Future<bool> get _sessionIsValid async {
    if (_api.session != null && await _api.validateSession()) return true;
    return false;
  }

  Future<bool> get _apiAvailable => _api.checkConnection();

  Future<UserModel> getCurrentUser() async {
    if (await _apiAvailable) {
      if (await _sessionIsValid) {
        String json = await _api.currentUserJson;
        return UserModel.fromJson(jsonDecode(json));
      }
      throw InvalidSessionException();
    }
    throw ServerNotReachableException();
  }

  Future<void> signOut() async {
    _api.logout();
  }

  Future<void> signIn({String username, password}) async {
    _api.login(username: username, password: password);
  }
}
