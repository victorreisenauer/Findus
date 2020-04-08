import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:lrs_app_v3/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:lrs_app_v3/infrastructure/auth/mock_auth_repository.dart';
import 'package:lrs_app_v3/domain/core/value_validators.dart';

import '../../../../lib/domain/core/value_validators.dart';




// test signInFormBloc on correct event state mapping:

// Events: emailChanged, passwordChanged, 
// signInWithGooglePressed
// registerWithEmailAndPasswordPressed
//signInWithEmailAndPassword

// test signInFormBloc on correct data return in events




void main() {
  group(
    "SignInFormBloc maps events correctly to states",
    () {
      blocTest(
        'Runs all email validations and emits SignInState',
        build: () async => SignInFormBloc(mockApiAuthRepo),
        act: (bloc) => bloc.add(SignInFormEvent.emailChanged("initialemail")),
        expect: [isA<SignInFormState>()],
        verify: (_) async {
          // verify all emailvalidators where called
        }
      );
    }
  );
}