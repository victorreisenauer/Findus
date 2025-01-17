import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";
import "package:google_fonts/google_fonts.dart";

import "../../../application/lesson/exercise/core/base_template_bloc.dart";
import "background.dart";
import "progress_bar.dart";

class BaseExercise extends StatelessWidget {
  final String help;
  final Widget child;
  final Function onAbort;
  final Widget centerBottomBarWidget;
  const BaseExercise({@required this.help, @required this.child, @required this.onAbort, this.centerBottomBarWidget});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BaseTemplateBloc(),
      child: _BaseExerciseBody(
        child: child,
        help: help,
        onAbort: onAbort,
        centerBottomBarWidget: centerBottomBarWidget,
      ),
    );
  }
}

class _BaseExerciseBody extends StatefulWidget {
  final String help;
  final Widget child;
  final Function onAbort;
  final Widget centerBottomBarWidget;

  const _BaseExerciseBody(
      {@required this.help, @required this.child, @required this.onAbort, this.centerBottomBarWidget});

  @override
  State<StatefulWidget> createState() {
    return _BaseExerciseBodyState();
  }
}

class _BaseExerciseBodyState extends State<_BaseExerciseBody> with SingleTickerProviderStateMixin {
  int animationLength = 200;

  @override
  void initState() {
    super.initState();
    BlocProvider.of<BaseTemplateBloc>(context).add(BaseTemplateEvent.showStandardScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BaseTemplateBloc, BaseTemplateState>(
      builder: (context, state) {
        if (state is Show) {
          return Container(
            color: Colors.white10,
            child: SizedBox.expand(
              child: Stack(
                children: <Widget>[
                  Background(),
                  SafeArea(
                    child: Stack(
                      children: <Widget>[
                        Align(
                          alignment: Alignment.topCenter,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 15,
                              width: 300,
                              child: CustomProgressBar(),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: bottomButtons(false),
                        ),
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: bottomButtons(true),
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: _getBottomCenterWidget(context),
                        ),
                        SizedBox.expand(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Container(height: 85),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Center(child: widget.child),
                                ),
                              ),
                              Container(height: 55 + 8.0)
                            ],
                          ),
                        ),
                        showHelp(state.showHelp, () {
                          BlocProvider.of<BaseTemplateBloc>(context).add(BaseTemplateEvent.showHelpDismissed());
                        }),
                        showAbort(state.showAbort, widget.onAbort, () {
                          BlocProvider.of<BaseTemplateBloc>(context).add(BaseTemplateEvent.showAbortDismissed());
                        })
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        }
        return Center(child: CircularProgressIndicator());
      },
    );
  }

  Widget _getBottomCenterWidget(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Container(
        height: 55,
        width: MediaQuery.of(context).size.width - 158,
        child: widget.centerBottomBarWidget ?? Container(),
      ),
    );
  }

  // ignore: avoid_positional_boolean_parameters
  Widget bottomButtons(bool close) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 55,
        height: 55,
        decoration: BoxDecoration(
          boxShadow: [BoxShadow(blurRadius: 1.0, spreadRadius: 0.5, offset: Offset(0.0, 2.0), color: Colors.black12)],
          borderRadius: BorderRadius.circular(8.0),
          color: close ? Color.fromRGBO(225, 80, 80, 1.0) : Color.fromRGBO(73, 220, 174, 1.0),
        ),
        child: InkWell(
          onTap: () {
            BlocProvider.of<BaseTemplateBloc>(context)
                .add(close ? BaseTemplateEvent.showAbortPressed() : BaseTemplateEvent.showHelpPressed());
          },
          child: Center(
            child: Text(
              close ? "X" : "?",
              style: GoogleFonts.reemKufi(
                  color: Colors.white, fontWeight: FontWeight.bold, fontSize: 40.0, letterSpacing: 0.1),
            ),
          ),
        ),
      ),
    );
  }

  // ignore: avoid_positional_boolean_parameters
  Widget showHelp(bool show, Function onTap) {
    var height = show ? 380.0 : 0.0;
    var width = show ? 380.0 : 0.0;
    var opacity = show ? 1.0 : 0.0;
    var opacity2 = show ? 0.5 : 0.0;

    return Stack(
      children: <Widget>[
        show
            ? SizedBox.expand(
                child: Container(
                child: AnimatedOpacity(
                  duration: Duration(milliseconds: animationLength),
                  child: Container(
                    color: Colors.black,
                  ),
                  opacity: opacity2,
                ),
              ))
            : Container(
                height: 0.0,
                width: 0.0,
              ),
        show
            ? GestureDetector(onTap: onTap)
            : Container(
                width: 0.0,
                height: 0.0,
              ),
        Align(
          alignment: Alignment.bottomRight,
          child: Padding(
            padding: EdgeInsets.only(bottom: 40.0, right: 12.0),
            child: AnimatedContainer(
              duration: Duration(milliseconds: animationLength),
              height: height,
              width: width,
              child: GestureDetector(
                onTap: onTap,
                child: AnimatedOpacity(
                    duration: Duration(milliseconds: animationLength),
                    opacity: opacity,
                    child: Stack(children: <Widget>[
                      SizedBox.expand(
                        child: CustomPaint(
                          painter: CustomHelpPainter(color: Colors.white),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Text(
                          widget.help,
                          textAlign: TextAlign.center,
                          style: GoogleFonts.reemKufi(fontSize: 26.0),
                        ),
                      )
                    ])),
              ),
            ),
          ),
        ),
      ],
    );
  }

  // ignore: avoid_positional_boolean_parameters
  Widget showAbort(bool show, Function onAbort, Function onDismiss) {
    if (show) {
      return SizedBox.expand(
        child: Stack(
          children: <Widget>[
            SizedBox.expand(
                child: GestureDetector(
              onTap: onDismiss,
              child: Container(
                color: Colors.black.withOpacity(0.4),
              ),
            )),
            Center(
              child: Container(
                height: 150,
                width: 300,
                child: Card(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Willst du wirklich aufgeben?",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.reemKufi(fontSize: 24.0),
                      ),
                      Container(
                        height: 10.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          RaisedButton(
                              color: Colors.greenAccent,
                              child: Text(
                                "Natürlich nicht",
                                style: GoogleFonts.reemKufi(fontSize: 16.0),
                              ),
                              onPressed: onDismiss),
                          RaisedButton(
                              color: Colors.redAccent,
                              child: Text(
                                "Leider schon",
                                style: GoogleFonts.reemKufi(fontSize: 16.0),
                              ),
                              onPressed: onAbort)
                        ],
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      );
    } else {
      return Container(
        height: 0.0,
        width: 0.0,
      );
    }
  }
}

class CustomHelpPainter extends CustomPainter {
  Color color;

  CustomHelpPainter({this.color});

  @override
  void paint(Canvas canvas, Size size) {
    var speechBubblePaint = Paint()
      ..color = color
      ..strokeWidth = 1.0
      ..style = PaintingStyle.fill;

    var speechBubble = Path();
    speechBubble.moveTo(0.0, size.height * 0.5);
    speechBubble.lineTo(0.0, size.height * 0.1);
    speechBubble.quadraticBezierTo(0.0, 0.0, size.width * 0.1, 0.0);
    speechBubble.lineTo(size.width * 0.9, 0.0);
    speechBubble.quadraticBezierTo(size.width, 0.0, size.width, size.height * 0.1);
    speechBubble.lineTo(size.width, size.height * 0.8);
    speechBubble.quadraticBezierTo(size.width, size.height * 0.9, size.width * 0.9, size.height * 0.9);
    speechBubble.lineTo(size.width * 0.75, size.height * 0.9);
    speechBubble.lineTo(size.width * 0.8, size.height);
    speechBubble.lineTo(size.width * 0.65, size.height * 0.9);
    speechBubble.lineTo(size.width * 0.1, size.height * 0.9);
    speechBubble.quadraticBezierTo(0.0, size.height * 0.9, 0.0, size.height * 0.8);

    canvas.drawPath(speechBubble, speechBubblePaint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
