import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

import 'package:lrs_app_v3/domain/auth/auth_barrel.dart';
import 'package:lrs_app_v3/domain/core/failures.dart';
import 'package:lrs_app_v3/domain/core/value_objects_barrel.dart';
import 'package:lrs_app_v3/domain/core/entitiy.dart';

part 'user.freezed.dart';

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
