import 'package:test/test.dart';
import 'package:dartz/dartz.dart';

import 'package:lrs_app_v3/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:lrs_app_v3/infrastructure/auth/mock_auth_repository.dart';
import '../../../../lib/domain/auth/validated_value_objects.dart';

void main() {
  SignInFormBloc signInFormBloc;
  group('SignInFormBloc => ', () {
    setUp(() {
      signInFormBloc = SignInFormBloc(
          mockApiAuthRepo); // instantiated in mock_auth_repository.dart
    });

    test('initial state is hold only empty values', () {
      var state = signInFormBloc.initialState;
      expect(state.emailAddress, EmailAddress(''));
      expect(state.password, Password(''));
      expect(state.showErrorMessages, false);
      expect(state.isSubmitting, false);
      expect(state.authFailureOrSuccessOption, none());
    });
  });
  signInFormBloc.close();
}
