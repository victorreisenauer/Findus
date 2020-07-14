import "package:firebase_auth/firebase_auth.dart";
import "package:injectable/injectable.dart";

import "../../../../domain/auth/auth_barrel.dart";
import "../../../../domain/auth/user/user.dart";
import "../../../../domain/core/value_objects_barrel.dart";
import "../../models/user_model.dart";

abstract class FirebaseUserMapper {
  User toDomain(FirebaseUser user);
  UserModel toUserModel(FirebaseUser user);
}

@RegisterAs(FirebaseUserMapper)
@injectable
class FirebaseUserMapperImpl implements FirebaseUserMapper {
  @override
  User toDomain(FirebaseUser user) {
    return user == null
        ? null
        : User(
            id: UniqueId.fromUniqueId(user.uid),
            personalData: PersonalData.empty(),
            emailAddress: EmailAddress(user.email));
  }

  @override
  UserModel toUserModel(FirebaseUser user) {
    return user == null ? null : UserModel(id: user.uid, email: user.email);
  }
}
