import 'package:dartz/dartz.dart';
import 'package:lrs_app_v3/domain/lesson/lesson_failure.dart';
import 'package:lrs_app_v3/domain/lesson/lesson.dart';
import 'package:lrs_app_v3/domain/lesson/value_objects.dart';
import 'package:lrs_app_v3/domain/core/value_objects.dart';

abstract class ILessonFacade {
  Stream<Either<LessonFailure, List<UniqueId>>> getUserLessonIds();
  //^now sends a list of available ids as long as stream is active. Not optimal
  // should send Ids one at a time, only yielding the lessons that are currently
  // visible to the user.
  Future<Either<LessonFailure, Lesson>> getLessonById(UniqueId id);
  Future<Either<LessonFailure, Unit>> saveResults(ObjectList<Object> results);
  // ^is a stream maybe better?
}
