import 'package:flutter/material.dart';
import 'package:lrs_app_v3/injection.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:lrs_app_v3/presenation/pages/sign_in/widgets/sign_in_form.dart';
import 'package:lrs_app_v3/application/auth/sign_in_form/sign_in_form_bloc.dart';

class SignInPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => getIt<SignInFormBloc>(),
        child: const SignInForm(),
      )
    );
  }
}