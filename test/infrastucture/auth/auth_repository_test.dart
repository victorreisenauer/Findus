import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:lrs_app_v3/domain/auth/auth_barrel.dart';
import 'package:lrs_app_v3/infrastructure/auth/auth_barrel.dart';
import 'package:lrs_app_v3/infrastructure/core/network_info.dart';
import 'package:lrs_app_v3/infrastructure/core/remote_exceptions.dart';
import 'package:lrs_app_v3/injection.dart';
import 'package:mockito/mockito.dart';

// set up mock classes and instances
class MockFirebaseUser extends Mock implements FirebaseUser {}

class MockUserModel extends Mock implements UserModel {}

class MockEmailAddress extends Mock implements EmailAddress {}

class MockPassword extends Mock implements Password {}

class MockAuthResult extends Mock implements AuthResult {}

// Specifically test that all calls are made correctly for FirebaseAuthRepository.
// Data and inner workings are irrelevant for now. Those are tested in dev and prod environments.
// Makes mostly use of 'verify()' tests.
main() {
  // setup environment
  TestWidgetsFlutterBinding.ensureInitialized();
  configureInjection(Env.test);

  // Dependencies
  LocalAuthDataSourceFacade localData = getIt<LocalAuthDataSourceFacade>();
  RemoteAuthDataSourceFacade remoteData = getIt<RemoteAuthDataSourceFacade>();
  NetworkInfo networkInfo = getIt<NetworkInfo>();

  // Production object with mocked dependencies
  AuthFacade testAuthRepo = AuthRepository(localData, remoteData, networkInfo);

  // Instantiate objects for testing
  MockUserModel testUserModel = MockUserModel();
  MockEmailAddress testEmail = MockEmailAddress();
  MockPassword testPassword = MockPassword();

  // Tests
  group('[Env: test]FireBaseAuthRepository => ', () {
    group('on registerWithEmailAndPassword => ', () {
      test('checks if device is online', () async {
        when(networkInfo.isConnected)
            .thenAnswer((realInvocation) async => true);
        await testAuthRepo.signUpWithEmailAndPassword(
            emailAddress: testEmail, password: testPassword);
        verify(networkInfo.isConnected);
      });
      group('if online => ', () {
        setUp(() {
          when(networkInfo.isConnected)
              .thenAnswer((realInvocation) async => true);
        });

        test('calls localData.signUpWithEmailAndPassword', () async {
          await testAuthRepo.signUpWithEmailAndPassword(
              emailAddress: testEmail, password: testPassword);

          verify(remoteData.signUpWithEmailAndPassword(
              emailAddress: anyNamed("emailAddress"),
              password: anyNamed("password")));
        });
        group('if successful =>', () {
          test('returns none() option', () async {
            when(remoteData.signUpWithEmailAndPassword(
                emailAddress: anyNamed("emailAddress"),
                password: anyNamed("password")));
            var response = await testAuthRepo.signUpWithEmailAndPassword(
                emailAddress: testEmail, password: testPassword);
            var option = response.fold(() => none(), (a) => a);
            expect(option, isA<None>());
          });
        });
        test(
            'on EmailAlreadyInUseException, returns AuthFailure.emailAlreadyInUse',
            () async {
          when(remoteData.signUpWithEmailAndPassword(
                  emailAddress: anyNamed("emailAddress"),
                  password: anyNamed("password")))
              .thenThrow(EmailAlreadyInUseException());
          var response = await testAuthRepo.signUpWithEmailAndPassword(
              emailAddress: testEmail, password: testPassword);
          var failure = response.fold(() => null, (a) => a);

          expect(failure, isA<EmailAlreadyInUse>());
        });

        test('WeakPasswordException, returns AuthFailure.weakPassword',
            () async {
          when(remoteData.signUpWithEmailAndPassword(
                  emailAddress: anyNamed("emailAddress"),
                  password: anyNamed("password")))
              .thenThrow(WeakPasswordException());
          var response = await testAuthRepo.signUpWithEmailAndPassword(
              emailAddress: testEmail, password: testPassword);
          var failure = response.fold(() => null, (a) => a);

          expect(failure, isA<WeakPassword>());
        });

        test('on InvalidEmailException, returns AuthFailure.invalidEmail',
            () async {
          when(remoteData.signUpWithEmailAndPassword(
                  emailAddress: anyNamed("emailAddress"),
                  password: anyNamed("password")))
              .thenThrow(InvalidEmailException());
          var response = await testAuthRepo.signUpWithEmailAndPassword(
              emailAddress: testEmail, password: testPassword);
          var failure = response.fold(() => null, (a) => a);

          expect(failure, isA<InvalidEmail>());
        });
      });
      group('if offline => ', () {
        setUp(() {
          when(networkInfo.isConnected)
              .thenAnswer((realInvocation) async => false);
        });

        test('returns an AuthFailure.deviceOffline', () async {
          testAuthRepo.signUpWithEmailAndPassword(
              emailAddress: testEmail, password: testPassword);

          var response = await testAuthRepo.signUpWithEmailAndPassword(
              emailAddress: testEmail, password: testPassword);
          var failure = response.fold(() => null, (a) => a);

          expect(failure, isA<DeviceOffline>());
        });
      });
    });
    group('on getUser => ', () {
      group('if device is online => ', () {
        setUp(() {
          when(networkInfo.isConnected).thenAnswer((_) async => true);
        });
        test('if there is a user, return user', () async {
          when(remoteData.getUser()).thenAnswer((_) async => testUserModel);
          // act
          var response = await testAuthRepo
              .getUser()
              .then((value) => value.fold((l) => l, (r) => r));

          // expect repo to return a user
          expect(response, isA<User>());
        });
        test('if there is no user, returns AuthFailure.loginRequired',
            () async {
          when(remoteData.getUser()).thenThrow(NoLoggedInUserException());
          // act
          var response = await testAuthRepo
              .getUser()
              .then((value) => value.fold((l) => l, (r) => r));
          // expect repo to return a failure
          expect(response, isA<LoginRequired>());
        });
      });
      group('if device is offline =>', () {
        setUp(() {
          when(networkInfo.isConnected).thenAnswer((_) async => false);
        });
        test('returns an AuthFailure.deviceOffline', () async {
          var response = await testAuthRepo.getUser();
          var failure = response.fold((failure) => failure, (a) => a);

          expect(failure, isA<DeviceOffline>());
        });
      });
    });
    group('on signInWithEmailAndPassword => ', () {
      group('if device is offline =>', () {
        test('returns AuthFailure.deviceOffline', () async {
          when(networkInfo.isConnected).thenAnswer((_) async => false);
          var response = await testAuthRepo.signInWithEmailAndPassword(
              emailAddress: testEmail, password: testPassword);

          verify(networkInfo.isConnected);
          expect(response.fold(() => null, (a) => a), isA<DeviceOffline>());
        });
      });
      group('if device is online =>', () {
        setUp(() {
          when(networkInfo.isConnected).thenAnswer((_) async => true);
        });

        test(
            'if wrong email and password combination => return AuthFailure.wrongEmailAndPasswordCombination',
            () async {
          when(remoteData.signInWithEmailAndPassword(
                  emailAddress: anyNamed("email"),
                  password: anyNamed("password")))
              .thenThrow(InvalidEmailAndPasswordCombinationException());

          var response = await testAuthRepo.signInWithEmailAndPassword(
              emailAddress: testEmail, password: testPassword);

          var failure = response.fold(() => null, (a) => a);

          expect(failure, isA<InvalidEmailAndPasswordCombination>());
        });

        test(
            'if account for email does not exist, return AuthFailure.userNotFound',
            () async {
          when(remoteData.signInWithEmailAndPassword(
                  emailAddress: anyNamed("email"),
                  password: anyNamed("password")))
              .thenThrow(AccountNotFoundException());
          var response = await testAuthRepo.signInWithEmailAndPassword(
              emailAddress: testEmail, password: testPassword);

          var failure = response.fold(() => null, (a) => a);

          expect(failure, isA<AccountNotFound>());
        });
        test('if successful, user is signed in and returns none', () async {
          when(remoteData.signInWithEmailAndPassword(
                  emailAddress: anyNamed("email"),
                  password: anyNamed("password")))
              .thenAnswer((_) async => MockUserModel());

          var response = await testAuthRepo.signInWithEmailAndPassword(
              emailAddress: testEmail, password: testPassword);

          expect(response.isNone(), true);
        });
      });
    });
    group('on signOut => ', () {
      test('if successful, signs out user from all sources and returns none',
          () {
        when(remoteData.signOut()).thenAnswer((realInvocation) async => null);
        testAuthRepo.signOut();
        verify(remoteData.signOut());
      });
    });
  });
}
