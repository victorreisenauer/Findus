import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lrs_app_v3/application/lesson/progress/progress_bloc.dart';

class CustomProgressBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProgressBloc, ProgressState>(builder: (context, state) {
      if (state is ProgressUpdated) {
        print("Progress Updated");
        return _CustomProgressBar(state.currentProgress);
      }
      return LinearProgressIndicator();
    });
  }
}

class _CustomProgressBar extends StatefulWidget {
  double currentProgress;
  _CustomProgressBar(this.currentProgress);

  @override
  State<StatefulWidget> createState() {
    return _CustomProgressBarState();
  }
}

class _CustomProgressBarState extends State<_CustomProgressBar>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;

  Animation<double> curve;
  Tween<double> progressTween;

  @override
  void initState() {
    super.initState();

    _controller =
        AnimationController(duration: Duration(milliseconds: 200), vsync: this);

    curve = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeOut,
    );

    progressTween = Tween<double>(
      begin: 0,
      end: widget.currentProgress,
    );

    _controller.forward();
  }

  @override
  void didUpdateWidget(_CustomProgressBar oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (this.widget.currentProgress != oldWidget.currentProgress) {
      double beginValue = this.progressTween?.evaluate(curve) ??
          oldWidget?.currentProgress ??
          0;

      progressTween = Tween<double>(
        begin: beginValue,
        end: widget.currentProgress ?? 1,
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
            painter: _CustomProgressBarPainter(progressTween.evaluate(curve)),
          );
        });
  }
}

class _CustomProgressBarPainter extends CustomPainter {
  final double progress;

  _CustomProgressBarPainter(this.progress);

  @override
  void paint(Canvas canvas, Size size) {
    Paint basePaintOutline = Paint()
      ..color = Color.fromRGBO(66, 76, 86, 1)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1.0;

    Paint basePaint = Paint()
      ..color = Colors.white70
      ..style = PaintingStyle.fill
      ..strokeWidth = 1.0;

    Paint progressPaint = Paint()
      ..color = Color.fromRGBO(28, 57, 86, 1)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1.0;

    Rect baseRect = Rect.fromLTRB(0, 0, size.width, size.height);
    RRect baseRRect = RRect.fromRectAndRadius(baseRect, Radius.circular(10.0));

    Rect progressRect = Rect.fromLTRB(0, 0, size.width * progress, size.height);
    RRect progressRRect =
        RRect.fromRectAndRadius(progressRect, Radius.circular(10.0));

    canvas.drawRRect(baseRRect, basePaint);
    canvas.drawRRect(baseRRect, basePaintOutline);
    canvas.drawRRect(progressRRect, progressPaint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    final oldPainter = (oldDelegate as _CustomProgressBarPainter);
    return oldPainter.progress != this.progress;
  }
}
