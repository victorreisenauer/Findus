import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:lrs_data_client/lrs_api.dart';
import 'package:mockito/mockito.dart';

import 'package:lrs_app_v3/injection.dart';
import 'package:lrs_app_v3/infrastructure/auth/auth_barrel.dart';
import 'package:lrs_app_v3/infrastructure/core/exceptions.dart';

class MockApi extends Mock implements Api {}

main() {
  // on getCurrentUser =>
  // 1. should check if api is reachable
  // 2. should check if there is a valid session
  // if there is not a valid session, should throw invalidsessionexception
  // if there is a valid session, should return usermodel
  group('[Env: test] RemoteAuthDataSource => ', () {
    //configureInjection(Env.test);
    final Api api = MockApi();
    final RemoteAuthDataSource testRemoteData = RemoteAuthDataSourceImpl(api);
    final String sampleSession = "sampleSession"; // valid sample session
    group('on getCurrentUser =>', () {
      group('if api is available', () {
        // connection with api is possible for all failCases
        setUpAll(() {
          when(api.checkConnection()).thenAnswer((_) async => true);
        });

        test('throws InvalidSessionException, if session is invalid ', () {
          // case: session is invalid

          when(api.session).thenAnswer((_) => sampleSession);
          when(api.validateSession()).thenAnswer((_) async => false);
          // expect exception to be thrown
          expect(() => testRemoteData.getCurrentUser(),
              throwsA(isInstanceOf<InvalidSessionException>()));
        });

        test('throws InvalidSessionException, if session is null', () {
          // case: session == null
          when(api.session).thenAnswer((_) => null);
          when(api.validateSession()).thenAnswer((_) async => true);
          // expect Exception to be thrown
          expect(() => testRemoteData.getCurrentUser(),
              throwsA(isInstanceOf<InvalidSessionException>()));
        });
        test(
            'if session is valid => builds userModel from json, then returns it',
            () async {
          // real life example:
          Map data = {
            "email": "admin",
            "id": 1,
            "name": "Admin",
            "permissions": 100
          };

          String json = jsonEncode(data);
          // case: session != null and session is valid
          when(api.session).thenAnswer((_) => sampleSession);
          when(api.validateSession()).thenAnswer((_) async => true);
          when(api.currentUserJson).thenAnswer((_) async => json);
          // act
          var response = await testRemoteData.getCurrentUser();
          // expect a userModel to be returned
          expect(response, isA<UserModel>());
        });
      });
      group('if api is unavailable', () {
        setUpAll(() {
          when(api.checkConnection()).thenAnswer((_) async => false);
        });
        test('throws ServerNotReachableException', () {
          // server could not be reached, either server fault or device is offline
          // device is offline is handled by repository
          expect(() => testRemoteData.getCurrentUser(),
              throwsA(isInstanceOf<ServerNotReachableException>()));
        });
      });
    });

    group('on signIn => ', () {
      setUp(() {
        // mocking working serverconnection and available session
        when(api.checkConnection()).thenAnswer((_) async => true);
        when(api.session).thenAnswer((_) => sampleSession);
      });
      test('throws AlreadyAuthenticatedException, if user is already logged in',
          () {
        when(api.validateSession()).thenAnswer((_) async => true);
        expect(
            () => testRemoteData.signIn(username: "Admin", password: "admin"),
            throwsA(isInstanceOf<AlreadyLoggedInException>()));
      });
      test('throws InvalidCredentialsException on incorrect login', () {
        // if session is invalid, user should log in
        when(api.validateSession()).thenAnswer((_) async => false);
        // if login fails because of invalid credentials, throw Exception
        when(api.login()).thenThrow(InvalidCredentialsException());

        expect(
            () => testRemoteData.signIn(username: "Admin", password: "blabla"),
            throwsA(isInstanceOf<InvalidCredentialsException>()));
      });
      test('throws ServerException(cause) on any other exceptions', () {
        // if session is invalid, user should log in
        when(api.validateSession()).thenAnswer((_) async => false);
        // if login fails, throw Exception
        when(api.login())
            .thenThrow(UnhandledEndpointException("something went wrong"));
        expect(
            () => testRemoteData.signIn(username: "Admin", password: "admin"),
            throwsA(isInstanceOf<UnhandledEndpointException>()));
      });
    });
  });

  group('[Env: prod] RemoteAuthDataSource => ', () {
    configureInjection(Env.prod);
    test('dependencies can be injected', () {
      final RemoteAuthDataSource prodRemoteData = getIt<RemoteAuthDataSource>();
      expect(prodRemoteData != null, true);
    });

    group('on getCurrentUser => ', () {
      Api api = Api("https://api.lrs.hndrk.xyz/");
      final RemoteAuthDataSource prodRemoteData = RemoteAuthDataSourceImpl(api);
      test('UserModel is returned on valid session', () async {
        // logging in with valid credentials makes session valid
        await prodRemoteData.signIn(username: "Admin", password: "admin");
        var response = await prodRemoteData.getCurrentUser();
        // expect a userModel to be returned
        expect(response, isA<UserModel>());
      });
    });
  });
}
