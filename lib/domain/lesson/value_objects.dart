import 'package:dartz/dartz.dart';
import '../core/value_objects.dart';
import '../core/failures.dart';
import '../core/value_validators.dart';
import '../lesson/exercise.dart';
import '../lesson/lesson.dart';

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
  // TODO: think of how ExerciseData ValueObject should look
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




// TODO: needs fixing
class ExerciseList extends ValueObject {
  // get initial
  // get next
  // validations
  @override
  final Either<ValueFailure<List>, List> value;

  factory ExerciseList(List input) {
    assert(input != null);
    return ExerciseList._(
      right(input)
    );
  }

  const ExerciseList._(this.value);
}


class LessonList extends ValueObject {
  // get initial
  // get next
  // validations
  @override
  final Either<ValueFailure<List>, List<Lesson>> value;

  factory LessonList(List<Lesson> input) {
    assert(input != null);
    return LessonList._(
      right(input)
    );
  }

  const LessonList._(this.value);
}