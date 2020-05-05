import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lrs_app_v3/application/lesson/exercise/exercises/template_0003/template0003_bloc.dart';
import 'package:lrs_app_v3/presentation/pages/core/base_exercise.dart';
import 'package:lrs_app_v3/presentation/pages/core/cloud.dart';

class Template0003Body extends StatefulWidget {
  @override
  createState() {
    return _Template0003BodyState();
  }
}

class _Template0003BodyState extends State<Template0003Body> {
  static const String help =
      "Lese den Text aufmerksam durch, wenn du glaubst alles verstanden zu haben, dann drücke \"zu den Fragen\" und beantworte Fragen zu diesem Text";

  @override
  void initState() {
    super.initState();
    BlocProvider.of<Template0003Bloc>(context).add(StartExercise());
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<Template0003Bloc, Template0003State>(
      listener: (context, state) {
        print(state);
      },
      builder: (context, state) {
        Widget _childWidget;
        if (state is ShowText) {
          _childWidget = _getShowText(state.text);
        } else if (state is ShowQuestion) {
          _childWidget = _getQuestion(state.text, state.answers);
        } else if (state is ShowCorrection) {
          _childWidget =
              _getCorrection(state.text, state.answers, state.colors);
        }
        return BaseExercise(
          help: help,
          onAbort: () => print("On Abort"),
          centerBottomBarWidget: (state is ShowText)
              ? Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25.0),
                  child: RaisedButton(
                    color: Colors.white,
                    elevation: 5.0,
                    child: Text(
                      "zu den Fragen!",
                      style: GoogleFonts.reemKufi(fontSize: 20.0),
                    ),
                    onPressed: () {
                      BlocProvider.of<Template0003Bloc>(context)
                          .add(Template0003Event.centerButtonPressed());
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0)),
                  ),
                )
              : null,
          child: AnimatedSwitcher(
            duration: Duration(milliseconds: 300),
            child: _childWidget,
          ),
        );
      },
    );
  }

  Widget _getShowText(String text) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
              "Lese den folgenden Text einmal aufmerksam und beantworte dann Fragen dazu:",
              textAlign: TextAlign.center,
              style: GoogleFonts.reemKufi(
                fontSize: 23.0,
              )),
        ),
        Container(
          height: 10.0,
        ),
        Container(
          height: 330,
          child: Card(
              color: Color.fromRGBO(129, 210, 248, 1),
              margin: EdgeInsets.all(8.0),
              elevation: 5.0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0)),
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(text,
                      style: GoogleFonts.reemKufi(
                          fontSize: 20.0, fontWeight: FontWeight.w500)),
                ),
              )),
        ),
        Container(
          height: 34.0,
        )
      ],
    );
  }

  Widget _getQuestion(String text, List<String> answers) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(
            height: 180,
            width: 340,
            child: Cloud(
                child: Center(
                    child: Padding(
              padding: const EdgeInsets.all(25.0),
              child: Text(text,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.reemKufi(fontSize: 24.0)),
            )))),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: _getAnswerButtons(
              answers, BlocProvider.of<Template0003Bloc>(context)),
        )
      ],
    );
  }

  List<Widget> _getAnswerButtons(List<String> answers, Template0003Bloc bloc,
      {List<Color> colors}) {
    List<Widget> widgets = List();
    for (int i = 0; i < answers.length; i++) {
      widgets.add(Padding(
        padding: EdgeInsets.all(8.0),
        child: RaisedButton(
          color: colors != null ? colors[i] : Colors.white,
          elevation: 5.0,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(answers[i],
                style: GoogleFonts.reemKufi(
                    fontSize: 20.0, fontWeight: FontWeight.w400)),
          ),
          onPressed: () {
            bloc.add(Template0003Event.answerSelected(i));
          },
        ),
      ));
    }
    return widgets;
  }

  Widget _getCorrection(String text, List<String> answers, List<Color> colors) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(
            height: 180,
            width: 340,
            child: Cloud(
                child: Center(
                    child: Padding(
              padding: const EdgeInsets.all(25.0),
              child: Text(text,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.reemKufi(fontSize: 24.0)),
            )))),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: _getAnswerButtons(
              answers, BlocProvider.of<Template0003Bloc>(context),
              colors: colors),
        )
      ],
    );
  }
}
