import 'package:dartz/dartz.dart';
import 'package:lrs_app_v3/domain/lesson/lesson_failure.dart';
import 'package:lrs_app_v3/domain/lesson/lesson.dart';


abstract class ILessonFacade {
  Future<Either<LessonFailure, Lesson>> getLessonById(int id);
  Future<Either<LessonFailure, List<Lesson>>> getUserLessons();
}