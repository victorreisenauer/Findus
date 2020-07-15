import "package:dartz/dartz.dart";
import "package:injectable/injectable.dart";
import "package:meta/meta.dart";

import "../../domain/auth/auth_barrel.dart";
import "../core/network_info.dart";
import "../core/remote_exceptions.dart";
import "auth_barrel.dart";

/// Acts as the single source of authentication data.
///
/// AuthRepository handles all authentication related calls with
/// remote DataSources (eg. Firebase), and localDataSources (eg. cache).
@RegisterAs(AuthFacade)
@lazySingleton
class AuthRepository implements AuthFacade {
  final LocalAuthDataSourceFacade _localData;
  final RemoteAuthDataSourceFacade _remoteData;
  final NetworkInfo _networkInfo;

  AuthRepository(this._localData, this._remoteData, this._networkInfo);

  Future<bool> get _deviceIsOnline => _networkInfo.isConnected;

  /// just to use [_localData]
  LocalAuthDataSourceFacade get localData => _localData;

  /// Registers and authenticates a new user.
  ///
  /// When online, this will try to use [emailAddress] and [password] to authenticate user
  /// with our remote DataSources.
  ///
  /// NOTE: Authentication is not possible when offline.
  /// An AuthFailure will be returned then.
  @override
  Future<Option<AuthFailure>> signUpWithEmailAndPassword({
    @required EmailAddress emailAddress,
    @required Password password,
  }) async {
    if (await _networkInfo.isConnected) {
      try {
        await _remoteData.signUpWithEmailAndPassword(
            emailAddress: emailAddress.getOrCrash(), password: password.getOrCrash());
        return none();
        // ignore: avoid_catches_without_on_clauses
      } catch (e) {
        if (e is EmailAlreadyInUseException) {
          return optionOf(AuthFailure.emailAlreadyInUse());
        } else if (e is WeakPasswordException) {
          return optionOf(AuthFailure.weakPassword());
        } else if (e is InvalidEmailException) {
          return optionOf(AuthFailure.invalidEmail());
        } else {
          throw RemoteException();
        }
      }
    } else {
      return optionOf(AuthFailure.deviceOffline());
    }
  }

  /// This gets current authenticated user.
  ///
  /// If there is currently no authenticated user, the user
  /// will have to log in again.
  @override
  Future<Either<AuthFailure, User>> getUser() async {
    if (await _deviceIsOnline) {
      try {
        return await _remoteData.getUser().then((model) async {
          /*
            try {
              PersonalDataModel data =
                  await _localData.getPersonalData(model.id.toString());
              return right<AuthFailure, User>(model.toDomain(data.toDomain()));
            } on KeyNotFoundException {
              */
          return right<AuthFailure, User>(model.toDomain(PersonalData.empty()));
          //}
        });
        // ignore: avoid_catches_without_on_clauses
      } catch (e) {
        if (e is ServerNotReachableException) {
          return left<AuthFailure, User>(AuthFailure.serverError());
        } else if (e is InvalidSessionException || e is NoLoggedInUserException) {
          return left<AuthFailure, User>(AuthFailure.loginRequired());
        } else {
          return null;
          // when another exception is thrown, this will let it break the code.
        }
      }
    } else {
      return left(AuthFailure.deviceOffline());

      // below is a sample implementation once caching is available

      /*
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

      */
    }
  }

  /// This authenticates a user.
  ///
  /// When device is offline, this will authenticate the user using [emailAddress] and [password].
  /// A failure is returned, if the device is offline.
  @override
  Future<Option<AuthFailure>> signInWithEmailAndPassword({
    @required EmailAddress emailAddress,
    @required Password password,
  }) async {
    if (await _deviceIsOnline) {
      try {
        await _remoteData.signInWithEmailAndPassword(
            emailAddress: emailAddress.getOrCrash(), password: password.getOrCrash());
        return none<AuthFailure>();
        // ignore: avoid_catches_without_on_clauses
      } catch (e) {
        if (e is InvalidSessionException) {
          return optionOf(AuthFailure.loginRequired());
        } else if (e is InvalidEmailAndPasswordCombinationException) {
          return optionOf(AuthFailure.invalidEmailAndPasswordCombination());
        } else if (e is AccountNotFoundException) {
          return optionOf(AuthFailure.accountNotFound());
        } else {
          throw Exception(e.toString());
        }
      }
    } else {
      return optionOf(AuthFailure.deviceOffline());
    }
  }

  /// Signs out user.
  ///
  /// This signs out user from our remote DataSources.
  /// Next time, the user will need to sign in again to continue.
  @override
  Future<Option<AuthFailure>> signOut() async {
    if (await _deviceIsOnline) {
      await _remoteData.signOut();
      return none();
    } else {
      return optionOf(AuthFailure.serverError());
    }
  }
}
