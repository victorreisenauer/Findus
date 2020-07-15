import "package:dartz/dartz.dart";

import "../../core/failures.dart";
import "../../core/value_objects.dart";

class ExerciseResultData extends ValueObject {
  @override
  final Either<ValueFailure<Map>, Map> value;

  factory ExerciseResultData(Map input) {
    assert(input != null);
    return ExerciseResultData._(Right(input));
  }

  const ExerciseResultData._(this.value);
}
