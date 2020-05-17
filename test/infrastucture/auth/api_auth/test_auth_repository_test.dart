import 'package:flutter_test/flutter_test.dart';
import 'package:lrs_app_v3/domain/core/validated_value_objects.dart';
import 'package:lrs_app_v3/domain/core/value_objects.dart';
import 'package:lrs_app_v3/infrastructure/core/exceptions.dart';
import 'package:dartz/dartz.dart';
import 'package:mockito/mockito.dart';
import 'package:hive/hive.dart';

import 'package:lrs_app_v3/infrastructure/auth/auth_barrel.dart';
import 'package:lrs_app_v3/infrastructure/core/network_info.dart';
import 'package:lrs_app_v3/injection.dart';
import 'package:lrs_app_v3/domain/auth/auth_barrel.dart';

main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  configureInjection(Env.test);
  Hive.init('/Users/victo/OneDrive/projects/lrs_app/db');

  RemoteAuthDataSource remoteData = getIt<RemoteAuthDataSource>();
  LocalAuthDataSource localData = getIt<LocalAuthDataSource>();
  NetworkInfo networkInfo = getIt<NetworkInfo>();
  AuthFacade testAuthRepo = AuthRepository(localData, remoteData, networkInfo);

  UserModel validUserModel =
      UserModel(email: "test@test.com", id: 0001, active: true);
  group('[Env: test] AuthRepository =>', () {
    group('on getUser => ', () {
      // if there is an active user
      // if device is online, validates, then gets user
      // if device is offline if there is an active user in cache, if so return
      // if not, return newEmptyUser
      group('if device is online => ', () {
        setUp(() {
          when(networkInfo.isConnected).thenAnswer((_) async => true);
        });
        group('tries to get user from api, if successful', () {
          when(remoteData.getCurrentUser())
              .thenAnswer((_) async => validUserModel);
          when(localData.getPersonalData(any)).thenAnswer(
              (realInvocation) async =>
                  PersonalDataModel(firstName: "test", lastName: "test"));
          test('gets personal details from cache', () async {
            await testAuthRepo.getUser();
            verify(localData.getPersonalData(validUserModel.id.toString()))
                .called(1);
          });
          test('caches session', () async {
            await testAuthRepo.getUser();
            verify(localData.cacheSession(any, any));
          });

          test('returns a user', () async {
            when(remoteData.getCurrentUser())
                .thenAnswer((realInvocation) async => validUserModel);
            Either<AuthFailure, User> failureOrUser =
                await testAuthRepo.getUser();
            var response = failureOrUser.fold((l) => null, (r) => r);
            expect(response, isA<User>());
          });
        });
        group('on InvalidSessionException => ', () {
          test(
              'deletes cached session and returns AuthFailure.loginRequired or ',
              () {});
        });
        group('on ServerNotReachableException => ', () {
          test(
              'checks if user has cached session, if so, return (authenticated) user',
              () {
            expect(null, null);
          });
        });
      });
      group('if device is offline => ', () {
        setUp(() {
          when(networkInfo.isConnected).thenAnswer((_) async => false);
        });
        test(
            'checks if there is an active user in cache, checks for session if successful, returns a User',
            () async {
          User user = await testAuthRepo
              .getUser()
              .then((value) => value.fold((l) => null, (r) => r));
          //verify(localData.getAllUserModels());
          //verify(localData.getSession(any));
          //verify(localData.getPersonalData(any));

          expect(validUserModel, UserModel.fromDomain(user, true));
        });
        test(
            'if there is no active user, return an empty (unauthenticated) user',
            () {});
        test('if session could not be found, returns ...()', () {});
        test('if personal data could not be found', () {});
      });
    });
    group('on signInWithEmailAndPassword => ', () {
      group('if online => ', () {
        setUp(() {
          when(networkInfo.isConnected).thenAnswer((_) async => true);
        });

        test('on correct login, signs in user', () async {
          User user = User(
            emailAddress: EmailAddress("testUser@test.com"),
            id: UniqueId.fromUniqueId("0001"),
            personalData: PersonalData(
              firstName: StringSingleLine("testUser"),
              lastName: StringSingleLine("test"),
            ),
          );

          when(remoteData.signIn(
                  username: anyNamed("username"),
                  password: anyNamed("password")))
              .thenAnswer((_) async => null);
          when(remoteData.getCurrentUser())
              .thenAnswer((_) async => UserModel.fromDomain(user, true));

          testAuthRepo.signInWithEmailAndPassword(
            emailAddress: EmailAddress("testUser@test.com"),
            password: Password("testUser"),
          );

          var either = await testAuthRepo.getUser();
          var response = either.fold((l) => l, (r) => r);
          print(response);

          expect(response, isA<User>());
        });
        test(
            'on InvalidLoginDetailsException, returns authfailure.invalidEmailAndPasswordCombination',
            () async {
          when(remoteData.signIn(
            username: anyNamed("username"),
            password: anyNamed("password"),
          )).thenThrow(InvalidLoginDetailsException());

          var response = await testAuthRepo.signInWithEmailAndPassword(
              emailAddress: EmailAddress("test@test.com"),
              password: Password("testPassword"));
          var option = response.fold(() => null, (a) => a);

          expect(option, AuthFailure.invalidEmailAndPasswordCombination());
        });
      });
      group('if offline => ', () {});
      test('sets active to true', () {});
    });
    group('on signOut => ', () {
      test(
          'deletes cached session, sets user to inactive, if online, logs out online',
          () {});
    });
  });
}
