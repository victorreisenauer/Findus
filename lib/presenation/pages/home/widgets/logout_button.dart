import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../application/auth/auth_bloc.dart';
import 'package:lrs_app_v3/presenation/routes/router.gr.dart';

class LogoutButton extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthBloc, AuthState> (
      listener: (context, state) {
        if (state == AuthState.unauthenticated()) {
          Router.navigator.pushReplacementNamed(Router.signInPage);
        }
        // if state is unauthenticated --> route to signInScreen
        },
      
      builder: (context, state) {
        return RaisedButton(
          child: Text("Logout", style: Theme.of(context).textTheme.display2),
          onPressed: () => context
            .bloc<AuthBloc>()
            .add(const AuthEvent.signedOut()),
        );
      },
    );
  }
}