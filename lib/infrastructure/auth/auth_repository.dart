import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';
import 'package:injectable/injectable.dart';
import 'package:mockito/mockito.dart';

import 'package:lrs_app_v3/domain/auth/auth_barrel.dart';
import 'package:lrs_app_v3/infrastructure/auth/auth_barrel.dart';
import 'package:lrs_app_v3/infrastructure/core/network_info.dart';
import 'package:lrs_app_v3/domain/core/failures.dart';

import '../../domain/core/failures.dart';
import '../core/exceptions.dart';

@RegisterAs(AuthFacade, env: Environment.test)
@lazySingleton
class TestAuthRepository extends Mock implements AuthFacade {}

@RegisterAs(AuthFacade, env: Environment.prod)
@injectable
class AuthRepository implements AuthFacade {
  final LocalAuthDataSource _localData;
  final RemoteAuthDataSource _remoteData;
  final NetworkInfo _networkInfo;

  AuthRepository(this._localData, this._remoteData, this._networkInfo);

  Future<bool> get _deviceIsOnline => _networkInfo.isConnected;

  Future<Either<AuthFailure, User>> getUser() async {
    if (await _deviceIsOnline) {
      _remoteData
          .getCurrentUser()
          .then((v) async {
            UserModel model = await _remoteData.getCurrentUser();
            // get first and last name for userId from cache
            //return model.toDomain(firstName, lastName)
          })
          .catchError(() => AuthFailure.serverError(),
              test: (e) => e is ServerNotReachableException)
          .catchError(() => AuthFailure.loginRequired(),
              test: (e) => e is InvalidSessionException);
    } else {
      // work with cache
    }
  }

  Future<Option<AuthFailure>> signInWithEmailAndPassword({
    @required EmailAddress emailAddress,
    @required Password password,
  }) async {}
  Future<Option<AuthFailure>> signOut() async {}
}
