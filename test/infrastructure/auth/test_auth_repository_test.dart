import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:lrs_app_v3/domain/auth/value_objects.dart';
import '../../../lib/infrastructure/auth/test_auth_repository.dart';
import 'package:lrs_app_v3/domain/auth/user.dart';

main() {
  TestAuthRepository testRepo = TestAuthRepository();

  final EmailAddress validTestEmail = EmailAddress("testUser@test.com");
  final Password validTestPassword = Password("testUser");

  test('test if getSignedInUser returns null if no user is connected', () async {
    var user = await testRepo.getSignedInUser();
    expect(user.fold( 
      () => unit, 
      (u) => u ),
      unit);    
  });
  
  test('test if getSignedInUser returns user if a user is connected', () async {

    testRepo.signInWithEmailAndPassword(emailAddress: validTestEmail , password: validTestPassword);
    var user = await testRepo.getSignedInUser();
    expect(user.fold(
      () => unit,
      (u) => u ),
      isA<User>()
      );
  });
}