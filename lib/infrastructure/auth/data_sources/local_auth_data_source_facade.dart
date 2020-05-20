import 'package:lrs_app_v3/infrastructure/auth/auth_barrel.dart';

abstract class LocalAuthDataSourceFacade {
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
