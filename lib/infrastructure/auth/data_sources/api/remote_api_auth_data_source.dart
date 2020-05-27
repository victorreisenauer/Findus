import 'dart:convert';

import 'package:lrs_app_v3/infrastructure/auth/auth_barrel.dart';
import 'package:lrs_app_v3/infrastructure/core/remote_exceptions.dart';
import 'package:lrs_data_client/lrs_api.dart';
import 'package:meta/meta.dart';

/*
commented out, because we are currently using the firebase data source

@RegisterAs(RemoteAuthDataSourceFacade)
@lazySingleton
*/

class RemoteApiAuthDataSource implements RemoteAuthDataSourceFacade {
  final Api _api;

  RemoteApiAuthDataSource(this._api);

  Future<String> get session async => _api.session;

  Future<bool> get _sessionIsValid async =>
      _api.session != null && await _api.validateSession();

  Future<bool> get _apiAvailable => _api.checkConnection();

  Future<UserModel> getUser() async {
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

  Future<void> signInWithEmailAndPassword(
      {@required String emailAddress, @required password}) async {
    if (await _apiAvailable) {
      if (!await _sessionIsValid) {
        try {
          await _api.login(username: emailAddress, password: password);
        } catch (e) {
          if (e is UnhandledEndpointException) {
            throw UnhandledEndpointException(e.cause);
          } else if (e is InvalidCredentialsException) {
            throw (InvalidLoginDetailsException());
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

  Future<void> signUpWithEmailAndPassword(
      {@required String emailAddress, @required String password}) {
    // needs implementation
  }
}
