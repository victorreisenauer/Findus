import 'dart:convert';

import 'package:kt_dart/collection.dart';

import 'package:lrs_app_v3/domain/lesson/exercise.dart';
import 'package:lrs_app_v3/domain/core/value_objects.dart';
import 'package:lrs_app_v3/domain/lesson/value_objects.dart';
import 'samples_generator.dart';
import 'package:lrs_app_v3/infrastructure/lesson/models/exercise_model.dart';

class SampleExerciseGenerator implements SamplesGenerator {
  final List jsonIds = ['0001', '0002', '0003', '0004'];
  final List<String> jsonTypes = [
    'sampleType1',
    'sampleType2',
    'sampleType3',
    'sampleType4'
  ];
  final List<Map> jsonData = [
    {
      "1": "somedata",
      "2": "blabla",
      "3": ["list", "spam"]
    },
    {
      "1": "someotherdata",
      "2": [1, 2, 3, 5],
      "3": {"3.1": "and eggs"}
    }
  ];

  String getSampleEncodedJson() =>
      jsonEncode({'id': jsonIds[0], 'type': jsonTypes[0], 'data': jsonData[1]});

  List getSampleSerializableList() => [
        {'id': jsonIds[0], 'type': jsonTypes[0], 'data': jsonData[0]},
        {'id': jsonIds[1], 'type': jsonTypes[1], 'data': jsonData[1]}
      ];

  Map getSampleDecodedJson() => jsonDecode(getSampleEncodedJson());

  ExerciseModel getSampleObjectModel() =>
      ExerciseModel.fromJson(jsonDecode(getSampleEncodedJson()));

  Exercise getSampleObject() => getSampleObjectModel().toDomain();

  ObjectList<Exercise> getSampleObjectList() =>
      ObjectList([getSampleObject(), getSampleObject()].toImmutableList());
}
