import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:hive/hive.dart';
import 'package:lrs_app_v3/infrastructure/core/boxes.dart';

import 'package:lrs_app_v3/injection.dart';
import 'package:lrs_app_v3/infrastructure/auth/auth_barrel.dart';
import 'package:lrs_app_v3/infrastructure/core/exceptions.dart';

class MockBox extends Mock implements Box {}

main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  // specifically to test that correct calls and exceptions are called
  group('[Env: test] LocalAuthDataSource => ', () {
    setUp(() async {
      Hive.init('/Users/victo/OneDrive/projects/lrs_app/db');
    });

    final LocalAuthDataSource testLocalData = LocalAuthDataSourceImpl();
    Map<String, dynamic> data = {
      "email": "admin",
      "id": 1,
      "name": "Admin",
      "permissions": 100
    };
    UserModel sampleUserModel = UserModel.fromJson(data);
    String sampleSession = "sampleSession";

    group('on cacheUserModel', () {
      test('if successful, UserModel gets cached', () async {
        // a sample models json gets cached
        // then it is tested if cached json can be fetched directly from box (not using repository) again
        // and it is the same as the original models json

        await testLocalData.cacheUserModel(sampleUserModel);

        var box = await TestBoxes.personalBox;
        Map userModelJson = box.get(sampleUserModel.id);

        expect(UserModel.fromJson(userModelJson.cast<String, dynamic>()),
            sampleUserModel);

        box.clear();
      });
    });
    group('on getAllUserModels', () {});
    group('on getUserModel(userId)', () {
      String userId = sampleUserModel.id.toString();
      test('if successful, returns userModel', () async {
        testLocalData.getUserModel(userId);
        //UserModel userModel = await testLocalData.getUserModel(1.toString());
        //expect(userModel, sampleUserModel);
      });
      test('if userId isnt found, throws KeyNotFoundException(failed value)',
          () async {
        String invalidId = "invalidId";
        expect(() => testLocalData.getUserModel(invalidId),
            throwsA(isInstanceOf<KeyNotFoundException>()));
      });
    });
    group('on cacheSession', () {
      String userId = sampleUserModel.id.toString();

      test('if successful, session gets cached', () async {
        await testLocalData.cacheSession(userId, sampleSession);

        var box = await TestBoxes.sessionBox;

        expect(box.get(userId), sampleSession);
      });
    });
    group('on getSession', () {
      String userId = sampleUserModel.id.toString();
      test('if successful, returns session', () async {
        expectLater(await testLocalData.getSession(userId), sampleSession);
      });
      test(
          'if no entry on this userId is found, throws KeyNotFoundException(failedValue)',
          () async {
        expectLater(() async => await testLocalData.getSession("invalidId"),
            throwsA(isInstanceOf<KeyNotFoundException>()));
      });
    });
    group('on cachePersonalData', () {
      String userId = sampleUserModel.id.toString();
      PersonalDataModel samplePersonalData =
          PersonalDataModel(firstName: "Admin", lastName: "LastAdmin");

      test('if successful, PersonalData gets cached', () async {
        await testLocalData.cachePersonalData(userId, samplePersonalData);

        var box = await TestBoxes.personalBox;

        expect(box.get(userId), samplePersonalData.toJson());
      });
    });
    group('on getPersonalData', () {
      String userId = sampleUserModel.id.toString();
      PersonalDataModel samplePersonalData =
          PersonalDataModel(firstName: "Admin", lastName: "LastAdmin");
      test('if successful, returns personalDataModel', () async {
        PersonalDataModel dataModel =
            await testLocalData.getPersonalData(userId);
        expect(dataModel, samplePersonalData);
      });
      test('if userId isnt found, throws KeyNotFoundException(failed value)',
          () async {
        String invalidId = "invalidId";
        expect(() => testLocalData.getPersonalData(invalidId),
            throwsA(isInstanceOf<KeyNotFoundException>()));
      });
    });
  });

  group('[Env: prod] LocalAuthDataSource =>', () {
    // tests make sure data is transmitted correctly
    configureInjection(Env.prod);
    final LocalAuthDataSource prodLocalData = getIt<LocalAuthDataSource>();

    test('dependencies can be injected', () {
      expect(prodLocalData != null, true);
    });
    group('on cacheUserModel', () {});
    group('on cacheUserModel', () {});
    group('on cacheUserModel', () {});
    group('on cacheUserModel', () {});
  });
}
