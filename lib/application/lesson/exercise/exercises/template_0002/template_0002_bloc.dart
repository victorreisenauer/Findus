import "dart:async";

import "package:audioplayers/audio_cache.dart";
import "package:bloc/bloc.dart";
import "package:flutter/foundation.dart";
import "package:flutter/material.dart";
import "package:freezed_annotation/freezed_annotation.dart";
import "package:meta/meta.dart";

import "../../../../../domain/lesson/exercise/validated_value_objects.dart";

part "template_0002_bloc.freezed.dart";
part "template_0002_event.dart";
part "template_0002_state.dart";

class Template0002Bloc extends Bloc<Template0002Event, Template0002State> {
  ExerciseData exerciseData;
  Map exerciseDataMap;
  AudioCache player;

  Template0002Bloc({this.exerciseData}) : super(Template0002State.initial()) {
    exerciseDataMap = exerciseData.value.getOrElse(null);
    player = AudioCache(prefix: "sounds/");
  }

  @override
  Stream<Template0002State> mapEventToState(
    Template0002Event event,
  ) async* {
    yield* event.map(startExercise: (e) async* {
      var colors = <Color>[];
      for (var i = 0; i < 3; i++) {
        colors.add(Colors.white);
      }
      yield Template0002State.showExercise(exerciseDataMap["2"], colors, exerciseDataMap["4"], false);
    }, playSound: (e) async* {
      await player.play(exerciseDataMap["1"]);
    }, answerSelected: (e) async* {
      var colors = <Color>[];
      for (var i = 0; i < 3; i++) {
        colors.add(i == exerciseDataMap["3"] ? Colors.green : Colors.red);
      }
      yield Template0002State.showExercise(exerciseDataMap["2"], colors, exerciseDataMap["4"], true);
    }, nextButtonPressed: (e) async* {
      print("Next Pressed");
    });
  }
}
