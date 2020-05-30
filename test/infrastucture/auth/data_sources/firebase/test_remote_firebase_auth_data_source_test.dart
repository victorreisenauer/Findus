import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:lrs_app_v3/domain/auth/auth_barrel.dart';
import 'package:lrs_app_v3/infrastructure/auth/auth_barrel.dart';
import 'package:lrs_app_v3/infrastructure/core/remote_exceptions.dart';
import 'package:mockito/mockito.dart';

// set up mock classes and instances
class MockFirebaseUser extends Mock implements FirebaseUser {}

class MockUserModel extends Mock implements UserModel {}

class MockEmailAddress extends Mock implements EmailAddress {}

class MockPassword extends Mock implements Password {}

class MockAuthResult extends Mock implements AuthResult {}

class MockFirebaseAuth extends Mock implements FirebaseAuth {}

class MockFirebaseUserMapper extends Mock implements FirebaseUserMapper {}

// Specifically test that all calls are made correctly for RemoteFirebaseAuthDataSource.
// Data and inner workings are irrelevant for now. Those are tested in dev and prod environments.
// Makes mostly use of 'verify()' tests.
main() {
  // Dependencies
  FirebaseAuth firebaseAuth = MockFirebaseAuth();
  FirebaseUserMapper userMapper = MockFirebaseUserMapper();

  // Production object with mocked dependencies
  RemoteAuthDataSourceFacade testRemoteData =
      RemoteFirebaseAuthDataSource(firebaseAuth, userMapper);

  // Instantiate objects for testing
  MockFirebaseUser testFirebaseUser = MockFirebaseUser();
  MockUserModel testUser = MockUserModel();

  String testEmail = EmailAddress("testUser@test.com").getOrCrash();
  String testPassword = Password("testUser123").getOrCrash();

  // Tests
  group('RemoteFirebaseAuthDataSource => ', () {
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

        // make sure exception is thrown
        try {
          await testRemoteData.signUpWithEmailAndPassword(
              emailAddress: testEmail, password: testPassword);
          fail("exception not thrown");
        } catch (e) {
          expect(e, isInstanceOf<EmailAlreadyInUseException>());
        }

        // verify correct calls are made
        verify(firebaseAuth.createUserWithEmailAndPassword(
            email: anyNamed("email"), password: anyNamed("password")));
      });

      test('if password is too weak, throws WeakPasswordException', () async {
        when(firebaseAuth.createUserWithEmailAndPassword(
                email: anyNamed("email"), password: anyNamed("password")))
            .thenThrow(PlatformException(code: 'ERROR_WEAK_PASSWORD'));

        try {
          await testRemoteData.signUpWithEmailAndPassword(
              emailAddress: testEmail, password: testPassword);
          fail("exception not thrown");
        } catch (e) {
          expect(e, isInstanceOf<WeakPasswordException>());
        }

        // verify correct calls are made
        verify(firebaseAuth.createUserWithEmailAndPassword(
            email: anyNamed("email"), password: anyNamed("password")));
      });

      test('if email is invalid, throws a InvalidEmailException', () async {
        when(firebaseAuth.createUserWithEmailAndPassword(
                email: anyNamed("email"), password: anyNamed("password")))
            .thenThrow(PlatformException(code: 'ERROR_INVALID_EMAIL'));

        try {
          await testRemoteData.signUpWithEmailAndPassword(
              emailAddress: testEmail, password: testPassword);
          fail("exception not thrown");
        } catch (e) {
          expect(e, isInstanceOf<InvalidEmailException>());
        }

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

        try {
          await testRemoteData.getUser();
          fail("exception not thrown");
        } catch (e) {
          expect(e, isInstanceOf<NoLoggedInUserException>());
        }

        verify(firebaseAuth.currentUser());
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

        try {
          await testRemoteData.signInWithEmailAndPassword(
              emailAddress: testEmail, password: testPassword);
          fail("exception not thrown");
        } catch (e) {
          expect(
              e, isInstanceOf<InvalidEmailAndPasswordCombinationException>());
        }

        verify(firebaseAuth.signInWithEmailAndPassword(
            email: anyNamed("email"), password: anyNamed("password")));

        //case 2: invalid password
        when(firebaseAuth.signInWithEmailAndPassword(
                email: anyNamed("email"), password: anyNamed("password")))
            .thenThrow(PlatformException(code: "ERROR_WRONG_PASSWORD"));

        try {
          await testRemoteData.signInWithEmailAndPassword(
              emailAddress: testEmail, password: testPassword);
          fail("exception not thrown");
        } catch (e) {
          expect(
              e, isInstanceOf<InvalidEmailAndPasswordCombinationException>());
        }

        verify(firebaseAuth.signInWithEmailAndPassword(
            email: anyNamed("email"), password: anyNamed("password")));
      });

      test(
          'if account for email does not exist, throws AccountNotFoundException',
          () async {
        when(firebaseAuth.signInWithEmailAndPassword(
                email: anyNamed("email"), password: anyNamed("password")))
            .thenThrow(PlatformException(code: 'ERROR_USER_NOT_FOUND'));
        try {
          await testRemoteData.signInWithEmailAndPassword(
              emailAddress: testEmail, password: testPassword);
          fail("exception not thrown");
        } catch (e) {
          expect(e, isInstanceOf<AccountNotFoundException>());
        }

        verify(firebaseAuth.signInWithEmailAndPassword(
            email: anyNamed("email"), password: anyNamed("password")));
      });
      test('if successful, user is signed in', () async {
        when(firebaseAuth.signInWithEmailAndPassword(
                email: anyNamed("email"), password: anyNamed("password")))
            .thenAnswer((_) async => MockAuthResult());

        await testRemoteData.signInWithEmailAndPassword(
            emailAddress: testEmail, password: testPassword);

        verify(firebaseAuth.signInWithEmailAndPassword(
            email: anyNamed("email"), password: anyNamed("password")));
      });
    });
    group('on signOut => ', () {
      test('if successful, signs out user from all sources', () {
        when(firebaseAuth.signOut()).thenAnswer((realInvocation) async => null);
        testRemoteData.signOut();
        verify(firebaseAuth.signOut());
      });
    });
  });
}
