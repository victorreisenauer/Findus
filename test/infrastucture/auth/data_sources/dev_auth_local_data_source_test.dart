import 'package:flutter_test/flutter_test.dart';
import 'package:hive/hive.dart';
import 'package:lrs_app_v3/infrastructure/auth/auth_barrel.dart';
import 'package:lrs_app_v3/infrastructure/core/boxes.dart';
import 'package:lrs_app_v3/injection.dart';

main() {
  configureInjection(Env.dev);
  Hive.init('/Users/victo/OneDrive/projects/lrs_app/db');

  LocalAuthDataSource devAuthRepo = getIt<LocalAuthDataSource>();
  Boxes boxes = getIt<Boxes>();
  group('[Env: dev] LocalAuthDataSource =>', () {
    group('on', () {
      test('', () async {
        Box box = await boxes.lessonBox;
        box.put("0001", "testing");
        print(box.get("0001"));
      });
    });
  });
}
