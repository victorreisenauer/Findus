import 'dart:convert';
import 'package:lrs_app_v3/infrastructure/sample_data/sample_lesson.dart';
import 'package:lrs_app_v3/infrastructure/lesson/models/lesson_model.dart';
import 'package:lrs_app_v3/domain/lesson/lesson.dart';

main() {
  // exercise model builds correctly from json
  // ids can change because app uses own internal ids
  SampleLessonGenerator sampler = SampleLessonGenerator();

  Map json = jsonDecode(sampler.getSampleEncodedJson());
  LessonModel model = LessonModel.fromJson(json);
  // lesson builds correctly from lessonModel
  Lesson lesson = model.toDomain();
  // rebuilds correctly into json
  LessonModel rebuiltModel = LessonModel.fromDomain(lesson);
  String rebuiltJson = jsonEncode(rebuiltModel);
  //print(rebuiltJson);
  // ids can change because server uses internal ids
}
