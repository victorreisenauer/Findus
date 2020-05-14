import 'package:flutter_test/flutter_test.dart';
import 'package:hive/hive.dart';
import 'package:lrs_app_v3/infrastructure/auth/auth_barrel.dart';
import 'package:lrs_app_v3/infrastructure/core/boxes.dart';
import 'package:lrs_app_v3/infrastructure/core/exceptions.dart';
import 'package:lrs_app_v3/injection.dart';
import 'package:mockito/mockito.dart';

// set up test data and mock classes
class MockBox extends Mock implements Box {}

Map<String, dynamic> data = {
  "email": "admin",
  "id": 1,
  "name": "Admin",
  "permissions": 100
};
UserModel sampleUserModel = UserModel.fromJson(data);
String sampleSession = "sampleSession";

// specifically test that all calls are made correctly for LocalAuthDataSource
// data and usability is irrelevant. Those are tested in dev and prod environments
main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  configureInjection(Env.test);
  Hive.init('/Users/victo/OneDrive/projects/lrs_app/db');
  Boxes boxes = getIt<Boxes>();

  LocalAuthDataSource testLocalData = getIt<LocalAuthDataSource>();
  group('[Env: test] LocalAuthDataSource => ', () {
    group('on cacheUserModel', () {
      test('if successful, UserModel gets cached', () async {
        // a sample models json gets cached
        // then it is tested if cached json can be fetched directly from box (not using repository) again
        // and it is the same as the original models json

        await testLocalData.cacheUserModel(
            sampleUserModel.id.toString(), sampleUserModel);
        var box = await boxes.userBox;
        box.get(sampleUserModel.id.toString());
        verify(box.get(sampleUserModel.id.toString()));
        /*
        Map userModelJson = await box.get(sampleUserModel.id.toString());

        expect(UserModel.fromJson(userModelJson.cast<String, dynamic>()),
            sampleUserModel);
        print(userModelJson);
        */
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

        var box = await boxes.sessionBox;

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

        var box = await boxes.personalBox;

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
}
