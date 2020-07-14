import "package:freezed_annotation/freezed_annotation.dart";
import "package:json_annotation/json_annotation.dart";
import "package:meta/meta.dart";

import "../../../domain/auth/auth_barrel.dart";
import "../../../domain/core/value_objects_barrel.dart";

part "personal_data_model.freezed.dart";
part "personal_data_model.g.dart";

@freezed
abstract class PersonalDataModel with _$PersonalDataModel {
  const factory PersonalDataModel({
    @required String firstName,
    @required String lastName,
  }) = _PersonalDataModel;

  /// turns Json into [PersonalDataModel]
  factory PersonalDataModel.fromJson(Map<String, dynamic> json) => _$PersonalDataModelFromJson(json);

  /// turns [PersonalData] into [PersonalDataModel]
  factory PersonalDataModel.fromDomain(PersonalData data) {
    return PersonalDataModel(firstName: data.firstName.getOrCrash(), lastName: data.lastName.getOrCrash());
  }
}

/// turns [PersonalDataModel] into [PersonalData]
extension PersonalDataModelX on PersonalDataModel {
  PersonalData toDomain() {
    return PersonalData(
      firstName: StringSingleLine(firstName),
      lastName: StringSingleLine(lastName),
    );
  }
}
