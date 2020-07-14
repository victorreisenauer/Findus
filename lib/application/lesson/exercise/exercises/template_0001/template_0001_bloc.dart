import "dart:async";

import "package:bloc/bloc.dart";
import "package:flutter/foundation.dart";
import "package:flutter/material.dart";
import "package:freezed_annotation/freezed_annotation.dart";
import "package:google_fonts/google_fonts.dart";
import "package:meta/meta.dart";

import "../../../../../domain/lesson/exercise/validated_value_objects.dart";

part "template_0001_bloc.freezed.dart";
part "template_0001_event.dart";
part "template_0001_state.dart";

class Template0001Bloc extends Bloc<Template0001Event, Template0001State> {
  ExerciseData exerciseData;
  Map exerciseDataMap;
  List<int> filledSuffix;
  bool correctionPhase = false;

  List<dynamic> lastText;
  List<dynamic> lastAnswers;

  TextStyle defaultTextStyle = GoogleFonts.reemKufi(
      fontSize: 18.0, decoration: TextDecoration.none, color: Colors.black87, fontWeight: FontWeight.normal);

  Template0001Bloc({this.exerciseData}) {
    exerciseDataMap = exerciseData.value.getOrElse(null);
    filledSuffix = [];
  }

  @override
  Template0001State get initialState => Template0001State.initial();

  @override
  Stream<Template0001State> mapEventToState(
    Template0001Event event,
  ) async* {
    yield* event.map(getExercise: (e) async* {
      // yield Exercise_1State.initial();

      var suffix = <String>[];
      var suffixColor = <Color>[];

      exerciseDataMap["2"].forEach((f) {
        suffix.add("_ _ _ _");
        filledSuffix.add(null);
        suffixColor.add(Colors.black87);
      });

      var values = _dataToList(exerciseDataMap, suffix, suffixColor);

      var text = values[0];
      var answers = values[1];

      lastText = text;
      lastAnswers = answers;

      yield Template0001State.showExercise(text, answers, "fertig!", false);
    }, droppedDraggable: (e) async* {
      filledSuffix[e.idTarget] = e.idDraggable;

      var suffix = <String>[];
      var suffixColor = <Color>[];

      for (var i = 0; i < exerciseDataMap["2"].length; i++) {
        if (filledSuffix[i] != null) {
          var suffixString = "-";
          for (var j = 0; j < exerciseDataMap["4"][filledSuffix[i]].length; j++) {
            suffixString += " ";
            suffixString += exerciseDataMap["4"][filledSuffix[i]][j];
          }
          suffix.add(suffixString);
          suffixColor.add(Colors.blueAccent.shade400);
        } else {
          suffix.add("_ _ _ _");
          suffixColor.add(Colors.black87);
        }
      }

      var values = _dataToList(exerciseDataMap, suffix, suffixColor);

      var text = values[0];
      var answers = values[1];

      lastText = text;
      lastAnswers = answers;

      yield Template0001State.showExercise(text, answers, "fertig!", false);
    }, pressedDone: (e) async* {
      if (correctionPhase) {
        // TODO implement exercise done
      } else {
        var fieldsMissing = false;
        var suffix = <String>[];
        var suffixColor = <Color>[];

        for (var i = 0; i < filledSuffix.length; i++) {
          if (filledSuffix[i] == null) fieldsMissing = true;
        }

        if (fieldsMissing) {
          yield Template0001State.showExercise(lastText, lastAnswers, "fertig!", false,
              "Du musst alle Felder ausgefüllt haben, bevor du die Aufgabe beenden kannst");
        } else {
          for (var i = 0; i < exerciseDataMap["2"].length; i++) {
            var suffixString = "-";
            for (var j = 0; j < exerciseDataMap["4"][filledSuffix[i]].length; j++) {
              suffixString += " ";
              suffixString += exerciseDataMap["4"][filledSuffix[i]][j];
            }
            suffix.add(suffixString);
            if (filledSuffix[i] == exerciseDataMap["5"][i]) {
              suffixColor.add(Colors.green);
            } else {
              suffixColor.add(Colors.red);
            }
          }

          var values = _dataToList(exerciseDataMap, suffix, suffixColor);

          var text = values[0];
          var answers = values[1];

          lastText = text;
          lastAnswers = answers;

          correctionPhase = true;

          yield Template0001State.showExercise(text, answers, "weiter!", true);
        }
      }
    });
  }

  List<List> _dataToList(Map data, List<String> suffix, List<Color> suffixColor) {
    var text = <dynamic>[];
    var answers = <dynamic>[];

    var normalListPos = 0;
    var targetListPos = 0;

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
            children:
                _dragTargetBuildWidget(targetList[targetListPos], suffix[targetListPos], suffixColor[targetListPos]),
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
          ),
          targetListPos
        ]);
        targetListPos++;
      }
    });

    var answerPos = 0;

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

  List<Widget> _dragTargetBuildWidget(String text, String suffix, Color suffixColor) {
    var widgets = <Widget>[];
    var textParts = text.split("§suffix§");
    widgets.add(Text(
      textParts[0],
      style: defaultTextStyle,
    ));
    widgets.add(Text(
      suffix,
      style: GoogleFonts.reemKufi(textStyle: defaultTextStyle, color: suffixColor, fontWeight: FontWeight.w700),
    ));
    if (textParts.length > 1) {
      widgets.add(Text(
        textParts[1],
        style: defaultTextStyle,
      ));
    }
    return widgets;
  }
}
