import 'package:flutter_test/flutter_test.dart';
import 'package:hive/hive.dart';
import 'package:lrs_app_v3/infrastructure/auth/auth_barrel.dart';
import 'package:lrs_app_v3/infrastructure/core/boxes.dart';
import 'package:lrs_app_v3/infrastructure/core/local_exceptions.dart';
import 'package:lrs_app_v3/injection.dart';
import 'package:mockito/mockito.dart';

// set up mock classes and instances
class MockBox extends Mock implements Box {}

class MockUserModel extends Mock implements UserModel {}

class MockPersonalDataModel extends Mock implements PersonalDataModel {}

// Specifically test that all calls are made correctly for LocalAuthDataSourceImpl
// data and usability is irrelevant. Those are tested in dev and prod environments.
// Makes mostly use of 'verify()' tests.
main() async {
  // setup Environment
  TestWidgetsFlutterBinding.ensureInitialized();
  configureInjection(Env.test);
  Hive.init('/Users/victo/OneDrive/projects/lrs_app/db');

  // Get all dependencies
  Boxes boxes = getIt<Boxes>();

  // Create production object with mocked dependencies
  LocalAuthDataSourceFacade testLocalData = LocalAuthDataSource(boxes);

  // Instantiate objects for testing
  String testUserId = "sampleUserId";
  UserModel testUserModel = MockUserModel();
  String testSession = "sampleSession";
  PersonalDataModel testPersonalData =
      PersonalDataModel(firstName: "Admin", lastName: "LastAdmin");
  Box userBox = await boxes.userBox;
  Box sessionBox = await boxes.sessionBox;

  Map<String, dynamic> testUserModelData = {
    "email": "admin",
    "id": 1,
    "name": "Admin",
    "permissions": 100
  };
  String invalidId = "invalidId";

  // Tests
  group('[Env: test] LocalAuthDataSource => ', () {
    group('on cacheUserModel', () {
      group('if successful, UserModel gets cached =>', () {
        test('verify userBox.put is called', () async {
          // cache a userModel
          await testLocalData.cacheUserModel(testUserId, testUserModel);
          // expect userBox.put to be called
          // null is accepted here, because testUserModel is mocked
          verify(userBox.put(testUserId, null));
        });
      });
    });
    group('on getAllUserModels', () {
      test('if cache is empty, CacheEmptyException is thrown', () {
        // no models are cached
        when(userBox.length).thenReturn(0);
        when(userBox.isEmpty).thenReturn(true);
        // expect call to throw a CacheEmptyException
        expect(() => testLocalData.getAllUserModels().toList(),
            throwsA(isInstanceOf<CacheEmptyException>()));
      });
      test(
          'if cache is not empty, verify that userModel.get() is called n times',
          () async {
        // expect userBox.getAt(index) to be called n times
        // n being userBox.length
        int n = 10;
        when(userBox.isEmpty).thenReturn(false);
        when(userBox.length).thenAnswer((_) => n);
        when(userBox.getAt(any)).thenReturn(testUserModelData);
        // make call to get all user models in cache
        // call toList to access stream, not stream object
        await testLocalData.getAllUserModels().toList();
        // null is accepted here, because testUserModel is mocked
        // data source will use getAt(index)
        verify(userBox.getAt(any)).called(n);
      });
    });
    group('on getUserModel(userId)', () {
      group('if successful', () {
        test('validate userBox.get is called', () async {
          // box returns data on get and box is not empty
          when(userBox.get(testUserId)).thenReturn(testUserModelData);
          when(userBox.isEmpty).thenReturn(false);

          // call getUserModel
          var response = await testLocalData.getUserModel(testUserId);
          // make sure userBox.get is called and...
          verify(userBox.get(testUserId));
          // ...expect returned value to be a usermodel
          expect(response, isA<UserModel>());
        });
      });

      group('if userId isnt found, ', () {
        test('throws KeyNotFoundException(failed value)', () async {
          // if no entries are found, box returns null
          when(userBox.isEmpty).thenReturn(false);
          when(userBox.get(invalidId)).thenReturn(null);
          // expect the KeyNotFoundException
          expect(() => testLocalData.getUserModel(invalidId),
              throwsA(isInstanceOf<KeyNotFoundException>()));
        });
      });
      group('when box is empty,', () {
        test('throws CacheEmptyException', () {
          // mock box to be empty
          when(userBox.isEmpty).thenReturn(true);
          // expect call to throw a CacheEmptyException
          expect(() => testLocalData.getAllUserModels().toList(),
              throwsA(isInstanceOf<CacheEmptyException>()));
        });
      });
    });
    group('on cacheSession', () {
      group('if successful', () {
        test('sessionbox.put is called', () async {
          // cache a test session
          await testLocalData.cacheSession(testUserId, testSession);

          verify(sessionBox.put(testUserId, testSession));
        });
      });
    });
    group('on getSession', () {
      test('if successful, returns session', () async {
        // make sessonBox return session
        when(sessionBox.get(testUserId)).thenReturn(testSession);
        when(sessionBox.isEmpty).thenReturn(false);

        // verify sessionBox.get(testUserId) was called
        verify(sessionBox.get(testUserId));

        // expect sessionbox to be returned
        expect(await testLocalData.getSession(testUserId), testSession);
      });
      test(
          'if no entry on this userId is found, throws KeyNotFoundException(failedValue)',
          () async {
        expect(() async => await testLocalData.getSession(invalidId),
            throwsA(isInstanceOf<KeyNotFoundException>()));

        testLocalData
            .getSession(invalidId)
            .catchError((KeyNotFoundException e) => print(e.toString()));
        // "Failed Source = ${e.failedSource} \n failedvalue =${e.failedValue} "
      });
      group('if sessionBox is empty', () {
        test('cacheEmptyException(failedSource: sessionBox) is thrown', () {
          // no session is cached
          when(userBox.length).thenReturn(0);
          when(userBox.isEmpty).thenReturn(true);
          // expect call to throw a CacheEmptyException
          expect(() async => await testLocalData.getSession(testUserId),
              throwsA(isInstanceOf<CacheEmptyException>()));
          // expect failedSource to be correct
          var response = testLocalData.getSession(testUserId);
          expect(response,
              CacheEmptyException(failedSource: sessionBox.toString()));
        });
      });
    });
    group('on cachePersonalData', () {
      test('if successful, PersonalData gets cached', () async {
        await testLocalData.cachePersonalData(testUserId, testPersonalData);

        var box = await boxes.personalBox;

        expect(box.get(testUserId), testPersonalData.toJson());
      });
    });
    group('on getPersonalData', () {
      test('if successful, returns personalDataModel', () async {
        PersonalDataModel dataModel =
            await testLocalData.getPersonalData(testUserId);
        expect(dataModel, testPersonalData);
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
