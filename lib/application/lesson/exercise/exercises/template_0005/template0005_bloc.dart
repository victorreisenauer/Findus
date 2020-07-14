import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lrs_app_v3/domain/lesson/lesson_barrel.dart';
import 'package:meta/meta.dart';

part 'template0005_event.dart';
part 'template0005_state.dart';
part 'template0005_bloc.freezed.dart';

class Template0005Bloc extends Bloc<Template0005Event, Template0005State> {
  ExerciseData exerciseData;
  Map exerciseDataMap;

  Template0005Bloc({@required this.exerciseData}) : super(Template0005State.initial()) {
    exerciseDataMap = exerciseData.value.getOrElse(null);
  }

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
