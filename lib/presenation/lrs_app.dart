import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:lrs_app_v3/injection.dart';
import 'package:lrs_app_v3/presenation/routes/router.gr.dart';
import 'package:lrs_app_v3/application/auth/auth_bloc.dart';


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
        initialRoute: Router.welcomePage,    
        onGenerateRoute: Router.onGenerateRoute,
        navigatorKey: Router.navigator.key, 
      ),
    );
  }
}
