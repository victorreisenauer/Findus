import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import 'package:lrs_app_v3/domain/lesson/lesson_barrel.dart';
import 'package:lrs_app_v3/domain/core/value_objects_barrel.dart';
import 'package:lrs_app_v3/infrastructure/sample_data/sample_lesson.dart';

@RegisterAs(LessonFacade, env: Environment.test)
@lazySingleton
class TestLessonRepository implements LessonFacade {
  final SampleLessonGenerator sampler = SampleLessonGenerator();
  Either<LessonFailure, Stream<UniqueId>> getUserLessonIds() {}
  Future<Either<LessonFailure, Lesson>> getLessonById(UniqueId id) {}
  Future<void> update() {}
  Future<void> saveResult(LessonResult result) {}
}
