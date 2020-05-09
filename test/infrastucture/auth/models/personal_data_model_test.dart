import 'package:flutter_test/flutter_test.dart';

import 'package:lrs_app_v3/domain/core/validated_value_objects.dart';
import 'package:lrs_app_v3/infrastructure/auth/auth_barrel.dart';
import 'package:lrs_app_v3/domain/auth/auth_barrel.dart';

main() {
  PersonalData data = PersonalData(
    firstName: StringSingleLine("Test"),
    lastName: StringSingleLine("User"),
  );
  test('Object to Model works', () {
    PersonalDataModel model = PersonalDataModel.fromDomain(data);
    print(model);
  });

  test('Model to Json works', () {
    PersonalDataModel model = PersonalDataModel.fromDomain(data);
    Map json = model.toJson();
    print("Json Format: $json");
  });

  test('Json back to Model works', () {
    PersonalDataModel model = PersonalDataModel.fromDomain(data);
    Map json = model.toJson();
    PersonalDataModel rebuiltModel = PersonalDataModel.fromJson(json);
    print(rebuiltModel);
  });

  test('Model turns into original Object', () {
    PersonalDataModel model = PersonalDataModel.fromDomain(data);
    Map json = model.toJson();
    PersonalDataModel rebuiltModel = PersonalDataModel.fromJson(json);
    PersonalData object = rebuiltModel.toDomain();
    print(object);
  });
}
