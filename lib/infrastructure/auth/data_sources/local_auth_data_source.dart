import 'package:injectable/injectable.dart';
import 'package:mockito/mockito.dart';
import 'package:meta/meta.dart';
import 'package:hive/hive.dart';
import 'package:lrs_app_v3/infrastructure/auth/auth_barrel.dart';

abstract class LocalAuthDataSource {
  Future<void> cacheUserModel(UserModel model);
  //Future<void> cachePersonalDetails(Object details);
  Future<UserModel> getUserModel(String userId);
  Future<void> cacheSession(String session);
  Future<String> getSession(userId);
}

@RegisterAs(LocalAuthDataSource, env: Environment.test)
@lazySingleton
class TestLocalAuthDataSourceImpl extends Mock implements LocalAuthDataSource {}

@RegisterAs(LocalAuthDataSource, env: Environment.prod)
@lazySingleton
class LocalAuthDataSourceImpl implements LocalAuthDataSource {
  final Box sessionBox;
  final Box userBox;
  final Box personalBox;

  LocalAuthDataSourceImpl(
      {@required this.userBox,
      @required this.sessionBox,
      @required this.personalBox});

  Future<void> cacheUserModel(UserModel model) async {
    // needs implementation
    return null;
  }

  Future<UserModel> getUserModel(String userId) async {
    // needs implementation
    return null;
  }

  Future<void> cacheSession(String session) async {
    // needs implementation
    return null;
  }

  Future<String> getSession(userId) async {
    // needs implementation
    return null;
  }
}
