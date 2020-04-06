import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';


import 'package:lrs_app_v3/domain/auth/value_objects.dart';
import 'package:lrs_app_v3/domain/core/failures.dart';
import 'package:lrs_app_v3/domain/core/value_objects.dart';
import 'package:lrs_app_v3/domain/core/entitiy.dart';

part 'user.freezed.dart';

@freezed
abstract class User with _$User implements IEntity {
  const factory User({
    @required UniqueId id,
    @required StringSingleLine name,
    @required EmailAddress emailAddress,
  }) = _User;
}

/* TODO make work: 
extension UserX on User {
  Option<ValueFailure<dynamic>> get failureOption {
    return name.failureOrUnit
        .andThen(emailAddress.failureOrUnit)
        .fold((l) => some(l), (r) => none());
  }
}
*/