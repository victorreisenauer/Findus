import 'package:dartz/dartz.dart';
import 'package:lrs_app_v3/domain/lesson/lesson_barrel.dart';
import 'package:lrs_app_v3/domain/core/value_objects.dart';

abstract class LessonFacade {
  Either<LessonFailure, Stream<UniqueId>> getUserLessonIds();
  Future<Either<LessonFailure, Lesson>> getLessonById(UniqueId id);
  Future<void> update();
  Future<void> saveResult(LessonResult result);
}
