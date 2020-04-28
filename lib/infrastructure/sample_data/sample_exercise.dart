import 'dart:convert';

import 'package:kt_dart/collection.dart';

import 'package:lrs_app_v3/domain/lesson/lesson_barrel.dart';
import 'package:lrs_app_v3/domain/core/value_objects_barrel.dart';
import 'samples_generator.dart';
import 'package:lrs_app_v3/infrastructure/lesson/models/exercise_model.dart';

class SampleExerciseGenerator implements SamplesGenerator {
  final UniqueId sampleId = UniqueId();
  final List jsonIds = ['0001', '0002', '0003', '0004'];
  final List<String> jsonTypes = [
    'sampleType1',
    'sampleType2',
    'sampleType3',
    'sampleType4'
  ];
  final List<Map> jsonData = [
    jerryJsonData,
    {
      "1": "someotherdata",
      "2": [1, 2, 3, 5],
      "3": {"3.1": "and eggs"}
    },
    {
      "1": "someotherdata",
      "2": [1, 2, 3, 5],
      "3": {"3.1": "and eggs"}
    },
  ];

  String getSampleEncodedJson() =>
      jsonEncode({'id': jsonIds[0], 'type': jsonTypes[0], 'data': jsonData[1]});

  String getEncodedJsonForType(String type) {
    for (int i = 0; i <= jsonTypes.length; i++) {
      if (jsonTypes[i] == type) {
        return jsonEncode(
            {'id': jsonIds[i], 'type': jsonTypes[i], 'data': jsonData[i]});
      }
    }
    throw Exception("No sampleExercise of that type was found");
  }

  List getSampleSerializableList() => [
        {'id': jsonIds[0], 'type': jsonTypes[0], 'data': jsonData[0]},
        {'id': jsonIds[1], 'type': jsonTypes[1], 'data': jsonData[1]}
      ];

  Map getSampleDecodedJson() => jsonDecode(getSampleEncodedJson());

  ExerciseModel getSampleObjectModel() =>
      ExerciseModel.fromJson(jsonDecode(getEncodedJsonForType('sampleType1')));

  Exercise getSampleObject() => getSampleObjectModel().toDomain();

  ObjectList<Exercise> getSampleObjectList() =>
      ObjectList([getSampleObject(), getSampleObject()].toImmutableList());
}

Map jerryJsonData = {
  "1": [
    'Renato ',
    'und ',
    'Frederik ',
    'plagt ',
    'die ',
    'Von ',
    'oder ',
    'keine ',
    'Spur. ',
    'Seit ',
    'Stunden ',
    'sitzen ',
    'sie ',
    'schon ',
    'in ',
    'Frederiks ',
    'Zimmer ',
    'und ',
    'warten ',
    'auf ',
    'den ',
    'versprochenen ',
    'Besuch ',
    'einer ',
    'Mitschülerin. ',
    'Die ',
    'heißt ',
    'Susanne, ',
    'ist ',
    '15 ',
    'Jahre ',
    'alt ',
    'und ',
    'geht ',
    'in ',
    'die ',
    '9. ',
    'Klasse. ',
    'Sie ',
    'ist ',
    'schon ',
    'fast ',
    'eine ',
    'Fast ',
    'alle ',
    'Jungen ',
    'aus ',
    'der ',
    'Schule ',
    'wollen ',
    'mit ',
    'Susanne ',
    'befreundet ',
    'sein, ',
    'weil ',
    'sie ',
    'so ',
    'hübsch ',
    'ist. ',
    'Heute ',
    'Morgen ',
    'hat ',
    'Susanne ',
    'auf ',
    'dem ',
    'Schulhof ',
    'vor ',
    'gestrahlt ',
    'und ',
    'Renato ',
    'und ',
    'Frederik ',
    'gefragt, ',
    'ob ',
    'die ',
    'beiden ',
    'mit ',
    'ihr ',
    'am ',
    'Nachmittag ',
    'einen ',
    'Film ',
    'gucken ',
    'wollen. '
  ],
  "2": [
    'Traurig§suffix§. ',
    'Heiter§suffix§ ',
    'Fröhlich§suffix§ ',
    'Schön§suffix§ ',
    'Berühmt§suffix§. ',
    'Freundlich§suffix§ '
  ],
  "3": [
    0,
    0,
    0,
    0,
    0,
    1,
    0,
    1,
    0,
    1,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    1,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    1,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    1,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0
  ],
  "4": ['heit', 'keit'],
  "5": [1, 1, 1, 0, 0, 1]
};
