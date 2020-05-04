import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:hive/hive.dart';

import 'package:lrs_app_v3/injection.dart';
import 'package:lrs_app_v3/infrastructure/auth/auth_barrel.dart';

class MockBox extends Mock implements Box {}

main() {
  group('[Env: test] LocalAuthDataSource => ', () {
    // specifically to test that correct calls and exceptions are called
    final Box testSessionBox = MockBox();
    final Box testUserBox = MockBox();
    final Box testPersonalBox = MockBox();
    final LocalAuthDataSource testLocalData =
        LocalAuthDataSourceImpl(testUserBox, testSessionBox, testPersonalBox);
    group('on cacheUserModel', () {
      test('if successful, UserModel gets cached', () {});
    });
    group('on getUserModel', () {});
    group('on cacheSession', () {});
    group('on getSession', () {});
  });
  group('[Env: prod] LocalAuthDataSource =>', () {
    // tests make sure data is transmitted correctly
    configureInjection(Env.prod);
    final LocalAuthDataSource prodLocalData = getIt<LocalAuthDataSource>();

    test('dependencies can be injected', () {
      expect(prodLocalData != null, true);
    });
    group('on cacheUserModel', () {});
    group('on cacheUserModel', () {});
    group('on cacheUserModel', () {});
    group('on cacheUserModel', () {});
  });
}
