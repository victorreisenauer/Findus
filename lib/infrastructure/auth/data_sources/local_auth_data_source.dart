import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';
import 'package:lrs_app_v3/infrastructure/auth/auth_barrel.dart';
import 'package:lrs_app_v3/infrastructure/core/boxes.dart';
import 'package:lrs_app_v3/infrastructure/core/exceptions.dart';
import 'package:mockito/mockito.dart';

abstract class LocalAuthDataSource {
  Future<void> cacheUserModel(String userId, UserModel model);
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
  final Boxes boxes;
  LocalAuthDataSourceImpl(this.boxes);

  /// store [UserModel] in cache. IMPORTANT: use 'await' keyword when
  /// caching to make sure cache is complete before box is accessed again.
  Future<void> cacheUserModel(String userId, UserModel model) async {
    boxes.userBox.then((box) => box.put(userId, model.toJson()));
  }

  Future<UserModel> getUserModel(String userId) async {
    Map json = await boxes.userBox.then((box) {
      _validateBoxNotEmpty(box);
      return box.get(userId);
    });
    if (json == null)
      throw KeyNotFoundException(
          failedValue: userId,
          failedSource: await boxes.userBox.then((box) => box.toString()));
    return UserModel.fromJson(json.cast<String, dynamic>());
  }

  Stream<UserModel> getAllUserModels() async* {
    Box userBox = await boxes.userBox;
    _validateBoxNotEmpty(userBox);
    for (int i = 0; i < userBox.length; i++) {
      Map json = userBox.getAt(i);
      yield UserModel.fromJson(json.cast<String, dynamic>());
    }
  }

  /// store Session in cache. IMPORTANT: use 'await' keyword when
  /// caching to make sure cache is complete before box is accessed again.
  Future<void> cacheSession(String userId, String session) async {
    await boxes.sessionBox.then((box) => box.put(userId, session));
  }

  Future<String> getSession(userId) async {
    String session = await boxes.sessionBox.then((box) => box.get(userId));
    if (session == null) throw KeyNotFoundException(failedValue: userId);
    return session;
  }

  Future<void> cachePersonalData(String userId, PersonalDataModel data) async {
    await boxes.personalBox.then((box) => box.put(userId, data.toJson()));
  }

  Future<PersonalDataModel> getPersonalData(String userId) async {
    Map json = await boxes.personalBox.then((box) => box.get(userId));
    if (json == null)
      throw KeyNotFoundException(
        failedValue: userId,
        failedSource: await boxes.personalBox.then((box) => box.toString()),
      );
    return PersonalDataModel.fromJson(json.cast<String, dynamic>());
  }

  /// close all boxes needed to store authentication data. Boxes are automatically
  /// reopened, when calling any method of [LocalAuthDataSource] class.
  Future<void> close() async {
    boxes.sessionBox.then((box) => box.close());
    boxes.personalBox.then((box) => box.close());
    boxes.userBox.then((box) => box.close());
  }

  Future<void> removeSession(String userId) async {
    boxes.sessionBox.then((box) => box.delete(userId));
  }

  Future<void> removePersonalData(String userId) async {
    boxes.personalBox.then((box) => box.delete(userId));
  }

  Future<void> removeUserModel(String userId) async {
    boxes.userBox.then((box) => box.delete(userId));
  }

  _validateBoxNotEmpty(Box box) {
    if (box.isEmpty) throw CacheEmptyException(failedSource: box.toString());
  }
}

@RegisterAs(LocalAuthDataSource, env: Environment.dev)
@lazySingleton
class DevLocalAuthDataSourceImpl extends LocalAuthDataSourceImpl {
  final Boxes boxes;
  DevLocalAuthDataSourceImpl(this.boxes) : super(boxes);
}

@RegisterAs(LocalAuthDataSource, env: Environment.test)
@lazySingleton
class MockLocalAuthDataSourceImpl extends Mock implements LocalAuthDataSource {
  final Boxes boxes;

  MockLocalAuthDataSourceImpl(this.boxes);

  UserModel model = UserModel(email: "test@test.com", id: 0002, active: true);
  UserModel model2 = UserModel(email: "test@test.com", id: 0003, active: false);
  UserModel model3 = UserModel(email: "test@test.com", id: 0004);

  Stream<UserModel> getAllUserModels() async* {
    List models = [model, model2, model3];
    for (int i = 0; i < models.length; i++) {
      yield models[i];
    }
  }
}
