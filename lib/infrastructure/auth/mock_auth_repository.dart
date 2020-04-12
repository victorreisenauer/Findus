import 'package:mockito/mockito.dart';
import 'package:lrs_app_v3/domain/auth/i_auth_facade.dart';


class MockApiAuthRepository extends Mock implements IAuthFacade {}

IAuthFacade mockApiAuthRepo = MockApiAuthRepository();