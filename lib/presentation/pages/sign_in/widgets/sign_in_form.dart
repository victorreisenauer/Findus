import 'package:auto_route/auto_route.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lrs_app_v3/application/auth/auth_bloc.dart';
import 'package:lrs_app_v3/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:lrs_app_v3/presentation/routes/router.gr.dart';

class SignInForm extends StatelessWidget {
  const SignInForm({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInFormBloc, SignInFormState>(
        listener: (context, state) {
      state.authFailureOrSuccessOption.fold(
        // if there was no authentication request, null function just displays screen
        () {},
        (either) {
          either.fold(
            // if authentication was tried and unsuccessful
            (failure) {
              FlushbarHelper.createError(
                message: failure.map(
                  cancelledByUser: (_) => 'Cancelled',
                  serverError: (_) => 'Server Error',
                  emailAlreadyInUse: (_) => 'Email already in use',
                  invalidEmailAndPasswordCombination: (_) =>
                      'Invalid email and password combination',
                  loginRequired: (_) => 'Login Required',
                  invalidEmail: (_) => 'Invalid Email',
                  accountNotFound: (_) => 'Accound not found',
                  weakPassword: (_) => 'weak password',
                  deviceOffline: (_) => 'device offline',
                ),
              ).show(context);
            },

            // if authentication was successful
            (_) {
              ExtendedNavigator.of(context).pushWelcomePage();
              context
                  .bloc<AuthBloc>()
                  .add(const AuthEvent.authCheckRequested());
            },
          );
        },
      );
    },

        // build SignInPage
        builder: (context, state) {
      return Form(
        autovalidate: state.showErrorMessages,
        child: ListView(
          padding: const EdgeInsets.all(8.0),
          children: <Widget>[
            const Text(
              '📝',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 120),
            ),
            const SizedBox(height: 8),
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.email),
                labelText: 'Email',
              ),
              autocorrect: false,
              onChanged: (value) => context
                  .bloc<SignInFormBloc>()
                  .add(SignInFormEvent.emailChanged(value)),
              validator: (_) => state.emailAddress.value.fold(
                (f) => f.maybeMap(
                  invalidEmail: (_) => 'Invalid email',
                  orElse: () => null,
                ),
                (_) => null,
              ),
            ),
            const SizedBox(height: 8),
            TextFormField(
              // controller: passwordController,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.lock),
                labelText: 'Password',
              ),
              obscureText: true,
              autocorrect: false,
              onChanged: (value) => context
                  .bloc<SignInFormBloc>()
                  .add(SignInFormEvent.passwordChanged(value)),
              validator: (_) => state.password.value.fold(
                (f) => f.maybeMap(
                  shortPassword: (_) => 'Short password',
                  orElse: () => null,
                ),
                (_) => null,
              ),
            ),
            const SizedBox(height: 8),
            Row(
              children: <Widget>[
                Expanded(
                  child: FlatButton(
                    onPressed: () => context.bloc<SignInFormBloc>().add(
                        const SignInFormEvent
                            .signInWithEmailAndPasswordPressed()),
                    child: const Text('SIGN IN'),
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: FlatButton(
                    onPressed: () => context.bloc<SignInFormBloc>().add(
                        const SignInFormEvent
                            .registerWithEmailAndPasswordPressed()),
                    child: const Text('REGISTER'),
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    });
  }
}
