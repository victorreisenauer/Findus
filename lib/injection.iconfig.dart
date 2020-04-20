// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:lrs_app_v3/infrastructure/auth/api_user_mapper.dart';
import 'package:lrs_app_v3/infrastructure/auth/dev_auth_repository.dart';
import 'package:lrs_app_v3/domain/auth/i_auth_facade.dart';
import 'package:lrs_app_v3/infrastructure/auth/test_auth_repository.dart';
import 'package:lrs_data_client/src/api.dart';
import 'package:lrs_app_v3/infrastructure/core/api_injectable_module.dart';
import 'package:lrs_app_v3/infrastructure/lesson/test_lesson_repository.dart';
import 'package:lrs_app_v3/domain/lesson/i_lesson_facade.dart';
import 'package:lrs_app_v3/application/lesson/progress/progress_bloc.dart';
import 'package:lrs_app_v3/application/auth/auth_bloc.dart';
import 'package:lrs_app_v3/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:lrs_app_v3/application/lesson/lesson_bloc.dart';
import 'package:get_it/get_it.dart';

void $initGetIt(GetIt g, {String environment}) {
  final apiInjectableModule = _$ApiInjectableModule();
  g.registerLazySingleton<ApiUserMapper>(() => ApiUserMapper());
  g.registerLazySingleton<Api>(() => apiInjectableModule.api);
  g.registerFactory<ProgressBloc>(() => ProgressBloc());
  g.registerFactory<AuthBloc>(() => AuthBloc(g<IAuthFacade>()));
  g.registerFactory<SignInFormBloc>(() => SignInFormBloc(g<IAuthFacade>()));
  g.registerFactory<LessonBloc>(() => LessonBloc(g<ILessonFacade>()));

  //Register dev Dependencies --------
  if (environment == 'dev') {
    g.registerLazySingleton<IAuthFacade>(() => DevApiAuthRepository());
  }

  //Register test Dependencies --------
  if (environment == 'test') {
    g.registerLazySingleton<IAuthFacade>(() => TestAuthRepository());
    g.registerLazySingleton<ILessonFacade>(() => TestLessonRepository());
  }
}

class _$ApiInjectableModule extends ApiInjectableModule {}
