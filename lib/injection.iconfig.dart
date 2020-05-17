// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:lrs_data_client/src/api.dart';
import 'package:lrs_app_v3/injection.dart';
import 'package:lrs_app_v3/infrastructure/core/boxes.dart';
import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:lrs_app_v3/infrastructure/auth/firebase_auth/firebase_user_mapper.dart';
import 'package:lrs_app_v3/infrastructure/lesson/lesson_repository.dart';
import 'package:lrs_app_v3/domain/lesson/lesson_facade.dart';
import 'package:lrs_app_v3/infrastructure/auth/api_auth/data_sources/local_auth_data_source.dart';
import 'package:lrs_app_v3/infrastructure/lesson/data_sources/local_lesson_data_source.dart';
import 'package:lrs_app_v3/infrastructure/core/network_info.dart';
import 'package:lrs_app_v3/application/lesson/progress/progress_bloc.dart';
import 'package:lrs_app_v3/infrastructure/auth/api_auth/data_sources/remote_auth_data_source.dart';
import 'package:lrs_app_v3/infrastructure/lesson/data_sources/remote_lesson_data_source.dart';
import 'package:lrs_app_v3/infrastructure/auth/firebase_auth/firebase_auth_repository.dart';
import 'package:lrs_app_v3/domain/auth/auth_facade.dart';
import 'package:lrs_app_v3/application/lesson/lesson_bloc.dart';
import 'package:lrs_app_v3/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:lrs_app_v3/application/auth/auth_bloc.dart';
import 'package:get_it/get_it.dart';

void $initGetIt(GetIt g, {String environment}) {
  final prodModules = _$ProdModules();
  final devModules = _$DevModules();
  final testModules = _$TestModules();
  g.registerFactory<ProgressBloc>(() => ProgressBloc());
  g.registerFactory<LessonBloc>(() => LessonBloc(g<LessonFacade>()));
  g.registerFactory<SignInFormBloc>(() => SignInFormBloc(g<AuthFacade>()));
  g.registerFactory<AuthBloc>(() => AuthBloc(g<AuthFacade>()));

  //Register prod Dependencies --------
  if (environment == 'prod') {
    g.registerLazySingleton<Api>(() => prodModules.api);
    g.registerFactory<Boxes>(() => ProdBoxes());
    g.registerFactory<DataConnectionChecker>(
        () => prodModules.dataConnectionChecker());
    g.registerLazySingleton<FirebaseAuth>(() => prodModules.firebaseAuth);
    g.registerFactory<FirebaseUserMapper>(() => FirebaseUserMapperImpl());
    g.registerLazySingleton<LocalAuthDataSource>(
        () => LocalAuthDataSourceImpl(g<Boxes>()));
    g.registerLazySingleton<LocalLessonDataSource>(
        () => LocalLessonDataSourceImpl(g<Boxes>()));
    g.registerFactory<NetworkInfo>(
        () => NetworkInfoImpl(g<DataConnectionChecker>()));
    g.registerLazySingleton<RemoteAuthDataSource>(
        () => RemoteAuthDataSourceImpl(g<Api>()));
    g.registerFactory<RemoteLessonDataSource>(
        () => RemoteLessonDataSourceImpl(g<Api>()));
    g.registerLazySingleton<AuthFacade>(() => FirebaseAuthRepository(
          g<FirebaseAuth>(),
          g<NetworkInfo>(),
          g<FirebaseUserMapper>(),
        ));
    g.registerLazySingleton<LessonFacade>(() => LessonRepository(
          networkInfo: g<NetworkInfo>(),
          localData: g<LocalLessonDataSource>(),
          remoteData: g<RemoteLessonDataSource>(),
        ));
  }

  //Register dev Dependencies --------
  if (environment == 'dev') {
    g.registerLazySingleton<Api>(() => devModules.api);
    g.registerFactory<Boxes>(() => DevBoxes());
    g.registerFactory<DataConnectionChecker>(
        () => devModules.dataConnectionChecker());
    g.registerLazySingleton<FirebaseAuth>(() => devModules.firebaseAuth);
    g.registerFactory<FirebaseUserMapper>(() => DevFirebaseUserMapperImpl());
    g.registerLazySingleton<LocalAuthDataSource>(
        () => DevLocalAuthDataSourceImpl(g<Boxes>()));
    g.registerFactory<NetworkInfo>(
        () => DevNetworkInfoImpl(g<DataConnectionChecker>()));
    g.registerLazySingleton<RemoteAuthDataSource>(
        () => DevRemoteAuthDataSourceImpl(g<Api>()));
  }

  //Register test Dependencies --------
  if (environment == 'test') {
    g.registerLazySingleton<Api>(() => testModules.api);
    g.registerFactory<Boxes>(() => testModules.boxes);
    g.registerFactory<DataConnectionChecker>(
        () => testModules.dataConnectionChecker());
    g.registerLazySingleton<FirebaseAuth>(() => testModules.firebaseAuth);
    g.registerFactory<FirebaseUserMapper>(() => MockFirebaseUserMapperImpl());
    g.registerLazySingleton<LessonFacade>(() => TestLessonRepository());
    g.registerLazySingleton<LocalAuthDataSource>(
        () => MockLocalAuthDataSourceImpl(g<Boxes>()));
    g.registerFactory<NetworkInfo>(() => TestNetworkInfoImpl());
    g.registerLazySingleton<RemoteAuthDataSource>(
        () => TestRemoteAuthDataSourceImpl());
  }
}

class _$ProdModules extends ProdModules {}

class _$DevModules extends DevModules {}

class _$TestModules extends TestModules {}
