import 'package:mockito/mockito.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:injectable/injectable.dart';

import 'package:lrs_app_v3/domain/auth/user.dart';
import '../../../lib/application/auth/auth_bloc.dart';
import 'package:lrs_app_v3/domain/auth/value_objects.dart';
import 'package:lrs_app_v3/domain/core/value_objects.dart';

import '../../../lib/domain/auth/i_auth_facade.dart';
import '../../../lib/injection.dart';
import 'package:lrs_app_v3/infrastructure/auth/mock_auth_repository.dart';


void main() {
  MockApiAuthRepository mockApiAuthRepository;

  setUpAll(
    () {
      configureInjection(Environment.test);
    }
  );

  setUp(() {
    mockApiAuthRepository = getIt<MockApiAuthRepository>();
  });

  final EmailAddress email = EmailAddress('admin@admin.com');
  final Password password = Password('admin');
  final StringSingleLine name = StringSingleLine("testname");
  final testUser = User(emailAddress: email, name: name, id: UniqueId.fromApiId('100'));

  group( 'AuthBloc', () {

    blocTest(
      'emits [User] when user is authenticated',
      build: () async {
        when(mockApiAuthRepository.getSignedInUser())
          .thenAnswer((_) async => null);
        return AuthBloc(mockApiAuthRepository);
      },
      act: (bloc) => bloc.add(AuthCheckRequested()),
      expect: [
        Authenticated(testUser)
      ]
    );


  }
  );
}