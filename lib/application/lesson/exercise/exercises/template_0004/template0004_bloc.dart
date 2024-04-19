import "dart:async";

import "package:bloc/bloc.dart";
import "package:flutter/foundation.dart";
import "package:flutter/material.dart";
import "package:freezed_annotation/freezed_annotation.dart";
import "package:meta/meta.dart";

import "../../../../../domain/lesson/exercise/validated_value_objects.dart";

part "template0004_bloc.freezed.dart";
part "template0004_event.dart";
part "template0004_state.dart";

class Template0004Bloc extends Bloc<Template0004Event, Template0004State> {
  ExerciseData exerciseData;
  Map exerciseDataMap;

  Template0004Bloc({@required this.exerciseData}) : super(Template0004State.initial()) {
    exerciseDataMap = exerciseData.value.getOrElse(null);
  }

  @override
  Stream<Template0004State> mapEventToState(
    Template0004Event event,
  ) async* {
    yield* event.map(
      startExercise: (e) async* {
        var colors = <Color>[];
        exerciseDataMap["2"].forEach((e) {
          colors.add(Colors.white);
        });
        yield ShowExercise(exerciseDataMap["1"], exerciseDataMap["2"], colors);
      },
      answerSelected: (e) async* {},
    );
  }
}
