// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:lrs_data_client/src/api.dart';
import 'package:lrs_app_v3/infrastructure/core/api_injectable_module.dart';
import 'package:lrs_app_v3/infrastructure/auth/api_user_mapper.dart';
import 'package:lrs_app_v3/infrastructure/auth/dev_auth_repository.dart';
import 'package:lrs_app_v3/domain/auth/i_auth_facade.dart';
import 'package:lrs_app_v3/infrastructure/auth/test_auth_repository.dart';
import 'package:lrs_app_v3/infrastructure/lesson/lesson_repository.dart';
import 'package:lrs_app_v3/domain/lesson/lesson_facade.dart';
import 'package:lrs_app_v3/infrastructure/core/network_info.dart';
import 'package:lrs_app_v3/infrastructure/lesson/data_sources/local_lesson_data_source.dart';
import 'package:lrs_app_v3/infrastructure/lesson/data_sources/remote_lesson_data_source.dart';
import 'package:lrs_app_v3/infrastructure/lesson/test_lesson_repository.dart';
import 'package:lrs_app_v3/application/lesson/progress/progress_bloc.dart';
import 'package:lrs_app_v3/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:lrs_app_v3/application/auth/auth_bloc.dart';
import 'package:lrs_app_v3/application/lesson/lesson_bloc.dart';
import 'package:get_it/get_it.dart';

void $initGetIt(GetIt g, {String environment}) {
  final apiInjectableModule = _$ApiInjectableModule();
  g.registerLazySingleton<Api>(() => apiInjectableModule.api);
  g.registerLazySingleton<ApiUserMapper>(() => ApiUserMapper());
  g.registerFactory<ProgressBloc>(() => ProgressBloc());
  g.registerFactory<SignInFormBloc>(() => SignInFormBloc(g<IAuthFacade>()));
  g.registerFactory<AuthBloc>(() => AuthBloc(g<IAuthFacade>()));
  g.registerFactory<LessonBloc>(() => LessonBloc(g<LessonFacade>()));

  //Register dev Dependencies --------
  if (environment == 'dev') {
    g.registerLazySingleton<IAuthFacade>(() => DevApiAuthRepository());
  }

  //Register test Dependencies --------
  if (environment == 'test') {
    g.registerLazySingleton<IAuthFacade>(() => TestAuthRepository());
    g.registerLazySingleton<LessonFacade>(() => TestLessonRepository());
  }

  //Register prod Dependencies --------
  if (environment == 'prod') {
    g.registerLazySingleton<LessonFacade>(() => LessonRepository(
          networkInfo: g<NetworkInfo>(),
          localData: g<LocalLessonDataSource>(),
          remoteData: g<RemoteLessonDataSource>(),
        ));
  }
}

class _$ApiInjectableModule extends ApiInjectableModule {}
