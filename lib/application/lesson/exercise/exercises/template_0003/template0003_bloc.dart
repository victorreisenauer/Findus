import "dart:async";

import "package:bloc/bloc.dart";
import "package:flutter/foundation.dart";
import "package:flutter/material.dart";
import "package:freezed_annotation/freezed_annotation.dart";
import "package:meta/meta.dart";

import "../../../../../domain/lesson/exercise/validated_value_objects.dart";

part "template0003_bloc.freezed.dart";
part "template0003_event.dart";
part "template0003_state.dart";

class Template0003Bloc extends Bloc<Template0003Event, Template0003State> {
  ExerciseData exerciseData;
  Map exerciseDataMap;
  int currentState = 0;

  Template0003Bloc({@required this.exerciseData}) : super(Template0003State.initial()) {
    exerciseDataMap = exerciseData.value.getOrElse(null);
  }

  @override
  Stream<Template0003State> mapEventToState(
    Template0003Event event,
  ) async* {
    yield* event.map(
      startExercise: (e) async* {
        yield ShowText(exerciseDataMap["1"]);
      },
      centerButtonPressed: (e) async* {
        String text = exerciseDataMap["2"][0];
        var answers = <String>[];
        exerciseDataMap["3"][0].forEach((e) {
          answers.add(e);
        });
        yield ShowQuestion(text, answers);
      },
      answerSelected: (e) async* {
        var colors = <Color>[];
        for (var i = 0; i < exerciseDataMap["3"][currentState].length; i++) {
          colors.add(Colors.white);
        }
        if (e.index == exerciseDataMap["4"][currentState]) {
          colors[e.index] = Colors.greenAccent;
        } else {
          colors[e.index] = Colors.redAccent;
        }
        var answersCorrection = <String>[];
        exerciseDataMap["3"][currentState].forEach((e) {
          answersCorrection.add(e);
        });
        var correction = ShowCorrection(exerciseDataMap["2"][currentState], answersCorrection, colors);
        ShowCorrection correction = ShowCorrection(exerciseDataMap["2"][currentState], answersCorrection, colors);
        print(correction);
        yield correction;
        await Future.delayed(Duration(milliseconds: 1000));
        currentState++;
        if (currentState == exerciseDataMap["4"].length) {
          yield ExerciseFinished();
        } else {
          var answers = <String>[];
          exerciseDataMap["3"][currentState].forEach((e) {
            answers.add(e);
          });
          yield ShowQuestion(exerciseDataMap["2"][currentState], answers);
        }
      },
    );
  }
}
