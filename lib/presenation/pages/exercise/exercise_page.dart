import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:lrs_app_v3/injection.dart';
import 'package:lrs_app_v3/application/lesson/lesson_bloc.dart';
import 'package:lrs_app_v3/application/lesson/progress/progress_bloc.dart';
import 'package:lrs_app_v3/domain/lesson/exercise.dart';

class ExercisePage extends StatelessWidget {
  final Exercise exercise;
  final int lessonLength;
  //TODO: figure out if this ^is elegant or if data should be transmitted by LessonStarted state directly?

  const ExercisePage({@required this.exercise, this.lessonLength});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<ProgressBloc>()
            ..add(ProgressEvent.startProgress(lessonLength)),
        ),
        //BlocProvider(
        //  create: (context) => getIt<ExerciseBloc>()
        //    ..add(ExerciseEvent.buildExercise(state.exercise)),
        //)
      ],
      child: Scaffold(
        body: BlocBuilder<ProgressBloc, ProgressState>(
          builder: (context, state) {
            if (state is ProgressUpdated) {
              return Center(
                child: Column(
                  children: [
                    Container(
                      child: LinearProgressIndicator(
                        value: state.currentProgress,
                      ),
                    ),
                    FlatButton(
                      child: Text("Press for progress"),
                      onPressed: () {
                        context.bloc().add(ProgressEvent.updateProgress(true));
                      },
                    ),
                  ],
                ),
              );
            }
            return Center(child: Text("No state was called"));
          },
        ),
      ),
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
