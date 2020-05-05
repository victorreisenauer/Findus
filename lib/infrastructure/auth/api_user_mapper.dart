import 'package:injectable/injectable.dart';

import 'package:lrs_data_client/objects.dart' as api;
import 'package:lrs_app_v3/domain/core/value_objects_barrel.dart';
import 'package:lrs_app_v3/domain/auth/auth_barrel.dart';

@lazySingleton
class ApiUserMapper {
  User toDomain(api.User _user) {
    return _user == null
        ? null
        : User(
            id: UniqueId.fromUniqueId(_user.id.toString()),
            name: StringSingleLine(_user.name),
            emailAddress: EmailAddress(_user.email),
          );
  }
}
