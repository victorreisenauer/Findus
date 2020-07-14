import "package:auto_route/auto_route.dart";
import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";

import "../../../../application/auth/auth_bloc.dart";
import "../../../routes/router.gr.dart";

class LogoutButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthBloc, AuthState>(
      listener: (context, state) {
        state.map(
          initial: (_) {},
          authenticated: (_) {},
          unauthenticated: (_) => ExtendedNavigator.ofRouter<Router>().pushNamed(Routes.welcomePage),
        );
      },
      builder: (context, state) {
        return RaisedButton(
          child: Text("Logout", style: Theme.of(context).textTheme.headline3),
          onPressed: () => context.bloc<AuthBloc>().add(const AuthEvent.signedOut()),
        );
      },
    );
  }
}
