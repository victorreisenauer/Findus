import "dart:async";

import "package:bloc/bloc.dart";
import "package:freezed_annotation/freezed_annotation.dart";
import "package:meta/meta.dart";

import "../../../../../domain/lesson/exercise/validated_value_objects.dart";

part "template0005_bloc.freezed.dart";
part "template0005_event.dart";
part "template0005_state.dart";

class Template0005Bloc extends Bloc<Template0005Event, Template0005State> {
  ExerciseData exerciseData;
  Map exerciseDataMap;

  Template0005Bloc({@required this.exerciseData}) {
    exerciseDataMap = exerciseData.value.getOrElse(null);
  }

  @override
  Template0005State get initialState => Template0005State.initial();

  @override
  Stream<Template0005State> mapEventToState(
    Template0005Event event,
  ) async* {
    yield* event.map(
      startExercise: (e) async* {},
      answerSelected: (e) async* {},
    );
  }
}
