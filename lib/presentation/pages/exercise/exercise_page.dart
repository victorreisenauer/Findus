import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";

import "../../../application/lesson/exercise/exercise_bloc.dart";
import "../../../application/lesson/progress/progress_bloc.dart";
import "../../../domain/core/value_objects.dart";
import "../../../domain/lesson/lesson_barrel.dart";
import "../../../injection.dart";

class ExercisePage extends StatelessWidget {
  final ObjectList<Exercise> exerciseList;
  //TODO: figure out if this ^is elegant or if data should be transmitted by LessonStarted state directly?

  const ExercisePage({Key key, @required this.exerciseList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<ProgressBloc>()..add(ProgressEvent.startProgress(exerciseList.length)),
        ),
        BlocProvider(
          create: (context) => ExerciseBloc(exerciseList: exerciseList)..add(ExerciseEvent.buildFirstExercise()),
        )
      ],
      child: Scaffold(
        body: BlocBuilder<ExerciseBloc, ExerciseState>(
          builder: (context, state) {
            if (state is ExerciseBuilt) {
              return state.builtExercise;
            }
            if (state is ExerciseError) {
              return Center(child: Text(state.error.toString()));
            }
            return Center(
              child: Text("No state was called on ExercisePage"),
            );
          },
        ),
      ),
    );
  }
}
