import 'package:flutter_test/flutter_test.dart';
import 'package:dartz/dartz.dart';
import 'package:lrs_app_v3/infrastructure/core/boxes.dart';
import 'package:lrs_app_v3/injection.dart';
import 'package:hive/hive.dart';

import 'package:lrs_app_v3/domain/auth/auth_barrel.dart';

main() async {
  // setup
  Hive.init('/Users/victo/OneDrive/projects/lrs_app/db');
  configureInjection(Env.prod);
  await ProdBoxes.sessionBox.then((box) => box.clear());
  await ProdBoxes.sessionBox.then((box) => box.clear());
  await ProdBoxes.sessionBox.then((box) => box.clear());

  // vars
  AuthFacade authFacade = getIt<AuthFacade>();
  // once user opens application for first time, an empty user is fetched
  // no matter if app is used online or offline
  Either<AuthFailure, User> failureOrUser = await authFacade.getUser();

  test('empty user gets fetched', () {
    var response = failureOrUser.fold((f) => null, (user) => user);
    expect(response, isA<User>());
  });
}
