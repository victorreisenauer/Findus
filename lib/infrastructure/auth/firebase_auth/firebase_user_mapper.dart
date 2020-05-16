import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:lrs_app_v3/domain/auth/auth_barrel.dart';
import 'package:lrs_app_v3/domain/auth/user/user.dart';
import 'package:lrs_app_v3/domain/core/value_objects_barrel.dart';
import 'package:mockito/mockito.dart';

abstract class FirebaseUserMapper {
  User toDomain(FirebaseUser user);
}

@RegisterAs(FirebaseUserMapper, env: Environment.prod)
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
}

@RegisterAs(FirebaseUserMapper, env: Environment.dev)
@injectable
class DevFirebaseUserMapperImpl extends FirebaseUserMapperImpl {}

@RegisterAs(FirebaseUserMapper, env: Environment.test)
@injectable
class MockFirebaseUserMapperImpl extends Mock implements FirebaseUserMapper {}
