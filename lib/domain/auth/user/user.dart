import "package:flutter/foundation.dart";
import "package:freezed_annotation/freezed_annotation.dart";
import "package:meta/meta.dart";

import "../../core/entitiy.dart";
import "../../core/value_objects_barrel.dart";
import "../personal_data/personal_data.dart";
import "../validated_value_objects.dart";

part "user.freezed.dart";

@freezed

/// is an Entity that represents a user with related id, name and email address
abstract class User with _$User implements IEntity {
  const factory User({
    @required UniqueId id,
    @required PersonalData personalData,
    @required EmailAddress emailAddress,
  }) = _User;

  factory User.empty() => User(
        id: UniqueId(),
        personalData: PersonalData.empty(),
        emailAddress: EmailAddress.empty(),
      );
}
