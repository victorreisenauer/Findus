import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:lrs_app_v3/injection.dart';
import 'package:lrs_app_v3/application/lesson/lesson_bloc.dart';

class ExercisePage extends StatelessWidget {
  int lessonLength;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // access to lessonbloc --> if state is lessonstarted(exercise, lesson length) or lessonadvance(exercise)
        // give access to progressbloc and exercise bloc, add ProgressInit(lesson length), add ExerciseBloc buildExercise()
        //--> give access to exercisebloc and
        // add bloclistener for exercise --> if state is ExerciseBuilt(Template)
        // return template (displayed on screen)
        body: BlocProvider<LessonBloc>(
      create: (context) => getIt<LessonBloc>(),
      child: BlocConsumer<LessonBloc, LessonState>(
        listener: (context, state) {
          if (state is LessonStarted) {
            this.lessonLength = state.lessonLength;
          }
        },
        builder: (context, state) {
          state.map(
              initial: (_) => {},
              lessonLoading: (_) => {},
              lessonLoaded: (_) => {},
              lessonError: (_) => {},
              allLessonsLoaded: (_) => {},
              lessonStarted: (_) => {},
              lessonAdvanced: (_) => {},
              lessonFinished: (_) => {},
              lessonAborted: (_) => {});
          if (state is LessonStarted) {
            return Text(this.lessonLength.toString());
          }
          if (state is LessonError) {
            return Text("Lesson error");
          }
          return Text("no state was called");
        },
      ),
    ));
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
