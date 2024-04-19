import "package:flutter/foundation.dart";
import "package:freezed_annotation/freezed_annotation.dart";
import "package:meta/meta.dart";

import "../../core/value_objects_barrel.dart";

part "personal_data.freezed.dart";

@freezed

/// is an Entity that represents a user with related id, name and email address
abstract class PersonalData with _$PersonalData {
  const factory PersonalData({
    @required StringSingleLine firstName,
    @required StringSingleLine lastName,
  }) = _PersonalData;

  factory PersonalData.empty() => PersonalData(
        firstName: StringSingleLine(""),
        lastName: StringSingleLine(""),
      );
}
