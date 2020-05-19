import 'package:lrs_app_v3/domain/auth/auth_barrel.dart';
import 'package:lrs_app_v3/domain/core/value_objects_barrel.dart';

class DevData {
  static User devUser = User(
      emailAddress: EmailAddress('testUser@test.com'),
      id: UniqueId(),
      personalData: PersonalData(
          firstName: StringSingleLine("Test"),
          lastName: StringSingleLine("User")));

  static Password devUserPassword = Password("TestUser123");
}
