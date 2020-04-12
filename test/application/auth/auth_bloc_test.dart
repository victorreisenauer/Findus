import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:dartz/dartz.dart';

import 'package:lrs_app_v3/domain/auth/user.dart';
import 'package:lrs_app_v3/application/auth/auth_bloc.dart';
import 'package:lrs_app_v3/infrastructure/auth/mock_auth_repository.dart';
import 'package:lrs_app_v3/domain/core/value_objects.dart';
import 'package:lrs_app_v3/domain/auth/value_objects.dart';



void main() {
  StringSingleLine _userName = StringSingleLine("TestUser");
  EmailAddress _emailAddress = EmailAddress("testUser@test.com");
  UniqueId _testId = UniqueId();
  User _currentUserEmpty;
  User _currentUser = User(emailAddress: _emailAddress, name: _userName, id: _testId);



  group('AuthBloc =>', () {

    test('emits initial state on initialization"',() {
      final bloc = AuthBloc(mockApiAuthRepo);
      expectLater(
        bloc,
        emits(AuthState.initial())
      );
    });

    test('emits state "Unauthenticated" when no user is signed in', () {
      when(mockApiAuthRepo.getSignedInUser())
        .thenAnswer((_) async => optionOf(_currentUserEmpty));
      final bloc = AuthBloc(mockApiAuthRepo);
      bloc.add(AuthEvent.authCheckRequested());
      expectLater(
        bloc,
        emitsInOrder([
          AuthState.initial(),
          AuthState.unauthenticated()
        ])
      );
    });

    test('emits state "Authenticated" with user obj when user is signed in',() {
      when(mockApiAuthRepo.getSignedInUser())
        .thenAnswer((_) async => optionOf(_currentUser));
      final bloc = AuthBloc(mockApiAuthRepo);
      bloc.add(AuthEvent.authCheckRequested());
      expectLater(
        bloc,
        emitsInOrder([
          AuthState.initial(),
          AuthState.authenticated(_currentUser)
          ])
      );
      bloc.close();
    });

    test('emits state "Unauthenticated" when a user logs out', () {
      when(mockApiAuthRepo.getSignedInUser())
        .thenAnswer((_) async => optionOf(_currentUser));
      final bloc = AuthBloc(mockApiAuthRepo);
      bloc.add(AuthEvent.signedOut());
      expectLater(
        bloc,
        emitsInOrder([
          AuthState.initial(),
          AuthState.unauthenticated()
        ]));
      bloc.close();
    });
  });
}