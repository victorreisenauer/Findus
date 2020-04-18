import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:lrs_app_v3/domain/lesson/value_objects.dart';
import 'package:lrs_app_v3/infrastructure/sample_data/sample_exercise.dart';
import 'package:meta/meta.dart';

part 'exercise_1_event.dart';
part 'exercise_1_state.dart';
part 'exercise_1_bloc.freezed.dart';

@injectable
class Exercise_1Bloc extends Bloc<Exercise_1Event, Exercise_1State> {
  Map exerciseData = sampleExerciseForExercise_1_1.data.value.getOrElse(null);

  // Exercise_1Bloc({this.exerciseData});

  @override
  Exercise_1State get initialState => Exercise_1State.initial();

  @override
  Stream<Exercise_1State> mapEventToState(
    Exercise_1Event event,
  ) async* {
    yield* event.map(getExercise: (e) async* {
      yield Exercise_1State.initial();
      List<dynamic> text = List();
      List<dynamic> answers = List();

      int normalListPos = 0;
      int targetListPos = 0;

      List<String> normalList = exerciseData[1];
      List<String> targetList = exerciseData[2];

      (exerciseData[3] as List<int>).forEach((f) {
        if (f == 0) {
          text.add([0, normalList[normalListPos]]);
          normalListPos++;
        }
        if (f == 1) {
          text.add([1, targetList[targetListPos], targetListPos]);
          targetListPos++;
        }
      });

      int answerPos = 0;

      (exerciseData[4] as List<String>).forEach((f) {
        answers.add([f, answerPos]);
        answerPos++;
      });

      print(text);
      print(answers);

      yield Exercise_1State.showExercise(text, answers);
    }, droppedDraggable: (e) {
      print('Hey');
    }, pressedFinish: (e) {
      print('Hey');
    });
  }
}
