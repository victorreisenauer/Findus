import 'package:dartz/dartz.dart';

import 'package:lrs_app_v3/domain/core/value_objects.dart';
import 'package:lrs_app_v3/domain/core/failures.dart';
import 'package:lrs_app_v3/domain/core/validators.dart';

class ExerciseType extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory ExerciseType(String input) {
    assert(input != null);
    return ExerciseType._(
      validateStringNotEmpty(input).flatMap(validateSingleLine),
    );
  }

  const ExerciseType._(this.value);
}

class ExerciseData extends ValueObject {
  // TODO: think of how ExerciseData ValueObject should look
  @override
  final Either<ValueFailure<Map>, Map> value;

  factory ExerciseData(Map input) {
    assert(input != null);
    return ExerciseData._(validateExerciseData(input));
  }

  const ExerciseData._(this.value);
}
