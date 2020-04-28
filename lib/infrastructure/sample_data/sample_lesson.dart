import 'package:kt_dart/collection.dart';
import 'dart:convert';

import 'package:lrs_app_v3/domain/lesson/lesson_barrel.dart';
import 'package:lrs_app_v3/domain/core/value_objects.dart';
import 'sample_exercise.dart';
import 'samples_generator.dart';

class SampleLessonGenerator implements SamplesGenerator {
  final SampleExerciseGenerator _exerciseGenerator = SampleExerciseGenerator();
  final List<String> jsonIds = ['0001', '0002', '0003', '0004'];
  List<Lesson> _currentLessonList;
  UniqueId sampleId = UniqueId();

  String getSampleEncodedJson() => jsonEncode({
        'id': jsonIds[0],
        'exerciseList': _exerciseGenerator.getSampleSerializableList(),
      });

  Map getSampleDecodedJson() => jsonDecode(getSampleEncodedJson());

  Lesson getSampleObject() => Lesson(
        exerciseList: _exerciseGenerator.getSampleObjectList(),
        id: sampleId,
      );

  ObjectList<Lesson> getSampleObjectList() {
    _currentLessonList = [
      getSampleObject(),
      getSampleObject(),
      getSampleObject()
    ];
    return ObjectList(_currentLessonList.toImmutableList());
  }

  List<UniqueId> getSampleObjectListIds() {
    getSampleObjectList();
    List<UniqueId> _ids = [];
    for (Lesson lesson in _currentLessonList) {
      _ids.add(lesson.id);
    }
    return _ids;
  }

  LessonFailure getSampleFailure() => LessonFailure.unexpected();
}
