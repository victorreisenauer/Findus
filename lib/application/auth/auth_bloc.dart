import 'dart:async';
import 'package:injectable/injectable.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:lrs_app_v3/domain/auth/i_auth_facade.dart';
import 'package:lrs_app_v3/domain/auth/user.dart';

part 'auth_event.dart';
part 'auth_state.dart';

part 'auth_bloc.freezed.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IAuthFacade _authFacade;

  AuthBloc(this._authFacade);

  @override
  AuthState get initialState => const AuthState.initial();

  @override
  Stream<AuthState> mapEventToState(AuthEvent event) async* {
    yield* event.map(
      authCheckRequested: (e) async* {
        final userOption = await _authFacade.getSignedInUser();
        yield userOption.fold(
          () => AuthState.unauthenticated(emptyUser: User.empty()),
          (user) => AuthState.authenticated(user),
        );
      },
      signedOut: (e) async* {
        await _authFacade.signOut();
        yield AuthState.unauthenticated(emptyUser: User.empty());
      },
    );
  }
}
