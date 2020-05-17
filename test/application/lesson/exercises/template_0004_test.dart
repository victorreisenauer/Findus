import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:lrs_app_v3/application/lesson/exercise/exercises/template_0004/template0004_bloc.dart';
import 'package:lrs_app_v3/domain/lesson/exercise/validated_value_objects.dart';

main() {
  group("Template0004Bloc => ", () {
    Map dataMap = {
      "1": "Autobahn",
      "2": ["1", "3", "2", "4"],
      "3": 3,
    };
    ExerciseData data = ExerciseData(dataMap);

    blocTest(
      'emits [] when nothing is added',
      build: () async => Template0004Bloc(exerciseData: data),
      expect: [],
    );

    blocTest('emits ShowExercise() when StartExercise is added',
        build: () async => Template0004Bloc(exerciseData: data),
        act: (bloc) => bloc.add(Template0004Event.startExercise()),
        expect: [
          Template0004State.showExercise("Autobahn", ["1", "3", "2", "4"],
              [Colors.white, Colors.white, Colors.white, Colors.white])
        ]);
  });
}
