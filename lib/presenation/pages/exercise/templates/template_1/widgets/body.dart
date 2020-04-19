import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lrs_app_v3/application/lesson/exerciseBlocs/exerciseBloc_1/exercise_1_bloc.dart';

class Template_1Body extends StatefulWidget {
  Template_1Body({Key key}) : super(key: key);

  @override
  _Template_1BodyState createState() => _Template_1BodyState();
}

class _Template_1BodyState extends State<Template_1Body> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<Exercise_1Bloc, Exercise_1State>(
      builder: (context, state) {},
    );
  }
}
