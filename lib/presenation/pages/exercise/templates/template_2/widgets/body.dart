import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lrs_app_v3/application/lesson/exercise/exercises/exerciseBloc_2/bloc/exercise_2_bloc.dart';
import 'package:lrs_app_v3/presenation/pages/core/base_exercise.dart';

class Template_2Body extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Template_2BodyState();
  }
}

class _Template_2BodyState extends State<Template_2Body> {
  @override
  void initState() {
    BlocProvider.of<Exercise_2Bloc>(context)
        .add(Exercise_2Event.startExercise());
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer(
      listener: (context, state) {},
      builder: (context, state) {
        if (state is ShowExercise) {
          return BaseExercise(
            help: state.help,
            centerBottomBarWidget: state.showNextButton
                ? Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40.0),
                    child: RaisedButton(
                      onPressed: () {
                        BlocProvider.of<Exercise_2Bloc>(context)
                            .add(NextPressed());
                      },
                      child: Text(
                        "weiter",
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
                  )
                : Container(),
            onAbort: () {
              print('On Abort pressed');
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  height: 15.0,
                ),
                Text(
                  'Welchen Buchstaben\n hörst du?',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.reemKufi(
                    fontSize: 35.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Container(
                  height: 0.0,
                ),
                Card(
                  color: Color.fromRGBO(166, 223, 249, 1),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100.0)),
                  elevation: 0.0,
                  child: InkWell(
                    borderRadius: BorderRadius.circular(100.0),
                    onTap: () {
                      BlocProvider.of<Exercise_2Bloc>(context)
                          .add(Exercise_2Event.playSound());
                    },
                    child: SizedBox(
                      height: 155,
                      width: 155,
                      child: Stack(
                        children: <Widget>[
                          Positioned(
                            top: 4.0,
                            right: 10.0,
                            child: Icon(
                              Icons.volume_up,
                              size: 145,
                              color: Colors.black26,
                            ),
                          ),
                          Icon(
                            Icons.volume_up,
                            color: Color.fromRGBO(34, 125, 184, 1),
                            size: 145,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 30.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    getAnswerButton(state.answers[0], () {
                      BlocProvider.of<Exercise_2Bloc>(context).add(
                          Exercise_2Event.answerSelected(selectedAnswer: 0));
                    }, state.colors[0]),
                    getAnswerButton(state.answers[1], () {
                      BlocProvider.of<Exercise_2Bloc>(context).add(
                          Exercise_2Event.answerSelected(selectedAnswer: 1));
                    }, state.colors[1]),
                    getAnswerButton(state.answers[2], () {
                      BlocProvider.of<Exercise_2Bloc>(context).add(
                          Exercise_2Event.answerSelected(selectedAnswer: 2));
                    }, state.colors[2])
                  ],
                )
              ],
            ),
          );
        }
        return CircularProgressIndicator();
      },
    );
  }

  Widget getAnswerButton(String text, Function onPressed, Color color) {
    return Card(
      elevation: 5.0,
      color: color,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      child: InkWell(
        onTap: onPressed,
        borderRadius: BorderRadius.circular(10.0),
        child: Container(
          height: 84,
          width: 84,
          child: Center(
            child: Text(
              text,
              textAlign: TextAlign.center,
              style: GoogleFonts.reemKufi(fontSize: 32.0, height: 1.2),
            ),
          ),
        ),
      ),
    );
  }
}
