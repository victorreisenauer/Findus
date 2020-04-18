import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:lrs_app_v3/injection.dart';
import '../../../application/lesson/lesson_bloc.dart';
import '../core/background_image.dart';
import 'widgets/lesson_stack.dart';

class OverviewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: BlocProvider(
      create: (context) =>
          getIt<LessonBloc>()..add(LessonEvent.fetchAllLessons()),
      child: BackgroundImage(
        imagePath: "assets/images/overview_background.jpg",
        child: LessonStack(),
      ),
    ));
  }
}
