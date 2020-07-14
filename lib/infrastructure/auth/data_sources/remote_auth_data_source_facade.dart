import "package:meta/meta.dart";

import "../models/user_model.dart";

/// RemoteAuthDataSource handles all api interaction related to
/// authentication.
abstract class RemoteAuthDataSourceFacade {
  Future<UserModel> getUser();
  Future<void> signOut();
  Future<void> signInWithEmailAndPassword({@required String emailAddress, @required String password});
  Future<void> signUpWithEmailAndPassword({@required String emailAddress, @required String password});
}
