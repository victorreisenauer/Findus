import 'package:injectable/injectable.dart';
import 'package:mockito/mockito.dart';
import 'package:hive/hive.dart';
import 'package:lrs_app_v3/infrastructure/auth/auth_barrel.dart';
import 'package:lrs_app_v3/infrastructure/core/exceptions.dart';
import 'package:lrs_app_v3/infrastructure/core/boxes.dart';

abstract class LocalAuthDataSource {
  Future<void> cacheUserModel(UserModel model);
  Future<void> cachePersonalData(String userId, PersonalDataModel data);
  Future<void> cacheSession(String userId, String session);
  Future<UserModel> getUserModel(String userId);
  Stream<UserModel> getAllUserModels();
  Future<String> getSession(String userId);
  Future<PersonalDataModel> getPersonalData(String userId);
  Future<void> removeSession(String userId);
  Future<void> removePersonalData(String userId);
  Future<void> removeUserModel(String userId);
  Future<void> close();
}

@RegisterAs(LocalAuthDataSource, env: Environment.prod)
@lazySingleton
class LocalAuthDataSourceImpl implements LocalAuthDataSource {
  /// store [UserModel] in cache. IMPORTANT: use 'await' keyword when
  /// caching to make sure cache is complete before box is accessed again.
  Future<void> cacheUserModel(UserModel model) async {
    Box userBox = await Boxes.userBox;
    await userBox.put(model.id.toString(), model.toJson());
  }

  Future<UserModel> getUserModel(String userId) async {
    Box userBox = await Boxes.userBox;
    Map json = await userBox.get(userId);
    if (json == null)
      throw KeyNotFoundException(
          failedValue: userId, failedSource: userBox.toString());
    return UserModel.fromJson(json.cast<String, dynamic>());
  }

  Stream<UserModel> getAllUserModels() async* {
    Box userBox = await Boxes.userBox;
    if (userBox.isEmpty) throw CacheEmptyException();
    for (int i; i < userBox.length; i++) {
      Map json = userBox.getAt(i);
      yield UserModel.fromJson(json.cast<String, dynamic>());
    }
  }

  /// store Session in cache. IMPORTANT: use 'await' keyword when
  /// caching to make sure cache is complete before box is accessed again.
  Future<void> cacheSession(String userId, String session) async {
    Box sessionBox = await Boxes.sessionBox;
    await sessionBox.put(userId, session);
  }

  Future<String> getSession(userId) async {
    Box sessionBox = await Boxes.sessionBox;
    String session = await sessionBox.get(userId);
    if (session == null) throw KeyNotFoundException(failedValue: userId);
    return session;
  }

  Future<void> cachePersonalData(String userId, PersonalDataModel data) async {
    Box personalBox = await Boxes.personalBox;
    await personalBox.put(userId, data.toJson());
  }

  Future<PersonalDataModel> getPersonalData(String userId) async {
    Box personalBox = await Boxes.personalBox;
    Map json = await personalBox.get(userId);
    if (json == null)
      throw KeyNotFoundException(
          failedValue: userId, failedSource: personalBox.toString());
    return PersonalDataModel.fromJson(json.cast<String, dynamic>());
  }

  /// close all boxes needed to store authentication data. Boxes are automatically
  /// reopened, when calling any method of [LocalAuthDataSource] class.
  Future<void> close() async {
    Box sessionBox = await Boxes.sessionBox;
    sessionBox.close();
    Box userBox = await Boxes.userBox;
    userBox.close();
  }

  Future<void> removeSession(String userId) async {
    Box sessionBox = await Boxes.sessionBox;
    sessionBox.delete(userId);
  }

  Future<void> removePersonalData(String userId) async {
    Box personalBox = await Boxes.personalBox;
    personalBox.delete(userId);
  }

  Future<void> removeUserModel(String userId) async {
    Box userBox = await Boxes.userBox;
    userBox.delete(userId);
  }
}
