import 'package:flutter_test/flutter_test.dart';
import 'package:hive/hive.dart';
import 'package:lrs_app_v3/infrastructure/auth/auth_barrel.dart';
import 'package:lrs_app_v3/injection.dart';

main() {
  configureInjection(Env.prod);
  Hive.init('/Users/victo/OneDrive/projects/lrs_app/db');

  LocalAuthDataSource prodAuthRepo = getIt<LocalAuthDataSource>();
  group('[Env: prod] LocalAuthDataSource =>', () {
    group('on', () {
      test('', () {});
    });
  });
}
