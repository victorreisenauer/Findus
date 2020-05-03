// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:lrs_data_client/src/api.dart';
import 'package:lrs_app_v3/injection.dart';
import 'package:lrs_app_v3/infrastructure/auth/auth_repository.dart';
import 'package:lrs_app_v3/domain/auth/auth_facade.dart';
import 'package:hive/hive.dart';
import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:lrs_app_v3/infrastructure/lesson/lesson_repository.dart';
import 'package:lrs_app_v3/domain/lesson/lesson_facade.dart';
import 'package:lrs_app_v3/infrastructure/auth/data_sources/local_auth_data_source.dart';
import 'package:lrs_app_v3/infrastructure/lesson/data_sources/local_lesson_data_source.dart';
import 'package:lrs_app_v3/infrastructure/core/network_info.dart';
import 'package:lrs_app_v3/application/lesson/progress/progress_bloc.dart';
import 'package:lrs_app_v3/infrastructure/auth/data_sources/remote_auth_data_source.dart';
import 'package:lrs_app_v3/infrastructure/lesson/data_sources/remote_lesson_data_source.dart';
import 'package:lrs_app_v3/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:lrs_app_v3/application/auth/auth_bloc.dart';
import 'package:lrs_app_v3/application/lesson/lesson_bloc.dart';
import 'package:get_it/get_it.dart';

void $initGetIt(GetIt g, {String environment}) {
  final registerModule = _$RegisterModule();
  g.registerLazySingleton<Api>(() => registerModule.api);
  g.registerFactoryParam<Box<dynamic>, String, dynamic>(
      (name, _) => registerModule.box(name));
  g.registerFactory<DataConnectionChecker>(
      () => registerModule.dataConnectionChecker());
  g.registerFactory<NetworkInfo>(
      () => NetworkInfoImpl(g<DataConnectionChecker>()));
  g.registerFactory<ProgressBloc>(() => ProgressBloc());
  g.registerFactory<SignInFormBloc>(() => SignInFormBloc(g<AuthFacade>()));
  g.registerFactory<AuthBloc>(() => AuthBloc(g<AuthFacade>()));
  g.registerFactory<LessonBloc>(() => LessonBloc(g<LessonFacade>()));

  //Register test Dependencies --------
  if (environment == 'test') {
    g.registerLazySingleton<AuthFacade>(() => TestAuthRepository());
    g.registerLazySingleton<LessonFacade>(() => TestLessonRepository());
    g.registerLazySingleton<LocalLessonDataSource>(() =>
        TestLocalLessonDataSourceImpl(g<Box<dynamic>>(), g<Box<dynamic>>()));
  }

  //Register prod Dependencies --------
  if (environment == 'prod') {
    g.registerLazySingleton<LocalAuthDataSource>(() => LocalAuthDataSourceImpl(
          g<Box<dynamic>>(),
          g<Box<dynamic>>(),
          g<Box<dynamic>>(),
        ));
    g.registerLazySingleton<LocalLessonDataSource>(
        () => LocalLessonDataSourceImpl(g<Box<dynamic>>(), g<Box<dynamic>>()));
    g.registerLazySingleton<RemoteAuthDataSource>(
        () => RemoteAuthDataSourceImpl(g<Api>()));
    g.registerFactory<RemoteLessonDataSource>(
        () => RemoteLessonDataSourceImpl(g<Api>()));
    g.registerFactory<AuthFacade>(() => AuthRepository(
          g<LocalAuthDataSource>(),
          g<RemoteAuthDataSource>(),
          g<NetworkInfo>(),
        ));
    g.registerLazySingleton<LessonFacade>(() => LessonRepository(
          networkInfo: g<NetworkInfo>(),
          localData: g<LocalLessonDataSource>(),
          remoteData: g<RemoteLessonDataSource>(),
        ));
  }
}

class _$RegisterModule extends RegisterModule {}
