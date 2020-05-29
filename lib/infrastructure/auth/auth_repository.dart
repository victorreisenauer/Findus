import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:lrs_app_v3/domain/auth/auth_barrel.dart';
import 'package:lrs_app_v3/infrastructure/auth/auth_barrel.dart';
import 'package:lrs_app_v3/infrastructure/core/network_info.dart';
import 'package:lrs_app_v3/infrastructure/core/remote_exceptions.dart';
import 'package:meta/meta.dart';

@RegisterAs(AuthFacade)
@lazySingleton
class AuthRepository implements AuthFacade {
  final LocalAuthDataSourceFacade _localData;
  final RemoteAuthDataSourceFacade _remoteData;
  final NetworkInfo _networkInfo;

  AuthRepository(this._localData, this._remoteData, this._networkInfo);

  Future<bool> get _deviceIsOnline => _networkInfo.isConnected;

  Future<Option<AuthFailure>> signUpWithEmailAndPassword({
    @required EmailAddress emailAddress,
    @required Password password,
  }) async {
    if (await _networkInfo.isConnected) {
      try {
        _remoteData.signUpWithEmailAndPassword(
            emailAddress: emailAddress.getOrCrash(),
            password: password.getOrCrash());
        return none();
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

  Future<Either<AuthFailure, User>> getUser() async {
    if (await _deviceIsOnline) {
      try {
        return _remoteData.getUser().then((model) async {
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
      } catch (e) {
        if (e is ServerNotReachableException) {
          return left<AuthFailure, User>(AuthFailure.serverError());
        } else if (e is InvalidSessionException ||
            e is NoLoggedInUserException) {
          return left<AuthFailure, User>(AuthFailure.loginRequired());
        }
      }
    } else {
      return left(AuthFailure.deviceOffline());

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

  Future<Option<AuthFailure>> signInWithEmailAndPassword({
    @required EmailAddress emailAddress,
    @required Password password,
  }) async {
    if (await _deviceIsOnline) {
      try {
        await _remoteData.signInWithEmailAndPassword(
            emailAddress: emailAddress.getOrCrash(),
            password: password.getOrCrash());
        return none<AuthFailure>();
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

  Future<Option<AuthFailure>> signOut() async {
    if (await _deviceIsOnline) {
      _remoteData.signOut();
      return none();
    } else {
      return optionOf(AuthFailure.serverError());
    }
  }
}

/*
on PlatformException catch (e) {
      if (e.code == 'ERROR_WEAK_PASSWORD') {
        return optionOf(AuthFailure.weakPassword());
      }
      if (e.code == 'ERROR_INVALID_EMAIL') {
        return optionOf(AuthFailure.invalidEmail());
      }
      if (e.code == 'ERROR_EMAIL_ALREADY_IN_USE') {
        return optionOf(AuthFailure.emailAlreadyInUse());
      } else
        return optionOf(AuthFailure.serverError());
    }


      Future<Either<AuthFailure, User>> getUser() async {
    return _firebaseAuth.currentUser().then((user) {
      if (user == null) {
        return left(AuthFailure.loginRequired());
      } else {
        return right(
            _userMapper.toDomain(user)); // turn firebase user into domain user
      }
    });


      Future<Option<AuthFailure>> signInWithEmailAndPassword({
    @required EmailAddress emailAddress,
    @required Password password,
  }) async {
    try {
      _firebaseAuth.signInWithEmailAndPassword(
        email: emailAddress.getOrCrash(),
        password: password.getOrCrash(),
      );
      return none();
    } on PlatformException catch (e) {
      if (e.code == 'ERROR_INVALID_EMAIL' || e.code == 'ERROR_WRONG_PASSWORD') {
        return optionOf(AuthFailure.invalidEmailAndPasswordCombination());
      } else if (e.code == 'ERROR_USER_NOT_FOUND') {
        return optionOf(AuthFailure.accountNotFound());
      } else {
        return optionOf(AuthFailure.serverError());
      }
    }
  }
     */
