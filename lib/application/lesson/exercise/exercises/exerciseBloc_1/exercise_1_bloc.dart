import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lrs_app_v3/domain/lesson/value_objects.dart';
import 'package:meta/meta.dart';

part 'exercise_1_event.dart';
part 'exercise_1_state.dart';
part 'exercise_1_bloc.freezed.dart';

class Exercise_1Bloc extends Bloc<Exercise_1Event, Exercise_1State> {
  ExerciseData exerciseData;
  Map exerciseDataMap;
  List<int> filledSuffix;

  TextStyle defaultTextStyle = GoogleFonts.reemKufi(
      fontSize: 18.0,
      decoration: TextDecoration.none,
      color: Colors.black87,
      fontWeight: FontWeight.normal);

  Exercise_1Bloc({this.exerciseData}) {
    exerciseDataMap = exerciseData.value.getOrElse(null);
    filledSuffix = List();
  }

  @override
  Exercise_1State get initialState => Exercise_1State.initial();

  @override
  Stream<Exercise_1State> mapEventToState(
    Exercise_1Event event,
  ) async* {
    yield* event.map(getExercise: (e) async* {
      // yield Exercise_1State.initial();

      List<String> suffix = List();
      List<Color> suffixColor = List();

      exerciseDataMap["2"].forEach((f) {
        suffix.add('_ _ _ _');
        filledSuffix.add(null);
        suffixColor.add(Colors.black87);
      });

      List<List> values = _dataToList(exerciseDataMap, suffix, suffixColor);

      List<dynamic> text = values[0];
      List<dynamic> answers = values[1];

      yield Exercise_1State.showExercise(text, answers);
    }, droppedDraggable: (e) async* {
      filledSuffix[e.idTarget] = e.idDraggable;

      List<String> suffix = List();
      List<Color> suffixColor = List();

      for (int i = 0; i < exerciseDataMap["2"].length; i++) {
        if (filledSuffix[i] != null) {
          suffix.add()
        }
      }
    }, pressedFinish: (e) async* {
      print(e);
    });
  }

  List<List> _dataToList(
      Map data, List<String> suffix, List<Color> suffixColor) {
    List<dynamic> text = List();
    List<dynamic> answers = List();

    int normalListPos = 0;
    int targetListPos = 0;

    List<dynamic> normalList = data["1"];
    List<dynamic> targetList = data["2"];

    (data["3"]).forEach((f) {
      if (f == 0) {
        text.add([
          0,
          Text(
            normalList[normalListPos],
            style: defaultTextStyle,
          )
        ]);
        normalListPos++;
      }
      if (f == 1) {
        text.add([
          1,
          Row(
            children: _dragTargetBuildWidget(targetList[targetListPos],
                suffix[targetListPos], suffixColor[targetListPos]),
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
          ),
          targetListPos
        ]);
        targetListPos++;
      }
    });

    int answerPos = 0;

    (data["4"]).forEach((f) {
      answers.add([
        Text(
          f,
          style: defaultTextStyle,
        ),
        answerPos
      ]);
      answerPos++;
    });

    return [text, answers];
  }

  List<Widget> _dragTargetBuildWidget(
      String text, String suffix, Color suffixColor) {
    List<Widget> widgets = List();
    List<String> textParts = text.split('§suffix§');
    widgets.add(Text(
      textParts[0],
      style: defaultTextStyle,
    ));
    widgets.add(Text(
      suffix,
      style:
          GoogleFonts.reemKufi(textStyle: defaultTextStyle, color: suffixColor),
    ));
    if (textParts.length > 1)
      widgets.add(Text(
        textParts[1],
        style: defaultTextStyle,
      ));
    return widgets;
  }
}
