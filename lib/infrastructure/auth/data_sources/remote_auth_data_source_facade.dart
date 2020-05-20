import 'package:lrs_app_v3/infrastructure/auth/auth_barrel.dart';
import 'package:meta/meta.dart';

/// RemoteAuthDataSource handles all api interaction related to
/// authentication.
abstract class RemoteAuthDataSourceFacade {
  Future<UserModel> getUser();
  Future<void> signOut();
  Future<void> signInWithEmailAndPassword(
      {@required String emailAddress, @required String password});
  Future<void> signUpWithEmailAndPassword(
      {@required String emailAddress, @required String password});
}
