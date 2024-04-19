import "dart:async";

import "package:bloc/bloc.dart";
import "package:freezed_annotation/freezed_annotation.dart";
import "package:injectable/injectable.dart";
import "package:meta/meta.dart";

import "../../domain/auth/auth_facade.dart";
import "../../domain/auth/user/user.dart";

part "auth_bloc.freezed.dart";
part "auth_event.dart";
part "auth_state.dart";

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthFacade _authFacade;

  AuthBloc(this._authFacade) : super(AuthState.initial());

  @override
  Stream<AuthState> mapEventToState(AuthEvent event) async* {
    yield* event.map(
      authCheckRequested: (e) async* {
        final userOption = await _authFacade.getUser();
        yield userOption.fold(
          (failure) => AuthState.unauthenticated(),
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
