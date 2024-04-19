import "package:dartz/dartz.dart";

import "../core/value_objects.dart";
import "lesson_barrel.dart";

abstract class LessonFacade {
  Future<Either<LessonFailure, Stream<UniqueId>>> getLessonIdsForUser();
  Future<Either<LessonFailure, Lesson>> getLessonById(UniqueId lessonId);
  Future<Option<LessonFailure>> update();
  Future<Option<LessonFailure>> saveResult(LessonResult result);
}
