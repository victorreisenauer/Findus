import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:mockito/mockito.dart';
import 'package:meta/meta.dart';
import 'package:injectable/injectable.dart';

import 'package:lrs_data_client/lrs_api.dart';
import 'package:lrs_app_v3/domain/auth/auth_barrel.dart';
import 'package:lrs_app_v3/infrastructure/core/network_info.dart';
import 'package:lrs_app_v3/domain/core/failures.dart';
import 'package:lrs_app_v3/infrastructure/auth/auth_barrel.dart';

import '../../core/exceptions.dart';

/// RemoteAuthDataSource handles all api interaction related to
/// authentication.
abstract class RemoteAuthDataSource {
  Future<UserModel> getCurrentUser();
  Future<String> get session;
  Future<void> signOut();
  Future<void> signIn({@required String username, @required String password});
}

@RegisterAs(RemoteAuthDataSource, env: Environment.test)
@lazySingleton
class TestRemoteAuthDataSourceImpl extends Mock
    implements RemoteAuthDataSource {}

@RegisterAs(RemoteAuthDataSource, env: Environment.prod)
@lazySingleton
class RemoteAuthDataSourceImpl implements RemoteAuthDataSource {
  Api _api;

  RemoteAuthDataSourceImpl(this._api);

  Future<String> get session async => _api.session;

  Future<bool> get _sessionIsValid async =>
      _api.session != null && await _api.validateSession();

  Future<bool> get _apiAvailable => _api.checkConnection();

  Future<UserModel> getCurrentUser() async {
    if (await _apiAvailable) {
      if (await _sessionIsValid) {
        Map<String, dynamic> json = jsonDecode(await _api.currentUserJson);
        return UserModel.fromJson(json['data']);
      } else
        throw InvalidSessionException();
    } else
      throw ServerNotReachableException();
  }

  Future<void> signOut() async {
    _api.logout();
  }

  Future<void> signIn({@required String username, @required password}) async {
    if (await _apiAvailable) {
      if (!await _sessionIsValid) {
        try {
          await _api.login(username: username, password: password);
        } catch (e) {
          if (e is UnhandledEndpointException) {
            throw UnhandledEndpointException(e.cause);
          } else if (e is InvalidCredentialsException) {
            throw (InvalidCredentialsException());
          } else {
            throw e;
          }
//          if (e is InvalidRequestBodyException) {
//            throw (InvalidRequestBodyException());
//          }
        }
      } else
        throw AlreadyLoggedInException();
    } else
      throw ServerNotReachableException();
  }
}
