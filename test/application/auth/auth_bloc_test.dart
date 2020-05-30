import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:lrs_app_v3/application/auth/auth_bloc.dart';
import 'package:lrs_app_v3/domain/auth/auth_barrel.dart';
import 'package:mockito/mockito.dart';

// Create mocked classes

class MockAuthFacade extends Mock implements AuthFacade {}

class MockUser extends Mock implements User {}

main() {
  // Dependencies
  AuthFacade testAuthFacade = MockAuthFacade();

  // Testing objects
  User testUser = MockUser();

  // Tests
  group('AuthBloc =>', () {
    group('initially = >', () {
      blocTest('emits []',
          build: () async => AuthBloc(testAuthFacade), expect: []);
    });
    group('on authCheckRequested =>', () {
      blocTest('if user is authenticated => emits [Authenticated(user)]',
          build: () async {
            when(testAuthFacade.getUser())
                .thenAnswer((_) async => right(testUser));

            return AuthBloc(testAuthFacade);
          },
          act: (AuthBloc bloc) async =>
              bloc.add(AuthEvent.authCheckRequested()),
          expect: [AuthState.authenticated(testUser)]);
    });
    blocTest('if user is unauthenticated => emits [Unauthenticated]',
        build: () async {
          when(testAuthFacade.getUser())
              .thenAnswer((_) async => left(AuthFailure.loginRequired()));

          return AuthBloc(testAuthFacade);
        },
        act: (AuthBloc bloc) async => bloc.add(AuthEvent.authCheckRequested()),
        expect: [AuthState.unauthenticated()]);
  });
}
