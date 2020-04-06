// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:lrs_app_v3/application/auth/auth_bloc.dart';
import 'package:lrs_app_v3/domain/auth/i_auth_facade.dart';
import 'package:get_it/get_it.dart';

void $initGetIt(GetIt g, {String environment}) {
  g.registerFactory<AuthBloc>(() => AuthBloc(g<IAuthFacade>()));
}
