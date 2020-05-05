import 'package:lrs_app_v3/infrastructure/lesson/lesson_barrel.dart';
import 'package:lrs_app_v3/domain/lesson/lesson_barrel.dart';

main() {
  Map<String, dynamic> sample_exercise_result_json = {
    "id": "0001",
    "data": {
      "total_time_spent": 19,
      "durations_listened": [14],
      "answers_given": [19, 21],
      "wrong_answers": [1]
    }
  };

  Map<String, dynamic> sample_lesson_result_json = {
    "id": "0001",
    "resultsList": [
      sample_exercise_result_json,
      sample_exercise_result_json,
      sample_exercise_result_json,
    ]
  };

  LessonResultModel model =
      LessonResultModel.fromJson(sample_lesson_result_json);
  print(model);
  LessonResult resultObj = model.toDomain();
  print(resultObj);
  LessonResultModel rebuiltModel = LessonResultModel.fromDomain(resultObj);
  print(rebuiltModel);
  print(rebuiltModel == model);
}
