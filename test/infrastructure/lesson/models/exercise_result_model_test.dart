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

  ExerciseResultModel model =
      ExerciseResultModel.fromJson(sample_exercise_result_json);
  print(model);
  ExerciseResult resultObj = model.toDomain();
  print(resultObj);
  ExerciseResultModel rebuiltModel = ExerciseResultModel.fromDomain(resultObj);
  print(rebuiltModel);
  print(rebuiltModel == model);
}
