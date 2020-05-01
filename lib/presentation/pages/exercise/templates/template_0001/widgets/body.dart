import 'package:draggable_scrollbar/draggable_scrollbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lrs_app_v3/application/lesson/exercise/exercises/template_0001/template_0001_bloc.dart';
import 'package:lrs_app_v3/presentation/pages/core/base_exercise.dart';
import 'package:lrs_app_v3/presentation/pages/core/cloud.dart';
import 'package:lrs_app_v3/application/lesson/exercise/exercise_bloc.dart';
import 'package:lrs_app_v3/presentation/routes/router.gr.dart';
import 'package:lrs_app_v3/injection.dart';

class Template_1Body extends StatefulWidget {
  Template_1Body({Key key}) : super(key: key);

  @override
  _Template_1BodyState createState() => _Template_1BodyState();
}

class _Template_1BodyState extends State<Template_1Body> {
  @override
  void initState() {
    BlocProvider.of<Template0001Bloc>(context).add(GetExercise());
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<Template0001Bloc, Template0001State>(
      listener: (context, state) {
        if (state is ShowExercise) {
          if (state.messageToUser != null) {
            Scaffold.of(context).showSnackBar(SnackBar(
              content: Text(state.messageToUser),
            ));
          }
        }
      },
      builder: (context, state) {
        if (state is ShowExercise) {
          return BaseExercise(
            help: 'This is some real good placeholding help text',
            onAbort: () {
              print('onAbort pressed');
            },
            centerBottomBarWidget: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              child: RaisedButton(
                onPressed: () {
                  BlocProvider.of<Template0001Bloc>(context).add(PressedDone());
                },
                child: Text(
                  state.centerButtonText,
                  style: GoogleFonts.reemKufi(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                      color: Colors.white,
                      letterSpacing: 10.0),
                ),
                color: Colors.green,
                elevation: 5.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(children: [
                Expanded(
                  child: Center(
                    child: SingleChildScrollView(
                      child:
                          Wrap(children: _getWrapChildrenFromText(state.text)),
                    ),
                  ),
                ),
                Container(
                    height: 75,
                    // width: 300,
                    child: Center(
                        child:
                            _getAnswer(state.answers, state.correctionMode))),
              ]),
            ),
          );
        }
        return CircularProgressIndicator();
      },
    );
  }

  List<Widget> _getWrapChildrenFromText(List<dynamic> text) {
    List<Widget> widgets = List();
    text.forEach((f) {
      if (f[0] == 0) {
        widgets.add(f[1]);
      }
      if (f[0] == 1) {
        widgets.add(DragTarget<int>(
          builder: (context, List<int> list1, list2) {
            return f[1];
          },
          onAccept: (data) => BlocProvider.of<Template0001Bloc>(context)
              .add(Template0001Event.droppedDraggable(f[2], data)),
          onWillAccept: (data) {
            return true;
          },
        ));
      }
    });
    return widgets;
  }

  Widget _getAnswer(List<dynamic> answers, bool correction) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(children: _getAnswers(answers, correction)),
    );
  }

  List<Widget> _getAnswers(List<dynamic> answers, bool correction) {
    List<Widget> widgets = List();
    answers.forEach((f) {
      widgets.add(Padding(
        padding: const EdgeInsets.all(8.0),
        child: Draggable<int>(
          maxSimultaneousDrags: correction ? 0 : 1,
          affinity: Axis.vertical,
          child: Container(
            height: 75,
            width: 110,
            child: Cloud(
              child: Center(child: f[0]),
            ),
          ),
          feedback: Container(
            height: 75,
            width: 110,
            child: Cloud(
              child: Center(child: f[0]),
              opacity: 0.7,
            ),
          ),
          data: f[1],
        ),
      ));
    });
    return widgets;
  }
}