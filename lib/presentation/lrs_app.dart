import "package:auto_route/auto_route.dart";
import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";

import "../application/auth/auth_bloc.dart";
import "../injection.dart";
import "routes/router.gr.dart";

class LrsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<AuthBloc>()..add(const AuthEvent.authCheckRequested()),
        ),
      ],
      child: MaterialApp(
        title: "LRS App",
        builder: ExtendedNavigator<Router>(router: Router()),
        home: ExtendedNavigator<Router>(
          router: Router(),
        ),
      ),
    );
  }
}
