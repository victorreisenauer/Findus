import 'dart:convert';
import 'package:flutter_test/flutter_test.dart';
import 'package:lrs_app_v3/infrastructure/sample_data/sample_exercise.dart';
import 'package:lrs_app_v3/infrastructure/lesson/models/exercise_model.dart';
import 'package:lrs_app_v3/domain/lesson/exercise.dart';

main() {
  // exercise model builds correctly from json
  SampleExerciseGenerator sampler = SampleExerciseGenerator();
  print(sampler.getSampleEncodedJson());
  print(sampler.getSampleSerializableList());

  Map json = jsonDecode(sampler.getSampleEncodedJson());
  ExerciseModel model = ExerciseModel.fromJson(json);
  print(model);

  // convert to exercise
  Exercise exercise = model.toDomain();
  print(exercise);

  // convert back to model
  ExerciseModel rebuiltModel = ExerciseModel.fromDomain(exercise);
  print(rebuiltModel);
}
