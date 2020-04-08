import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lrs_app_v3/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lrs_app_v3/presenation/routes/router.gr.dart';

class SignInForm extends StatelessWidget {
  const SignInForm({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInFormBloc, SignInFormState> (
      listener: (context, state) {
        state.authFailureOrSuccessOption.fold(
          () {},
          (either) {
            either.fold(
              // if authentication was unsuccessful
              (failure) {},

              // if authentication was successful
              (_) {
                Router.navigator.pushReplacementNamed(Router.homePage);
              },
            );
          },
        );
      },

      // build SignInPage
      builder: (context, state) {
        return Form(
          child: ListView(
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(prefixIcon: Icon(Icons.email), labelText: 'Email'),
                autocorrect: false,
                onChanged: (value) => context
                .bloc<SignInFormBloc>()
                .add(SignInFormEvent.emailChanged(value)),
                validator: (_) => state.emailAddress.value.fold(
                  (f) => f.maybeMap(
                    invalidEmail: (_) => 'Invalid email',
                    orElse: null,
                  ),
                  (_) => null,
                ),
              ),

              const SizedBox(height: 8,),
              TextFormField(
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
                    shortPassword: (_) => 'Password to short',
                    orElse: null
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
                        child: const Text("SIGN IN"),
                      ),
                    ),
                  const SizedBox(width: 8,),
                  Expanded(
                    child: FlatButton(
                      onPressed: () => context.bloc<SignInFormBloc>().add(
                        const SignInFormEvent
                          .registerWithEmailAndPasswordPressed(),
                        ),
                        child: const Text("Register"),
                    ),
                  )
                ],
              )
              


            
            ],
          ),
        );
      }


    );
  }
}