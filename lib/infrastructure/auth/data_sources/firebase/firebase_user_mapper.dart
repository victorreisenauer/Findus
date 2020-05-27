import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:lrs_app_v3/domain/auth/auth_barrel.dart';
import 'package:lrs_app_v3/domain/auth/user/user.dart';
import 'package:lrs_app_v3/domain/core/value_objects_barrel.dart';
import 'package:lrs_app_v3/infrastructure/auth/auth_barrel.dart';

abstract class FirebaseUserMapper {
  User toDomain(FirebaseUser user);
  UserModel toUserModel(FirebaseUser user);
}

@RegisterAs(FirebaseUserMapper)
@injectable
class FirebaseUserMapperImpl implements FirebaseUserMapper {
  User toDomain(FirebaseUser user) {
    return user == null
        ? null
        : User(
            id: UniqueId.fromUniqueId(user.uid),
            personalData: PersonalData.empty(),
            emailAddress: EmailAddress(user.email));
  }

  UserModel toUserModel(FirebaseUser user) {
    return user == null ? null : UserModel(id: user.uid, email: user.email);
  }
}
