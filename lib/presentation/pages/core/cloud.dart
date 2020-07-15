import "package:flutter/material.dart";

class Cloud extends StatelessWidget {
  final double opacity;
  final Widget child;

  const Cloud({this.opacity, this.child, key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      SizedBox.expand(
        child: Opacity(
          opacity: opacity ?? 1.0,
          child: CustomPaint(
            painter: _CloudPainter(opacity: 1.0),
          ),
        ),
      ),
      child ?? Container(),
    ]);
  }
}

class _CloudPainter extends CustomPainter {
  double opacity;
  _CloudPainter({this.opacity});
  @override
  void paint(Canvas canvas, Size size) {
    var lightCloud = Paint()
      ..color = Color.fromRGBO(225, 245, 254, opacity)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1.0;

    var darkCloud = Paint()
      ..color = Color.fromRGBO(208, 237, 250, opacity)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1.0;

    canvas.drawOval(_getOvalRect(0, 0.324, 0.508, 0.919, size), darkCloud);
    canvas.drawOval(_getOvalRect(0.306, 0.378, 0.823, 1.0, size), darkCloud);
    canvas.drawOval(_getOvalRect(0.702, 0.405, 1.0, 0.689, size), darkCloud);

    canvas.drawOval(_getOvalRect(0.121, 0.419, 0.403, 0.73, size), lightCloud);
    canvas.drawOval(_getOvalRect(0.371, 0.5, 0.685, 0.878, size), lightCloud);
    canvas.drawOval(_getOvalRect(0.089, 0.108, 0.984, 0.649, size), lightCloud);
    canvas.drawOval(_getOvalRect(0.153, 0.068, 0.589, 0.351, size), lightCloud);
    canvas.drawOval(_getOvalRect(0.484, 0.0, 0.976, 0.284, size), lightCloud);
  }

  Rect _getOvalRect(double x1, double y1, double x2, double y2, Size size) {
    return Rect.fromPoints(Offset(size.width * x1, size.height * y1), Offset(size.width * x2, size.height * y2));
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
