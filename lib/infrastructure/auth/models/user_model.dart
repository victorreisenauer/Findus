import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:lrs_app_v3/domain/lesson/lesson_barrel.dart';
import 'package:lrs_app_v3/domain/core/value_objects_barrel.dart';
import 'package:lrs_app_v3/domain/auth/auth_barrel.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
abstract class UserModel with _$UserModel {
  const factory UserModel({
    @required int id,
    @required String email,
    bool active,
  }) = _UserModel;

  /// turns Json into [UserModel]
  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  /// turns [User] into [UserModel]
  factory UserModel.fromDomain(User user, bool active) {
    return UserModel(
      id: int.parse(user.id.getOrCrash()),
      email: user.emailAddress.getOrCrash(),
      active: active,
    );
  }
}

/// turns [UserModel] into [User]
extension UserModelX on UserModel {
  User toDomain(PersonalData data) {
    return User(
      id: UniqueId.fromUniqueId(id.toString()),
      personalData: data,
      emailAddress: EmailAddress(email),
    );
  }
}
