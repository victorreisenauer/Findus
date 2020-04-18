import 'package:kt_dart/collection.dart';
import 'dart:convert';

import 'package:lrs_app_v3/domain/lesson/lesson.dart';
import 'package:lrs_app_v3/domain/lesson/exercise.dart';
import 'package:lrs_app_v3/domain/lesson/value_objects.dart';
import 'package:lrs_app_v3/domain/core/value_objects.dart';
import 'package:lrs_app_v3/domain/lesson/lesson_failure.dart';
import 'sample_exercise.dart';
import 'samples_generator.dart';

class SampleLessonGenerator implements SamplesGenerator {
  final SampleExerciseGenerator _exerciseGenerator = SampleExerciseGenerator();
  final List<String> jsonIds = ['0001', '0002', '0003', '0004'];

  String getSampleEncodedJson() => jsonEncode({
        'id': jsonIds[0],
        'exerciseList': _exerciseGenerator.getSampleSerializableList(),
      });

  Map getSampleDecodedJson() => jsonDecode(getSampleEncodedJson());

  Lesson getSampleObject() => Lesson(
        exerciseList: _exerciseGenerator.getSampleObjectList(),
        id: UniqueId(),
      );

  ObjectList<Lesson> getSampleObjectList() =>
      ObjectList([getSampleObject(), getSampleObject()].toImmutableList());

  LessonFailure getSampleFailure() => LessonFailure.unexpected();
}
