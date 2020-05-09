import 'dart:convert';

import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:lrs_app_v3/application/lesson/exercise/exercises/template_0003/template0003_bloc.dart';
import 'package:lrs_app_v3/domain/lesson/exercise/validated_value_objects.dart';
import 'package:lrs_app_v3/infrastructure/sample_data/sample_barrel.dart';

main() {
  group("Template0003Bloc => ", () {
    ExerciseData exerciseData = ExerciseData(jsonDecode(
        SampleExerciseGenerator()
            .getEncodedJsonForType("sampleType3"))["data"]);

    blocTest('emits [] when nothing is added',
        build: () async => Template0003Bloc(exerciseData: exerciseData),
        expect: []);

    blocTest('emits showText when Template0003Event.startExercise is added',
        build: () async => Template0003Bloc(exerciseData: exerciseData),
        act: (bloc) => bloc.add(Template0003Event.startExercise()),
        expect: [
          Template0003State.showText(
              "Anna stand an diesem Morgen früh auf. Sie wollte spazieren gehen, um sich die aufgehende Sonne anzuschauen und Fotos zu schießen. Als sie schon fünfzehn Minuten unterwegs war, fiel ihr auf, dass sie ihre Kamera vergessen hatte! Der Sonnenaufgang war allerdings so schön, dass sie ihn auch ohne Foto nicht mehr so schnell vergas.")
        ]);

    blocTest(
        'emits showQuestion when Template0003Event.centerButtonPressed is added',
        build: () async => Template0003Bloc(exerciseData: exerciseData),
        act: (bloc) async {
          bloc.add(Template0003Event.startExercise());
          bloc.add(Template0003Event.centerButtonPressed());
        },
        expect: [
          Template0003State.showText(
              "Anna stand an diesem Morgen früh auf. Sie wollte spazieren gehen, um sich die aufgehende Sonne anzuschauen und Fotos zu schießen. Als sie schon fünfzehn Minuten unterwegs war, fiel ihr auf, dass sie ihre Kamera vergessen hatte! Der Sonnenaufgang war allerdings so schön, dass sie ihn auch ohne Foto nicht mehr so schnell vergas."),
          Template0003State.showQuestion("Was wollte sich Anna anschauen?",
              ["Sonnenuntergang", "Sonnenaufgang"])
        ]);

    blocTest(
        'emits next question when Template0003Event.answerSelected is added',
        build: () async => Template0003Bloc(exerciseData: exerciseData),
        act: (bloc) async {
          bloc.add(Template0003Event.startExercise());
          bloc.add(Template0003Event.centerButtonPressed());
          bloc.add(Template0003Event.answerSelected(0));
        },
        skip: 3,
        expect: [
          Template0003State.showCorrection(
              "Was wollte sich Anna anschauen?",
              ["Sonnenuntergang", "Sonnenaufgang"],
              [Colors.white70, Colors.white70]),
          Template0003State.showQuestion(
              "Was hat Anna zu Hause vergessen?", ["Kamera", "Jacke"]),
        ]);
  });
}
