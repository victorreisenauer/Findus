import 'package:dartz/dartz.dart';
import 'package:lrs_app_v3/domain/core/value_objects.dart';
import 'package:lrs_app_v3/domain/lesson/lesson_barrel.dart';

abstract class LessonFacade {
  Future<Either<LessonFailure, Stream<UniqueId>>> getLessonIdsForUser();
  Future<Either<LessonFailure, Lesson>> getLessonById(UniqueId lessonId);
  Future<Option<LessonFailure>> update();
  Future<Option<LessonFailure>> saveResult(LessonResult result);
}
