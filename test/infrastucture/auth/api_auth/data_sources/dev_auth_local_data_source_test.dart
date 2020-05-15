import 'package:flutter_test/flutter_test.dart';
import 'package:hive/hive.dart';
import 'package:lrs_app_v3/infrastructure/auth/auth_barrel.dart';
import 'package:lrs_app_v3/infrastructure/core/boxes.dart';
import 'package:lrs_app_v3/injection.dart';
import 'package:mockito/mockito.dart';

// set up test data
Map<String, dynamic> data = {
  "email": "admin",
  "id": 1,
  "name": "Admin",
  "permissions": 100
};
UserModel sampleUserModel = UserModel.fromJson(data);
String sampleSession = "sampleSession";

// Specifically tests that data flows correctly using sample data.
main() {
  configureInjection(Env.dev);
  Hive.init('/Users/victo/OneDrive/projects/lrs_app/db');

  LocalAuthDataSource devLocalData = getIt<LocalAuthDataSource>();
  Boxes boxes = getIt<Boxes>();
  group('[Env: dev] LocalAuthDataSource =>', () {
    group('on cacheUserModel => ', () {
      test('if successful, userModel gets cached', () async {
        // a sample models json gets cached
        // then it is tested if cached json can be fetched directly from box (not using repository) again
        // and it is the same as the original models json

        await devLocalData.cacheUserModel(
            sampleUserModel.id.toString(), sampleUserModel);
        var box = await boxes.userBox;
        box.get(sampleUserModel.id.toString());
        verify(box.get(sampleUserModel.id.toString()));
        Map userModelJson = box.get(sampleUserModel.id.toString());

        expect(UserModel.fromJson(userModelJson.cast<String, dynamic>()),
            sampleUserModel);
        print(userModelJson);
      });
    });
  });
}
