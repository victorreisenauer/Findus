// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:lrs_data_client/src/api.dart';
import 'package:lrs_app_v3/injection.dart';
import 'package:lrs_app_v3/infrastructure/auth/auth_repository.dart';
import 'package:lrs_app_v3/domain/auth/auth_facade.dart';
import 'package:lrs_app_v3/infrastructure/core/boxes.dart';
import 'package:cloud_functions/cloud_functions.dart';
import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:lrs_app_v3/infrastructure/auth/data_sources/firebase/firebase_user_mapper.dart';
import 'package:lrs_app_v3/infrastructure/lesson/lesson_repository.dart';
import 'package:lrs_app_v3/domain/lesson/lesson_facade.dart';
import 'package:lrs_app_v3/infrastructure/auth/data_sources/core/local_auth_data_source.dart';
import 'package:lrs_app_v3/infrastructure/auth/data_sources/local_auth_data_source_facade.dart';
import 'package:lrs_app_v3/infrastructure/lesson/data_sources/core/local_lesson_data_source.dart';
import 'package:lrs_app_v3/infrastructure/lesson/data_sources/local_lesson_data_source_facade.dart';
import 'package:lrs_app_v3/infrastructure/core/network_info.dart';
import 'package:lrs_app_v3/application/lesson/progress/progress_bloc.dart';
import 'package:lrs_app_v3/infrastructure/auth/data_sources/firebase/remote_firebase_auth_data_source.dart';
import 'package:lrs_app_v3/infrastructure/auth/data_sources/remote_auth_data_source_facade.dart';
import 'package:lrs_app_v3/infrastructure/lesson/data_sources/api/remote_lesson_data_source.dart';
import 'package:lrs_app_v3/infrastructure/lesson/data_sources/remote_lesson_data_source_facade.dart';
import 'package:lrs_app_v3/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:lrs_app_v3/application/auth/auth_bloc.dart';
import 'package:lrs_app_v3/application/lesson/lesson_bloc.dart';
import 'package:get_it/get_it.dart';

void $initGetIt(GetIt g, {String environment}) {
  final prodModules = _$ProdModules();
  final testModules = _$TestModules();
  final devModules = _$DevModules();
  g.registerFactory<ProgressBloc>(() => ProgressBloc());
  g.registerFactory<SignInFormBloc>(() => SignInFormBloc(g<AuthFacade>()));
  g.registerFactory<AuthBloc>(() => AuthBloc(g<AuthFacade>()));
  g.registerFactory<LessonBloc>(() => LessonBloc(g<LessonFacade>()));

  //Register prod Dependencies --------
  if (environment == 'prod') {
    g.registerLazySingleton<Api>(() => prodModules.api);
    g.registerFactory<Boxes>(() => ProdBoxes());
    g.registerLazySingleton<CloudFunctions>(() => prodModules.httpscallable);
    g.registerFactory<DataConnectionChecker>(
        () => prodModules.dataConnectionChecker());
    g.registerLazySingleton<FirebaseAuth>(() => prodModules.firebaseAuth);
    g.registerFactory<FirebaseUserMapper>(() => FirebaseUserMapperImpl());
    g.registerLazySingleton<LocalAuthDataSourceFacade>(
        () => LocalAuthDataSource(g<Boxes>()));
    g.registerLazySingleton<LocalLessonDataSourceFacade>(
        () => LocalLessonDataSourceImpl(g<Boxes>()));
    g.registerFactory<NetworkInfo>(
        () => NetworkInfoImpl(g<DataConnectionChecker>()));
    g.registerLazySingleton<RemoteAuthDataSourceFacade>(() =>
        RemoteFirebaseAuthDataSource(
            g<FirebaseAuth>(), g<FirebaseUserMapper>()));
    g.registerFactory<RemoteLessonDataSourceFacade>(
        () => RemoteLessonDataSourceImpl(g<Api>()));
    g.registerLazySingleton<AuthFacade>(() => AuthRepository(
          g<LocalAuthDataSourceFacade>(),
          g<RemoteAuthDataSourceFacade>(),
          g<NetworkInfo>(),
        ));
    g.registerLazySingleton<LessonFacade>(() => LessonRepository(
          networkInfo: g<NetworkInfo>(),
          localData: g<LocalLessonDataSourceFacade>(),
          remoteData: g<RemoteLessonDataSourceFacade>(),
        ));
  }

  //Register test Dependencies --------
  if (environment == 'test') {
    g.registerLazySingleton<Api>(() => testModules.api);
    g.registerLazySingleton<AuthFacade>(() => MockAuthRepository());
    g.registerFactory<Boxes>(() => testModules.boxes);
    g.registerLazySingleton<CloudFunctions>(() => testModules.httpscallable());
    g.registerFactory<DataConnectionChecker>(
        () => testModules.dataConnectionChecker());
    g.registerLazySingleton<FirebaseAuth>(() => testModules.firebaseAuth);
    g.registerFactory<FirebaseUserMapper>(() => MockFirebaseUserMapperImpl());
    g.registerLazySingleton<LessonFacade>(() => TestLessonRepository());
    g.registerLazySingleton<LocalAuthDataSourceFacade>(
        () => MockLocalAuthDataSourceImpl(g<Boxes>()));
    g.registerFactory<NetworkInfo>(() => TestNetworkInfoImpl());
    g.registerLazySingleton<RemoteAuthDataSourceFacade>(
        () => TestRemoteFirebaseLessonDataSource());
  }

  //Register dev Dependencies --------
  if (environment == 'dev') {
    g.registerLazySingleton<Api>(() => devModules.api);
    g.registerFactory<Boxes>(() => DevBoxes());
    g.registerLazySingleton<CloudFunctions>(() => devModules.httpscallable);
    g.registerFactory<DataConnectionChecker>(
        () => devModules.dataConnectionChecker());
    g.registerLazySingleton<FirebaseAuth>(() => devModules.firebaseAuth);
    g.registerFactory<FirebaseUserMapper>(() => DevFirebaseUserMapperImpl());
    g.registerLazySingleton<LocalAuthDataSourceFacade>(
        () => DevLocalAuthDataSourceImpl(g<Boxes>()));
    g.registerFactory<NetworkInfo>(
        () => DevNetworkInfoImpl(g<DataConnectionChecker>()));
    g.registerLazySingleton<RemoteAuthDataSourceFacade>(() =>
        DevRemoteFirebaseLessonDataSource(
            g<FirebaseAuth>(), g<FirebaseUserMapper>()));
    g.registerLazySingleton<AuthFacade>(() => DevAuthRepository(
          g<LocalAuthDataSourceFacade>(),
          g<RemoteAuthDataSourceFacade>(),
          g<NetworkInfo>(),
        ));
  }
}

class _$ProdModules extends ProdModules {}

class _$TestModules extends TestModules {}

class _$DevModules extends DevModules {}
