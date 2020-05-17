import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:lrs_app_v3/dev_env_sample_data.dart';
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

// All calls are correct (tested in test env).
// Setup a development user, that is used in development environmen
main() {
  // setup environment
  TestWidgetsFlutterBinding.ensureInitialized();
  configureInjection(Env.dev);

  // Environment specific dependencies
  FirebaseAuth firebaseAuth = getIt<FirebaseAuth>();
  NetworkInfo networkInfo = getIt<NetworkInfo>();
  FirebaseUserMapper userMapper = getIt<FirebaseUserMapper>();

  // Development object with injected dependencies
  FirebaseAuthRepository devAuthRepo =
      DevFirebaseAuthRepository(firebaseAuth, networkInfo, userMapper);

  // Instantiate objects for dev environment
  User devUser = DevData.devUser;
  Password devPassword = DevData.devUserPassword;

  // Tests
  group('[env: dev] DevAuthRepository =>', () {
    group('on SignInWithEmailAndPassword => ', () {
      test('signs in our sample User', () async {
        devAuthRepo.signInWithEmailAndPassword(
            emailAddress: null, password: null);

        var response = await devAuthRepo.getUser();

        var user = response.fold((l) => l, (r) => r);

        expect(user, isA<User>());
        print(user);
      });
    });

    group('on SignUpWithEmailAndPassword => ', () {
      // tries to sign up sample user every time, no matter the email address and password
      test('signsUp testUser sampleUser first time', () async {
        var response = await devAuthRepo.signUpWithEmailAndPassword(
            emailAddress: null, password: null);

        var option = response.fold(() => none(), (failure) => failure);

        expect(option, isA<None>());
      });
      test(
          'returns an AuthFailure.emailAlreadyInUse every time, because sampleUser is already signed up',
          () {});
    });

    group('on signOut => ', () {
      test('[same as env: prod]', () {});
    });
    group('on getUser => ', () {
      test('[same as env: prod]', () {});
    });
  });
}
