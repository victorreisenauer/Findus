import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";

import "../../../application/lesson/progress/progress_bloc.dart";

class CustomProgressBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProgressBloc, ProgressState>(builder: (context, state) {
      if (state is ProgressUpdated) {
        print("Progress Updated");
        return _CustomProgressBar(state.totalExercises, state.alreadyDone);
      }
      return LinearProgressIndicator();
    });
  }
}

class _CustomProgressBar extends StatefulWidget {
  final int totalExercises;
  final List<bool> alreadyDone;
  _CustomProgressBar(this.totalExercises, this.alreadyDone);

  @override
  State<StatefulWidget> createState() {
    return _CustomProgressBarState();
  }
}

class _CustomProgressBarState extends State<_CustomProgressBar> with SingleTickerProviderStateMixin {
  AnimationController _controller;

  Animation<double> curve;
  Tween<double> progressTween;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(duration: Duration(milliseconds: 200), vsync: this);

    curve = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeOut,
    );

    progressTween = Tween<double>(
      begin: 0,
      end: 1,
    );

    _controller.forward();
  }

  @override
  void didUpdateWidget(_CustomProgressBar oldWidget) {
    super.didUpdateWidget(oldWidget);

    print(widget.alreadyDone.length);
    print(oldWidget.alreadyDone.length);
    print("New Animation request");

    if (widget.alreadyDone.length != oldWidget.alreadyDone.length) {
      print("New Animation");

      progressTween = Tween<double>(
        begin: 0,
        end: 1,
      );

      _controller
        ..value = 0
        ..forward();
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: _controller,
        child: Container(),
        builder: (context, child) {
          return CustomPaint(
            painter:
                _CustomProgressBarPainter(widget.totalExercises, widget.alreadyDone, progressTween.evaluate(curve)),
          );
        });
  }
}

class _CustomProgressBarPainter extends CustomPainter {
  final int totalExercises;
  final List<bool> alreadyDone;
  final double animate;

  _CustomProgressBarPainter(this.totalExercises, this.alreadyDone, this.animate);

  @override
  void paint(Canvas canvas, Size size) {
    /*print("TotalExercises: " + totalExercises.toString());
    print("AlreadyDone: " + alreadyDone.toString());
    print("Animate: " + animate.toString());*/

    var basePaintOutline = Paint()
      ..color = Color.fromRGBO(66, 76, 86, 1)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1.0;

    var basePaint = Paint()
      ..color = Colors.white70
      ..style = PaintingStyle.fill
      ..strokeWidth = 1.0;

    var progressPaint = Paint()
      ..color = Color.fromRGBO(28, 57, 86, 1)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1.0;

    var baseRect = Rect.fromLTRB(0, 0, size.width, size.height);
    var baseRRect = RRect.fromRectAndRadius(baseRect, Radius.circular(10.0));

    var progressRect = Rect.fromLTRB(0, 0, size.width * animate, size.height);
    var progressRRect = RRect.fromRectAndRadius(progressRect, Radius.circular(10.0));

    canvas.drawRRect(baseRRect, basePaint);
    canvas.drawRRect(baseRRect, basePaintOutline);
    canvas.drawRRect(progressRRect, progressPaint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    final oldPainter = (oldDelegate as _CustomProgressBarPainter);
    return oldPainter.animate != animate;
  }
}
