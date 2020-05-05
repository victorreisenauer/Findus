import 'package:dartz/dartz.dart';

import 'package:lrs_app_v3/domain/core/failures.dart';

import 'package:lrs_app_v3/domain/core/value_objects_barrel.dart';

class ExerciseResultData extends ValueObject {
  @override
  final Either<ValueFailure<Map>, Map> value;

  factory ExerciseResultData(Map input) {
    assert(input != null);
    return ExerciseResultData._(Right(input));
  }

  const ExerciseResultData._(this.value);
}
