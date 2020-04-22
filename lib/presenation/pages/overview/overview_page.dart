import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:lrs_app_v3/injection.dart';
import '../../../application/lesson/lesson_bloc.dart';
import '../core/background_image.dart';
import 'package:lrs_app_v3/presenation/routes/router.gr.dart';
import 'package:lrs_app_v3/presenation/pages/core/cloud.dart';

class OverviewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
          create: (context) =>
              getIt<LessonBloc>()..add(LessonEvent.fetchAllLessonIds()),
          child: BackgroundImage(
            imagePath: "assets/images/overview_background_plain.jpg",
            child: BlocConsumer<LessonBloc, LessonState>(
              listener: (context, state) {
                if (state is LessonStarted) {
                  Router.navigator.pushNamed(Router.exercisePage,
                      arguments: ExercisePageArguments(
                          exerciseList: state.exerciseList));
                }
              },
              builder: (context, state) {
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
            ),
          )),
    );
  }
}

/*
    Center(
            child: Stack(
              children: [
                Positioned.fill(
                  child: Align(
                    alignment: Alignment.center,
                    child: Container(height: 110, width: 175, child: Cloud()),
                  ),
                ),
                Center(
                  child: FlatButton(
                    child: Text("hello"),
                    onPressed: () {},
                  ),
                )
              ],
            ),
          ),

          */
