import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";
import "package:google_fonts/google_fonts.dart";

import "../../../../../../application/lesson/exercise/exercises/template_0004/template0004_bloc.dart";
import "../../../../core/base_exercise.dart";

class Template0004Body extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Template0004BodyState();
  }
}

class _Template0004BodyState extends State<Template0004Body> {
  static const String help =
      "Schau dir das Wort genau an und entscheide wie viele Silben es hat. Klicke auf die richtige Nummer.";

  @override
  void initState() {
    super.initState();
    BlocProvider.of<Template0004Bloc>(context).add(StartExercise());
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer(
      listener: (context, state) {},
      builder: (context, state) {
        if (state == ShowExercise) {
          return BaseExercise(
              help: help,
              child: _ShowQuestion(word: state.word, answers: state.answers, colors: state.colors),
              onAbort: () {
                print("onAbort pressed");
              });
        }
        return CircularProgressIndicator();
      },
    );
  }
}

class _ShowQuestion extends StatelessWidget {
  final String word;
  final List<String> answers;
  final List<Color> colors;

  _ShowQuestion({@required this.word, @required this.answers, @required this.colors});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Text(
          "Wie viele Silben hat das folgende Wort?",
          textAlign: TextAlign.center,
          style: GoogleFonts.reemKufi(fontSize: 30.0),
        ),
        Card(
          color: Color.fromRGBO(34, 125, 184, 1),
          child: Center(
              child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              word,
              style: GoogleFonts.reemKufi(fontSize: 35.0, color: Colors.white),
            ),
          )),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: _getAnswerChildren(answers, colors, context),
        )
      ],
    );
  }

  List<Widget> _getAnswerChildren(List<String> answers, List<Color> colors, BuildContext context) {
    List<Widget> widgets;
    var size = 50.0;

    for (var i = 0; i < answers.length; i++) {
      widgets.add(InkResponse(
        onTap: () {
          BlocProvider.of<Template0004Bloc>(context).add(AnswerSelected(i));
        },
        child: Container(
          height: size,
          width: size,
          decoration: BoxDecoration(color: colors[i], shape: BoxShape.circle),
          child: Text(
            answers[i],
            style: GoogleFonts.reemKufi(fontSize: 14.0),
          ),
        ),
      ));
    }
    return widgets;
  }
}
