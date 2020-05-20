import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:lrs_app_v3/domain/auth/auth_barrel.dart';
import 'package:lrs_app_v3/infrastructure/auth/auth_barrel.dart';
import 'package:lrs_app_v3/infrastructure/core/remote_exceptions.dart';
import 'package:lrs_app_v3/injection.dart';
import 'package:mockito/mockito.dart';

// set up mock classes and instances
class MockFirebaseUser extends Mock implements FirebaseUser {}

class MockUserModel extends Mock implements UserModel {}

class MockEmailAddress extends Mock implements EmailAddress {}

class MockPassword extends Mock implements Password {}

class MockAuthResult extends Mock implements AuthResult {}

// Specifically test that all calls are made correctly for RemoteFirebaseAuthDataSource.
// Data and inner workings are irrelevant for now. Those are tested in dev and prod environments.
// Makes mostly use of 'verify()' tests.
main() {
  // setup environment
  TestWidgetsFlutterBinding.ensureInitialized();
  configureInjection(Env.test);

  // Dependencies
  FirebaseAuth firebaseAuth = getIt<FirebaseAuth>();
  FirebaseUserMapper userMapper = getIt<FirebaseUserMapper>();

  // Production object with mocked dependencies
  RemoteFirebaseAuthDataSource testRemoteData =
      RemoteFirebaseAuthDataSource(firebaseAuth, userMapper);

  // Instantiate objects for testing
  MockFirebaseUser testFirebaseUser = MockFirebaseUser();
  MockUserModel testUser = MockUserModel();

  String testEmail = EmailAddress("testUser@test.com").getOrCrash();
  String testPassword = Password("testUser123").getOrCrash();

  // Tests
  group('[Env: test] RemoteFirebaseAuthDataSource => ', () {
    group('on signUpWithEmailAndPassword => ', () {
      test('if successful, registers new user', () async {
        when(firebaseAuth.createUserWithEmailAndPassword(
                email: anyNamed("email"), password: anyNamed("password")))
            .thenAnswer((realInvocation) async => MockAuthResult());

        // create a new user with email and password
        await testRemoteData.signUpWithEmailAndPassword(
            emailAddress: testEmail, password: testPassword);

        // verify correct calls are made
        verify(firebaseAuth.createUserWithEmailAndPassword(
            email: anyNamed("email"), password: anyNamed("password")));
      });
      test('if email is already in use, throws EmailAlreadyInUseException',
          () async {
        when(firebaseAuth.createUserWithEmailAndPassword(
                email: anyNamed("email"), password: anyNamed("password")))
            .thenThrow(PlatformException(code: 'ERROR_EMAIL_ALREADY_IN_USE'));

        expect(
            (_) => testRemoteData
                .signUpWithEmailAndPassword(
                    emailAddress: testEmail, password: testPassword)
                .whenComplete(() => null),
            throwsA(EmailAlreadyInUseException));

        // verify correct calls are made and option none() is returned
        verify(firebaseAuth.createUserWithEmailAndPassword(
            email: anyNamed("email"), password: anyNamed("password")));
      });

      test('if password is too weak, throws WeakPasswordException', () async {
        when(firebaseAuth.createUserWithEmailAndPassword(
                email: anyNamed("email"), password: anyNamed("password")))
            .thenThrow(PlatformException(code: 'ERROR_WEAK_PASSWORD'));

        expect(
            testRemoteData.signUpWithEmailAndPassword(
                emailAddress: testEmail, password: testPassword),
            throwsA(WeakPasswordException));

        verify(firebaseAuth.createUserWithEmailAndPassword(
            email: anyNamed("email"), password: anyNamed("password")));
      });

      test('if email is invalid, throws a InvalidEmailException', () async {
        when(firebaseAuth.createUserWithEmailAndPassword(
                email: anyNamed("email"), password: anyNamed("password")))
            .thenThrow(PlatformException(code: 'ERROR_INVALID_EMAIL'));

        expect(
            testRemoteData.signUpWithEmailAndPassword(
                emailAddress: testEmail, password: testPassword),
            throwsA(InvalidEmailException));

        // verify correct calls are made
        verify(firebaseAuth.createUserWithEmailAndPassword(
            email: anyNamed("email"), password: anyNamed("password")));
      });
    });
    group('on getUser => ', () {
      test('if there is a user, return userModel', () async {
        when(firebaseAuth.currentUser())
            .thenAnswer((_) async => testFirebaseUser);
        when(userMapper.toUserModel(testFirebaseUser))
            .thenAnswer((realInvocation) => testUser);

        // act
        var response = await testRemoteData.getUser();
        // verify onAuthStateChanged is called
        verify(firebaseAuth.currentUser());

        // expect repo to return a user
        expect(response, isA<UserModel>());
      });
      test('if there is no user, throws NoLoggedInUserException', () async {
        when(firebaseAuth.currentUser()).thenAnswer((_) async => null);

        expect(testRemoteData.getUser(), throwsA(NoLoggedInUserException));
      });
    });
    group('on signInWithEmailAndPassword => ', () {
      test(
          'if wrong email and password combination => return AuthFailure.invalidEmailAndPasswordCombination',
          () async {
        // case 1: invalid email
        when(firebaseAuth.signInWithEmailAndPassword(
                email: anyNamed("email"), password: anyNamed("password")))
            .thenThrow(PlatformException(code: "ERROR_INVALID_EMAIL"));

        expect(
            testRemoteData.signInWithEmailAndPassword(
                emailAddress: testEmail, password: testPassword),
            throwsA(InvalidEmailException));

        verify(firebaseAuth.signInWithEmailAndPassword(
            email: anyNamed("email"), password: anyNamed("password")));

        //case 2: invalid password
        when(firebaseAuth.signInWithEmailAndPassword(
                email: anyNamed("email"), password: anyNamed("password")))
            .thenThrow(PlatformException(code: "ERROR_WRONG_PASSWORD"));

        expect(
            testRemoteData.signInWithEmailAndPassword(
                emailAddress: testEmail, password: testPassword),
            throwsA(InvalidEmailAndPasswordCombination()));

        verify(firebaseAuth.signInWithEmailAndPassword(
            email: anyNamed("email"), password: anyNamed("password")));
      });

      test(
          'if account for email does not exist, throws AccountNotFoundException',
          () async {
        when(firebaseAuth.signInWithEmailAndPassword(
                email: anyNamed("email"), password: anyNamed("password")))
            .thenThrow(PlatformException(code: 'ERROR_USER_NOT_FOUND'));
        expect(
            testRemoteData.signInWithEmailAndPassword(
                emailAddress: testEmail, password: testPassword),
            throwsA(AccountNotFoundException));

        verify(firebaseAuth.signInWithEmailAndPassword(
            email: anyNamed("email"), password: anyNamed("password")));
      });
      test('if successful, user is signed in and returns none', () async {
        when(firebaseAuth.signInWithEmailAndPassword(
                email: anyNamed("email"), password: anyNamed("password")))
            .thenAnswer((_) async => MockAuthResult());

        expect(
            testRemoteData.signInWithEmailAndPassword(
                emailAddress: testEmail, password: testPassword),
            null);

        verify(firebaseAuth.signInWithEmailAndPassword(
            email: anyNamed("email"), password: anyNamed("password")));
      });
    });
    group('on signOut => ', () {
      test('if successful, signs out user from all sources and returns none',
          () {
        when(firebaseAuth.signOut()).thenAnswer((realInvocation) async => null);
        testRemoteData.signOut();
        verify(firebaseAuth.signOut());
      });
    });
  });
}
