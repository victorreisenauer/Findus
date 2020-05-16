import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:lrs_app_v3/domain/auth/auth_barrel.dart';
import 'package:lrs_app_v3/infrastructure/auth/auth_barrel.dart';
import 'package:lrs_app_v3/infrastructure/auth/firebase_auth/firebase_user_mapper.dart';
import 'package:lrs_app_v3/infrastructure/core/network_info.dart';
import 'package:lrs_app_v3/injection.dart';
import 'package:mockito/mockito.dart';

// set up mock classes and instances
class MockFirebaseUser extends Mock implements FirebaseUser {}

class MockUser extends Mock implements User {}

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
  FirebaseAuth firebaseAuth = getIt<FirebaseAuth>();
  NetworkInfo networkInfo = getIt<NetworkInfo>();
  FirebaseUserMapper userMapper = getIt<FirebaseUserMapper>();

  // Production object with mocked dependencies
  FirebaseAuthRepository testAuthRepo =
      FirebaseAuthRepository(firebaseAuth, networkInfo, userMapper);

  // Instantiate objects for testing
  MockFirebaseUser testFirebaseUser = MockFirebaseUser();
  MockUser testUser = MockUser();
  MockEmailAddress testEmail = MockEmailAddress();
  MockPassword testPassword = MockPassword();

  // Tests
  group('[Env: test]FireBaseAuthRepository => ', () {
    group('on registerWithEmailAndPassword => ', () {
      group('if online => ', () {
        setUp(() {
          when(networkInfo.isConnected)
              .thenAnswer((realInvocation) async => true);
        });
        test('if successful, registers a new user', () async {
          when(firebaseAuth.createUserWithEmailAndPassword(
                  email: anyNamed("email"), password: anyNamed("password")))
              .thenAnswer((realInvocation) async => MockAuthResult());

          // create a new user with email and password
          var response = await testAuthRepo.signUpWithEmailAndPassword(
              emailAddress: testEmail, password: testPassword);

          // verify correct calls are made and option none() is returned
          verify(firebaseAuth.createUserWithEmailAndPassword(
              email: anyNamed("email"), password: anyNamed("password")));
          expect(response.fold(() => null, (a) => a), null);
        });
        test(
            'if email is already in use, returns AuthFailure.emailAlreadyInUse',
            () async {
          when(firebaseAuth.createUserWithEmailAndPassword(
                  email: anyNamed("email"), password: anyNamed("password")))
              .thenThrow(PlatformException(code: 'ERROR_EMAIL_ALREADY_IN_USE'));

          var response = await testAuthRepo.signUpWithEmailAndPassword(
              emailAddress: testEmail, password: testPassword);
          var failure = response.fold(() => null, (a) => a);

          // verify correct calls are made and option none() is returned
          verify(firebaseAuth.createUserWithEmailAndPassword(
              email: anyNamed("email"), password: anyNamed("password")));
          expect(failure, isA<EmailAlreadyInUse>());
        });

        test('if password is too weak, returns AuthFailure.weakPassword',
            () async {
          when(firebaseAuth.createUserWithEmailAndPassword(
                  email: anyNamed("email"), password: anyNamed("password")))
              .thenThrow(PlatformException(code: 'ERROR_WEAK_PASSWORD'));

          var response = await testAuthRepo.signUpWithEmailAndPassword(
              emailAddress: testEmail, password: testPassword);
          var failure = response.fold(() => null, (a) => a);

          // verify correct calls are made and option none() is returned
          verify(firebaseAuth.createUserWithEmailAndPassword(
              email: anyNamed("email"), password: anyNamed("password")));
          expect(failure, isA<WeakPassword>());
        });

        test('if email is invalid, returns AuthFailure.invalidEmail', () async {
          when(firebaseAuth.createUserWithEmailAndPassword(
                  email: anyNamed("email"), password: anyNamed("password")))
              .thenThrow(PlatformException(code: 'ERROR_INVALID_EMAIL'));

          var response = await testAuthRepo.signUpWithEmailAndPassword(
              emailAddress: testEmail, password: testPassword);
          var failure = response.fold(() => null, (a) => a);

          // verify correct calls are made and option none() is returned
          verify(firebaseAuth.createUserWithEmailAndPassword(
              email: anyNamed("email"), password: anyNamed("password")));
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
          when(firebaseAuth.currentUser())
              .thenAnswer((_) async => testFirebaseUser);
          when(userMapper.toDomain(testFirebaseUser))
              .thenAnswer((realInvocation) => testUser);

          // act
          var response = await testAuthRepo
              .getUser()
              .then((value) => value.fold((l) => l, (r) => r));
          // verify onAuthStateChanged is called
          verify(firebaseAuth.currentUser());

          // expect repo to return a user
          expect(response, isA<User>());
        });
        test('if there is no user, returns AuthFailure.loginRequired',
            () async {
          when(firebaseAuth.currentUser()).thenAnswer((_) async => null);
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
          // case 1: invalid email
          when(firebaseAuth.signInWithEmailAndPassword(
                  email: anyNamed("email"), password: anyNamed("password")))
              .thenThrow(PlatformException(code: "ERROR_INVALID_EMAIL"));

          var response = await testAuthRepo.signInWithEmailAndPassword(
              emailAddress: testEmail, password: testPassword);

          var failure = response.fold(() => null, (a) => a);

          verify(firebaseAuth.signInWithEmailAndPassword(
              email: anyNamed("email"), password: anyNamed("password")));
          expect(failure, isA<InvalidEmailAndPasswordCombination>());

          //case 2: invalid password
          when(firebaseAuth.signInWithEmailAndPassword(
                  email: anyNamed("email"), password: anyNamed("password")))
              .thenThrow(PlatformException(code: "ERROR_WRONG_PASSWORD"));

          response = await testAuthRepo.signInWithEmailAndPassword(
              emailAddress: testEmail, password: testPassword);

          failure = response.fold(() => null, (a) => a);

          verify(firebaseAuth.signInWithEmailAndPassword(
              email: anyNamed("email"), password: anyNamed("password")));
          expect(failure, isA<InvalidEmailAndPasswordCombination>());
        });

        test(
            'if account for email does not exist, return AuthFailure.userNotFound',
            () async {
          when(firebaseAuth.signInWithEmailAndPassword(
                  email: anyNamed("email"), password: anyNamed("password")))
              .thenThrow(PlatformException(code: 'ERROR_USER_NOT_FOUND'));
          var response = await testAuthRepo.signInWithEmailAndPassword(
              emailAddress: testEmail, password: testPassword);

          verify(firebaseAuth.signInWithEmailAndPassword(
              email: anyNamed("email"), password: anyNamed("password")));
          var failure = response.fold(() => null, (a) => a);

          expect(failure, isA<AccountNotFound>());
        });
        test('if successful, user is signed in and returns none', () async {
          when(firebaseAuth.signInWithEmailAndPassword(
                  email: anyNamed("email"), password: anyNamed("password")))
              .thenAnswer((_) async => MockAuthResult());

          var response = await testAuthRepo.signInWithEmailAndPassword(
              emailAddress: testEmail, password: testPassword);

          verify(firebaseAuth.signInWithEmailAndPassword(
              email: anyNamed("email"), password: anyNamed("password")));
          expect(response.isNone(), true);
        });
      });
    });
    group('on signOut => ', () {
      test('if successful, signs out user from all sources and returns none',
          () {
        when(firebaseAuth.signOut()).thenAnswer((realInvocation) async => null);
        testAuthRepo.signOut();
        verify(firebaseAuth.signOut());
      });
    });
  });
}
