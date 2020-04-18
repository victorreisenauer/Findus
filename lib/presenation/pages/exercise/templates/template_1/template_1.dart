import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lrs_app_v3/application/lesson/exerciseBlocs/exerciseBloc_1/exercise_1_bloc.dart';
import 'package:lrs_app_v3/presenation/pages/exercise/templates/template_1/widgets/body.dart';

class Template_1 extends StatelessWidget {
  const Template_1({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => Exercise_1Bloc(),
      child: Template_1Body(),
    );
  }
}
