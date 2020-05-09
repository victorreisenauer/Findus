import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lrs_app_v3/application/lesson/progress/progress_bloc.dart';
import 'package:lrs_app_v3/presentation/pages/core/base_exercise.dart';

main() {
  runApp(_TestApp());
}

class _TestApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: BlocProvider(
      create: (context) => ProgressBloc(),
      child: Scaffold(
        body: _TestBody(),
      ),
    ));
  }
}

class _TestBody extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _TestBodyState();
  }
}

class _TestBodyState extends State<_TestBody> {
  @override
  void initState() {
    super.initState();

    BlocProvider.of<ProgressBloc>(context).add(StartProgress(10));
  }

  @override
  Widget build(BuildContext context) {
    return BaseExercise(
        help: "test help",
        child: Container(
          color: Colors.green,
        ),
        onAbort: () {
          BlocProvider.of<ProgressBloc>(context).add(UpdateProgress(true));
          print("on abort pressed");
        });
  }
}
