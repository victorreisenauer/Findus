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
class MockAuthRepository extends Mock implements AuthFacade {}

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
      return _remoteData
          .getCurrentUser()
          .then((model) async {
            _localData.cacheSession(
                model.id.toString(), await _remoteData.session);
            try {
              PersonalDataModel data =
                  await _localData.getPersonalData(model.id.toString());
              return right<AuthFailure, User>(model.toDomain(data.toDomain()));
            } on KeyNotFoundException {
              return right<AuthFailure, User>(
                  model.toDomain(PersonalData.empty()));
            }
          })
          .catchError((_) => left<AuthFailure, User>(AuthFailure.serverError()),
              test: (e) => e is ServerNotReachableException)
          .catchError(
              (_) => left<AuthFailure, User>(AuthFailure.loginRequired()),
              test: (e) => e is InvalidSessionException);
    } else {
      List<UserModel> models = await _localData
          .getAllUserModels()
          .where((model) => model.active != null)
          .where((model) => model.active)
          .toList();
      if (models.isEmpty) return right(User.empty());
      UserModel model = models.first;
      _localData.getSession(model.id.toString());
      PersonalDataModel data =
          await _localData.getPersonalData(model.id.toString());
      User user = model.toDomain(data.toDomain());
      return right(user);
      // catch KeyNotFoundException
    }
  }

  Future<Option<AuthFailure>> signInWithEmailAndPassword({
    @required EmailAddress emailAddress,
    @required Password password,
  }) async {
    if (await _deviceIsOnline) {
      _remoteData
          .signIn(
              username: emailAddress.getOrCrash(),
              password: password.getOrCrash())
          .catchError(
              () => optionOf(AuthFailure.invalidEmailAndPasswordCombination()),
              test: (e) => e is InvalidSessionException);
      // TODO: solve if logins are via userid or emailaddress
      return none();
    } else {
      return optionOf(AuthFailure.serverError());
    }
  }

  Future<Option<AuthFailure>> signOut() async {
    if (await _deviceIsOnline) {
      _remoteData.signOut();
      return none();
    } else {
      return optionOf(AuthFailure.serverError());
    }
  }
}