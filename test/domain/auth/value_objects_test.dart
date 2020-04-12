import 'package:lrs_app_v3/domain/auth/value_objects.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {

  group( 'All unit tests for EmailAddress ValueObject =>', () {
    final String emptyInput = '';
    final String missingAtInput = 'test.com';
    final String missingDomainInput = 'test@.com';
    final String validInput = 'test@gmail.com';
    
    test('return ValueFailures if inputs are empty, missing an @, or missing a domain', () async {
      var failure1 = EmailAddress(emptyInput).value;   
      var failure2 = EmailAddress(missingAtInput).value; 
      var failure3 = EmailAddress(missingDomainInput).value;
      var valid = EmailAddress(validInput).value;
      expect(failure1.fold(
        (f) => f.failedValue,
        (_) => null), 
        emptyInput);
      expect(failure2.fold(
        (f) => f.failedValue,
        (_) => null), 
        missingAtInput);
      expect(failure3.fold(
        (f) => f.failedValue,
        (_) => null), 
        missingDomainInput);
      expect(valid.fold(
        (f) => null,
        (output) => output), 
        validInput);
    });
  });

  group( 'Unit tests for Password ValueObject =>', () {
  
  final String emptyPassword = '';
  final String shortPassword = 'test';
  final String validPassword = 'Test%Password123';
  test('return ValueFailures password is empty', () async {
    var failure1 = EmailAddress(emptyPassword).value;   
    expect(failure1.fold(
      (f) => f.failedValue,
      (_) => null), 
      emptyPassword);
  });
  test('return ValueFailures password is shorter than 8 chars', () async {
    var failure1 = EmailAddress(shortPassword).value;   
    expect(failure1.fold(
      (f) => f.failedValue,
      (_) => null), 
      shortPassword);
  });
    
  // TODO: Dont work with Passwords directly
  test('return password  if password is valid', () async {
    var valid = EmailAddress(validPassword).value;   
    expect(valid.fold(
      (f) => null,
      (password) => password), 
      validPassword);
  });
});
}