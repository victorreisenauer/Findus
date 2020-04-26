import 'dart:async';

import 'package:audioplayers/audio_cache.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lrs_app_v3/domain/lesson/value_objects.dart';
import 'package:meta/meta.dart';

part 'exercise_2_event.dart';
part 'exercise_2_state.dart';
part 'exercise_2_bloc.freezed.dart';

class Exercise_2Bloc extends Bloc<Exercise_2Event, Exercise_2State> {
  ExerciseData exerciseData;
  Map exerciseDataMap;
  AudioCache player;

  Exercise_2Bloc({this.exerciseData}) {
    exerciseDataMap = exerciseData.value.getOrElse(null);
    player = AudioCache(prefix: 'sounds/');
  }

  @override
  Exercise_2State get initialState => Exercise_2State.initial();

  @override
  Stream<Exercise_2State> mapEventToState(
    Exercise_2Event event,
  ) async* {
    yield* event.map(startExercise: (e) async* {
      List<Color> colors = List();
      for (int i = 0; i < 3; i++) colors.add(Colors.white);
      yield Exercise_2State.showExercise(
          exerciseDataMap["2"], colors, exerciseDataMap["4"], false);
    }, playSound: (e) async* {
      player.play(exerciseDataMap["1"]);
    }, answerSelected: (e) async* {
      List<Color> colors = List();
      for (int i = 0; i < 3; i++) {
        colors.add(i == exerciseDataMap["3"] ? Colors.green : Colors.red);
      }
      yield Exercise_2State.showExercise(
          exerciseDataMap["2"], colors, exerciseDataMap["4"], true);
    });
  }
}
