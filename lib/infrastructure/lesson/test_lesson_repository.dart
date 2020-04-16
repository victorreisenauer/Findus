import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import 'package:lrs_app_v3/domain/lesson/value_objects.dart';
import 'package:lrs_app_v3/domain/lesson/lesson.dart';
import 'package:lrs_app_v3/domain/lesson/lesson_failure.dart';
import 'package:lrs_app_v3/domain/lesson/i_lesson_facade.dart';
import 'package:lrs_app_v3/domain/core/value_objects.dart';
import '../sample_data/sample_lesson.dart';


@RegisterAs(ILessonFacade, env: Environment.test)
@lazySingleton
class TestLessonRepository implements ILessonFacade {

  Future<Either<LessonFailure, Lesson>> getLessonById(UniqueId id) async {
    return right(sampleLesson1);
  }

  Future<Either<LessonFailure, LessonList>> getUserLessons() async {
    return right(sampleLessonList);
  }
}