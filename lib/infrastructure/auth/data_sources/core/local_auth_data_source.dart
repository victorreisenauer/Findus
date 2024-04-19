import "package:hive/hive.dart";
import "package:injectable/injectable.dart";

import "../../../core/boxes.dart";
import "../../../core/local_exceptions.dart";
import "../../models/personal_data_model.dart";
import "../../models/user_model.dart";
import "../local_auth_data_source_facade.dart";

@RegisterAs(LocalAuthDataSourceFacade)
@lazySingleton
class LocalAuthDataSource implements LocalAuthDataSourceFacade {
  final Boxes boxes;
  LocalAuthDataSource(this.boxes);

  /// store [UserModel] in cache. IMPORTANT: use 'await' keyword when
  /// caching to make sure cache is complete before box is accessed again.
  @override
  Future<void> cacheUserModel(String userId, UserModel model) async {
    await boxes.userBox.then((box) => box.put(userId, model.toJson()));
  }

  @override
  Future<UserModel> getUserModel(String userId) async {
    var json = await boxes.userBox.then((box) {
      _validateBoxNotEmpty(box);
      return box.get(userId);
    });
    if (json == null) {
      throw KeyNotFoundException(failedValue: userId, failedSource: await boxes.userBox.then((box) => box.toString()));
    }
    return UserModel.fromJson(json.cast<String, dynamic>());
  }

  @override
  Stream<UserModel> getAllUserModels() async* {
    var userBox = await boxes.userBox;
    _validateBoxNotEmpty(userBox);
    for (var i = 0; i < userBox.length; i++) {
      Map json = userBox.getAt(i);
      yield UserModel.fromJson(json.cast<String, dynamic>());
    }
  }

  /// store Session in cache. IMPORTANT: use 'await' keyword when
  /// caching to make sure cache is complete before box is accessed again.
  @override
  Future<void> cacheSession(String userId, String session) async {
    await boxes.sessionBox.then((box) => box.put(userId, session));
  }

  @override
  Future<String> getSession(String userId) async {
    var session = await boxes.sessionBox.then((box) => box.get(userId));
    if (session == null) throw KeyNotFoundException(failedValue: userId);
    return session;
  }

  @override
  Future<void> cachePersonalData(String userId, PersonalDataModel data) async {
    await boxes.personalBox.then((box) => box.put(userId, data.toJson()));
  }

  @override
  Future<PersonalDataModel> getPersonalData(String userId) async {
    var json = await boxes.personalBox.then((box) => box.get(userId));
    if (json == null) {
      throw KeyNotFoundException(
        failedValue: userId,
        failedSource: await boxes.personalBox.then((box) => box.toString()),
      );
    }
    return PersonalDataModel.fromJson(json.cast<String, dynamic>());
  }

  /// close all boxes needed to store authentication data. Boxes are automatically
  /// reopened, when calling any method of [LocalAuthDataSource] class.
  @override
  Future<void> close() async {
    await boxes.sessionBox.then((box) => box.close());
    await boxes.personalBox.then((box) => box.close());
    await boxes.userBox.then((box) => box.close());
  }

  @override
  Future<void> removeSession(String userId) async {
    await boxes.sessionBox.then((box) => box.delete(userId));
  }

  @override
  Future<void> removePersonalData(String userId) async {
    await boxes.personalBox.then((box) => box.delete(userId));
  }

  @override
  Future<void> removeUserModel(String userId) async {
    await boxes.userBox.then((box) => box.delete(userId));
  }

  void _validateBoxNotEmpty(Box box) {
    if (box.isEmpty) throw CacheEmptyException(failedSource: box.toString());
  }
}
