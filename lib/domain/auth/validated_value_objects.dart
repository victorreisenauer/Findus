import 'package:meta/meta.dart';
import 'package:dartz/dartz.dart';

import 'package:lrs_app_v3/domain/core/failures.dart';
import 'package:lrs_app_v3/domain/core/value_objects_barrel.dart';

@immutable
class EmailAddress extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory EmailAddress(String input) {
    assert(input != null);
    return EmailAddress._(right(input));
    //return EmailAddress._(
    //  validateEmailAddress(input),
    //);
  }

  const EmailAddress._(this.value);

  factory EmailAddress.empty() => EmailAddress._(Right(''));
}

@immutable
class Password extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Password(String input) {
    assert(input != null);
    return Password._(right(input));
  }

  const Password._(this.value);
}
