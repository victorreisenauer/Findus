import 'package:lrs_app_v3/domain/auth/value_objects.dart';

void main() {
  f();
}


f() {
  final email = EmailAddress('hello@hello.com');
  final shortPassword = Password('damn');
  final longPassword = Password('damnnnnn');

  print(email.value);
  print(shortPassword.value);
  print(longPassword.value);
}