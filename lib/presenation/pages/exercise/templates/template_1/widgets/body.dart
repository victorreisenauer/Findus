import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lrs_app_v3/application/lesson/exerciseBlocs/exerciseBloc_1/exercise_1_bloc.dart';
import 'package:lrs_app_v3/presenation/pages/exercise/templates/sharedWidgets/cloud.dart';

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
          return Column(children: [
            Expanded(
              child: Center(
                child: Wrap(
                  children: _getWrapChildernFromText(state.text),
                ),
              ),
            ),
            Container(
                height: 100,
                // width: 300,
                color: Colors.green,
                child: _getAnswers(state.answers)),
            Center(
              child: Container(
                  height: 50,
                  width: 100,
                  child: Cloud(
                    child: Center(child: Text('Hello')),
                  )),
            )
          ]);
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
          builder: (context, List<String> list1, list2) {
            return f[1];
          },
          onAccept: (data) => print(data),
          onWillAccept: (data) {
            return true;
          },
        ));
      }
    });
    return widgets;
  }

  Widget _getAnswers(List<dynamic> answers) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
              height: 90,
              width: 150,
              child: Stack(children: [
                Container(
                    height: 90,
                    width: 150,
                    child: Cloud(
                      opacity: 1.0,
                    )),
                Center(
                  child: Text(answers[0][0]),
                )
              ])),
        ),
        _getCloudWithText('Hayy'),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
              height: 90,
              width: 150,
              child: Cloud(
                opacity: 1.0,
              )),
        ),
      ]),
    );
  }

  Widget _getCloudWithText(String text) {
    return Container(
      height: 90,
      width: 150,
      child: Draggable(
        affinity: Axis.vertical,
        child: Stack(
          children: <Widget>[
            Container(
                height: 90,
                width: 150,
                child: Cloud(
                  opacity: 1.0,
                )),
            Center(
              child: Text(
                'Hello',
                style: GoogleFonts.reemKufi(),
              ),
            )
          ],
        ),
        childWhenDragging: Stack(
          children: <Widget>[
            Container(
                height: 90,
                width: 150,
                child: Cloud(
                  opacity: 1.0,
                )),
            Center(
              child: Text(
                'Hello1',
                style: GoogleFonts.reemKufi(),
              ),
            )
          ],
        ),
        feedback: Container(
          height: 90,
          width: 150,
          child: Stack(
            children: <Widget>[
              Container(
                  height: 90,
                  width: 150,
                  child: Cloud(
                    opacity: 0.4,
                  )),
              Center(
                child: Text(
                  'Hello2',
                  style: GoogleFonts.reemKufi(
                      decoration: TextDecoration.none,
                      color: Colors.black,
                      fontSize: 15.0),
                ),
              )
            ],
          ),
        ),
        data: ['Hello', 'WTF'],
      ),
    );
  }
}
