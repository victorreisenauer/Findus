import 'package:flutter_test/flutter_test.dart';
import 'package:lrs_app_v3/infrastructure/core/exceptions.dart';
import 'package:dartz/dartz.dart';
import 'package:mockito/mockito.dart';

import 'package:lrs_app_v3/infrastructure/auth/auth_barrel.dart';
import 'package:lrs_app_v3/infrastructure/core/network_info.dart';
import 'package:lrs_app_v3/injection.dart';
import 'package:lrs_app_v3/domain/auth/auth_barrel.dart';

class MockNetworkInfo extends Mock implements NetworkInfo {}

UserModel validUserModel =
    UserModel(email: "test@test.com", id: 0001, active: true);

class MockLocalAuthDataSource extends Mock implements LocalAuthDataSource {
  UserModel model = UserModel(email: "test@test.com", id: 0002, active: false);
  UserModel model2 = UserModel(email: "test@test.com", id: 0003, active: false);
  UserModel model3 = UserModel(email: "test@test.com", id: 0004);

  Stream<UserModel> getAllUserModels() async* {
    List models = [model, model2, validUserModel, model3];
    for (int i = 0; i < models.length; i++) {
      yield models[i];
    }
  }
}

class MockRemoteAuthDataSource extends Mock implements RemoteAuthDataSource {}

main() {
  group('[Env: test] AuthRepository =>', () {
    LocalAuthDataSource localData = MockLocalAuthDataSource();
    RemoteAuthDataSource remoteData = MockRemoteAuthDataSource();
    NetworkInfo networkInfo = MockNetworkInfo();
    AuthFacade testAuthRepo =
        AuthRepository(localData, remoteData, networkInfo);

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
              () {});
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
          verify(localData.getAllUserModels());
          verify(localData.getSession(any));
          verify(localData.getPersonalData(any));
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
        test('on correct login, signs in user', () {
          when(remoteData.signIn(username: any, password: any))
              .thenAnswer((realInvocation) => null);
        });
        test('on InvalidCredentialsException, returns authfailure option', () {
          //when(remoteData.signIn(username: any, password: any))
          //    .thenThrow(InvalidCredentialsException());
          //    expect(actual, matcher)
        });
      });
      group('if offline => ', () {});
      test('sets active to true', () {
        testAuthRepo.signInWithEmailAndPassword(
            emailAddress: null, password: null);
        verify(localData.cacheUserModel(any));
      });
    });
    group('on signOut => ', () {
      test(
          'deletes cached session, sets user to inactive, if online, logs out online',
          () {
        testAuthRepo.signOut();
        verify(localData.cacheUserModel(any));
        verify(localData.removeSession(any));
      });
    });
  });
  group('[Env: prod] AuthRepository =>', () {});
}
