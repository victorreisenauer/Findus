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
  void initState() {
    BlocProvider.of<Exercise_1Bloc>(context).add(GetExercise());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<Exercise_1Bloc, Exercise_1State>(
      builder: (context, state) {
        if (state is ShowExercise) {
          return Center(
            child: Container(
              height: 250,
              width: 250,
              child: Column(children: [
                SingleChildScrollView(
                  child: Column(children: [
                    Wrap(
                      children: _getWrapChildernFromText(state.text),
                    ),
                  ]),
                ),
                _getAnswers(state.answers),
              ]),
            ),
          );
        }
        return CircularProgressIndicator();
      },
    );
  }

  List<Widget> _getWrapChildernFromText(List<dynamic> text) {
    List<Widget> widgets = List();
    text.forEach((f) {
      if (f[0] == 0) {
        widgets.add(f[1]);
      }
      if (f[0] == 1) {
        widgets.add(DragTarget(
          builder: (context, list1, list2) {
            return f[1];
          },
          onAccept: (data) => print(data),
          onWillAccept: (data) => true,
        ));
      }
    });
    return widgets;
  }

  Widget _getAnswers(List<dynamic> answers) {
    return Row();
  }
}
