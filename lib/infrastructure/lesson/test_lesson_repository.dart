import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import 'package:lrs_app_v3/domain/lesson/value_objects.dart';
import 'package:lrs_app_v3/domain/lesson/lesson.dart';
import 'package:lrs_app_v3/domain/lesson/lesson_failure.dart';
import 'package:lrs_app_v3/domain/lesson/i_lesson_facade.dart';
import 'package:lrs_app_v3/domain/core/value_objects.dart';
import 'package:lrs_app_v3/infrastructure/sample_data/sample_lesson.dart';

@RegisterAs(ILessonFacade, env: Environment.test)
@lazySingleton
class TestLessonRepository implements ILessonFacade {
  final SampleLessonGenerator sampler = SampleLessonGenerator();

  Future<Either<LessonFailure, Lesson>> getLessonById(UniqueId id) async {
    return right(sampler.getSampleObject());
  }

  Stream<Either<LessonFailure, List<UniqueId>>> getUserLessonIds() async* {
    int i = 0;
    while (i < 4) {
      i++;
      yield right(sampler.getSampleObjectListIds());
    }
  }

  Future<Either<LessonFailure, Unit>> saveResults(
      ObjectList<Object> results) async {
    return left(LessonFailure.unexpected());
  }
}
