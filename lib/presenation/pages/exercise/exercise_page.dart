import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:lrs_app_v3/injection.dart';
import 'package:lrs_app_v3/application/lesson/lesson_bloc.dart';
import 'package:lrs_app_v3/domain/lesson/exercise.dart';

class ExercisePage extends StatelessWidget {
  final Exercise exercise;
  final int lessonLength;
  //TODO: figure out if this ^is elegant or if data should be transmitted by LessonStarted state directly?

  const ExercisePage({@required this.exercise, this.lessonLength});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("Exercise arrived, lesson length is $lessonLength"),
    );
  }
}

/*
 * 
 * MultiBlocProvider(
              providers: [
                BlocProvider(
                  create: (context) => getIt<ProgressBloc>()
                    ..add(ProgressEvent.progressInit(state.lessonLength)),
                ),
                BlocProvider(
                  create: (context) => getIt<ExerciseBloc>()
                    ..add(ExerciseEvent.buildExercise(state.exercise)),
                )
              ],
              child: BlocListener<ExerciseBloc, ExerciseState>(
                listener: (context, state) {
                  if (state is ExerciseBuilt) {
                    return state.template;
                  }
                },
              ),
            );
 */
