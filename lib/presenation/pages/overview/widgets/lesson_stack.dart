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
      listener: (context, state) {},
      builder: (context, LessonState state) {
        if (state is LessonLoading) {
          return Center(child: CircularProgressIndicator());
        }
        if (state is LessonError) {
          return Center(
            child: Text(state.toString()),
          );
        }
        if (state is AllLessonsLoaded) {
          var lessons = state.lessons.value.fold((_) => null, (v) => v);
          return ListView.builder(
            padding: const EdgeInsets.all(8),
            itemCount: state.lessons.length,
            itemBuilder: (BuildContext context, int index) {
              return FlatButton(
                child: Center(
                  child: Text(lessons[index].id.value.toString()),
                ),
                onPressed: () {
                  Router.navigator.pushReplacementNamed(Router.exercisePage);
                  return context
                      .bloc<LessonBloc>()
                      .add(StartLesson(lessons[index].id));
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
