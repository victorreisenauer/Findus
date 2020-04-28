import 'package:dartz/dartz.dart';

import 'package:lrs_app_v3/domain/core/failures.dart';
import 'package:lrs_app_v3/domain/core/value_objects_barrel.dart';

class StringSingleLine extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory StringSingleLine(String input) {
    assert(input != null);
    return StringSingleLine._(
      validateSingleLine(input),
    );
  }

  const StringSingleLine._(this.value);
}
