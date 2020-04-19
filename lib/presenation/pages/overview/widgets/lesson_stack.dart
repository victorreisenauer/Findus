import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:lrs_app_v3/application/lesson/lesson_bloc.dart';
import 'package:lrs_app_v3/domain/core/failures.dart';
import 'package:lrs_app_v3/domain/lesson/lesson.dart';
import 'package:lrs_app_v3/presenation/routes/router.gr.dart';

class LessonStack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LessonBloc, LessonState>(
      listener: (context, state) {
        if (state is LessonStarted) {
          Router.navigator.pushReplacementNamed(Router.exercisePage,
              arguments: ExercisePageArguments(
                  exercise: state.exercise, lessonLength: state.lessonLength));
        }
      },
      builder: (context, LessonState state) {
        if (state is LessonLoading) {
          return Center(child: CircularProgressIndicator());
        }
        if (state is LessonError) {
          return Center(
            child: Text(state.toString()),
          );
        }
        if (state is AllLessonIdsLoaded) {
          return ListView.builder(
            padding: const EdgeInsets.all(8),
            itemCount: state.ids.length,
            itemBuilder: (BuildContext context, int index) {
              return FlatButton(
                color: Colors.blue,
                child: Center(
                  child: Text(
                    "Lektion ${index + 1}",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                onPressed: () {
                  return context
                      .bloc<LessonBloc>()
                      .add(StartLesson(state.ids[index]));
                },
              );
            },
          );
        }
        return Center(child: Text("No state was called"));
      },
    );
  }
}
