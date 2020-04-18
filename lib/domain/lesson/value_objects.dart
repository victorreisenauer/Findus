import 'package:dartz/dartz.dart';
import 'package:kt_dart/collection.dart';

import '../core/value_objects.dart';
import '../core/failures.dart';
import '../core/value_validators.dart';
import 'package:lrs_app_v3/domain/lesson/exercise.dart';
import '../lesson/lesson.dart';
import 'package:lrs_app_v3/infrastructure/lesson/models/exercise_model.dart';

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

class ObjectList<T> extends ValueObject<KtList<T>> {
  @override
  final Either<ValueFailure<KtList<T>>, KtList<T>> value;

  factory ObjectList(KtList<T> input) {
    assert(input != null);
    return ObjectList._(Right(input));
  }

  const ObjectList._(this.value);

  int get length => value.getOrElse(() => emptyList()).size;
}
