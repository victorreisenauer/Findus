import 'package:dartz/dartz.dart';
import '../core/value_objects.dart';
import '../core/failures.dart';
import '../core/value_validators.dart';

class ExerciseType extends ValueObject<String>{
  @override
  final Either<ValueFailure<String>, String> value;

  factory ExerciseType(String input) {
    assert(input != null);
    return ExerciseType._(
      validateStringNotEmpty(input)
      .flatMap(validateSingleLine),
    );
  }

  const ExerciseType._(this.value);
}



class ExerciseData extends ValueObject {
  @override
  final Either<ValueFailure<Map>, Map> value;

  factory ExerciseData(Map input) {
    assert(input != null);
    return ExerciseData._(
      validateExerciseData(input)
      );
  }

  const ExerciseData._(this.value);

}



class ExerciseList<Exercise> extends ValueObject {
  // get initial
  // get next
  // validations
  @override
  final Either<ValueFailure<List>, List> value;

  factory ExerciseList(List input) {
    assert(input != null);
    return ExerciseList._(
      validateExerciseList(input)
    );
  }

  const ExerciseList._(this.value);
}
