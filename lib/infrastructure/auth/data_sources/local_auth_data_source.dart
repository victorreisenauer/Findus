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

@RegisterAs(LocalAuthDataSource, env: Environment.test)
@lazySingleton
class MockLocalAuthDataSourceImpl extends Mock implements LocalAuthDataSource {
  final Future<Box> userBox = TestBoxes.userBox;
  final Future<Box> sessionBox = TestBoxes.sessionBox;
  final Future<Box> personalBox = TestBoxes.personalBox;
}

@RegisterAs(LocalAuthDataSource, env: Environment.prod)
@lazySingleton
class LocalAuthDataSourceImpl implements LocalAuthDataSource {
  final Future<Box> _userBox = ProdBoxes.userBox;
  final Future<Box> _sessionBox = ProdBoxes.sessionBox;
  final Future<Box> _personalBox = ProdBoxes.personalBox;

  /// store [UserModel] in cache. IMPORTANT: use 'await' keyword when
  /// caching to make sure cache is complete before box is accessed again.
  Future<void> cacheUserModel(UserModel model) async {
    _userBox.then((box) => box.put(model.id.toString(), model.toJson()));
  }

  Future<UserModel> getUserModel(String userId) async {
    Map json = await _userBox.then((box) => box.get(userId));
    if (json == null)
      throw KeyNotFoundException(
          failedValue: userId,
          failedSource: await _userBox.then((box) => box.toString()));
    return UserModel.fromJson(json.cast<String, dynamic>());
  }

  Stream<UserModel> getAllUserModels() async* {
    Box userBox = await _userBox;
    if (userBox.isEmpty) throw CacheEmptyException();
    for (int i; i < userBox.length; i++) {
      Map json = userBox.getAt(i);
      yield UserModel.fromJson(json.cast<String, dynamic>());
    }
  }

  /// store Session in cache. IMPORTANT: use 'await' keyword when
  /// caching to make sure cache is complete before box is accessed again.
  Future<void> cacheSession(String userId, String session) async {
    await _sessionBox.then((box) => box.put(userId, session));
  }

  Future<String> getSession(userId) async {
    String session = await _sessionBox.then((box) => box.get(userId));
    if (session == null) throw KeyNotFoundException(failedValue: userId);
    return session;
  }

  Future<void> cachePersonalData(String userId, PersonalDataModel data) async {
    await _personalBox.then((box) => box.put(userId, data.toJson()));
  }

  Future<PersonalDataModel> getPersonalData(String userId) async {
    Map json = await _personalBox.then((box) => box.get(userId));
    if (json == null)
      throw KeyNotFoundException(
        failedValue: userId,
        failedSource: await _personalBox.then((box) => box.toString()),
      );
    return PersonalDataModel.fromJson(json.cast<String, dynamic>());
  }

  /// close all boxes needed to store authentication data. Boxes are automatically
  /// reopened, when calling any method of [LocalAuthDataSource] class.
  Future<void> close() async {
    _sessionBox.then((box) => box.close());
    _personalBox.then((box) => box.close());
    _userBox.then((box) => box.close());
  }

  Future<void> removeSession(String userId) async {
    _sessionBox.then((box) => box.delete(userId));
  }

  Future<void> removePersonalData(String userId) async {
    _personalBox.then((box) => box.delete(userId));
  }

  Future<void> removeUserModel(String userId) async {
    _userBox.then((box) => box.delete(userId));
  }
}

@RegisterAs(LocalAuthDataSource, env: Environment.dev)
@lazySingleton
class DevLocalAuthDataSourceImpl implements LocalAuthDataSource {
  final Future<Box> _userBox = DevBoxes.userBox;
  final Future<Box> _sessionBox = DevBoxes.sessionBox;
  final Future<Box> _personalBox = DevBoxes.personalBox;

  /// store [UserModel] in cache. IMPORTANT: use 'await' keyword when
  /// caching to make sure cache is complete before box is accessed again.
  Future<void> cacheUserModel(UserModel model) async {
    _userBox.then((box) => box.put(model.id.toString(), model.toJson()));
  }

  Future<UserModel> getUserModel(String userId) async {
    Map json = await _userBox.then((box) => box.get(userId));
    if (json == null)
      throw KeyNotFoundException(
          failedValue: userId,
          failedSource: await _userBox.then((box) => box.toString()));
    return UserModel.fromJson(json.cast<String, dynamic>());
  }

  Stream<UserModel> getAllUserModels() async* {
    Box userBox = await _userBox;
    if (userBox.isEmpty) throw CacheEmptyException();
    for (int i; i < userBox.length; i++) {
      Map json = userBox.getAt(i);
      yield UserModel.fromJson(json.cast<String, dynamic>());
    }
  }

  /// store Session in cache. IMPORTANT: use 'await' keyword when
  /// caching to make sure cache is complete before box is accessed again.
  Future<void> cacheSession(String userId, String session) async {
    await _sessionBox.then((box) => box.put(userId, session));
  }

  Future<String> getSession(userId) async {
    String session = await _sessionBox.then((box) => box.get(userId));
    if (session == null) throw KeyNotFoundException(failedValue: userId);
    return session;
  }

  Future<void> cachePersonalData(String userId, PersonalDataModel data) async {
    await _personalBox.then((box) => box.put(userId, data.toJson()));
  }

  Future<PersonalDataModel> getPersonalData(String userId) async {
    Map json = await _personalBox.then((box) => box.get(userId));
    if (json == null)
      throw KeyNotFoundException(
        failedValue: userId,
        failedSource: await _personalBox.then((box) => box.toString()),
      );
    return PersonalDataModel.fromJson(json.cast<String, dynamic>());
  }

  /// close all boxes needed to store authentication data. Boxes are automatically
  /// reopened, when calling any method of [LocalAuthDataSource] class.
  Future<void> close() async {
    _sessionBox.then((box) => box.close());
    _personalBox.then((box) => box.close());
    _userBox.then((box) => box.close());
  }

  Future<void> removeSession(String userId) async {
    _sessionBox.then((box) => box.delete(userId));
  }

  Future<void> removePersonalData(String userId) async {
    _personalBox.then((box) => box.delete(userId));
  }

  Future<void> removeUserModel(String userId) async {
    _userBox.then((box) => box.delete(userId));
  }
}
