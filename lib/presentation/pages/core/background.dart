import "package:flutter/material.dart";

class Background extends StatelessWidget {
  const Background({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: CustomPaint(
        painter: _BackgroundPainter(),
      ),
    );
  }
}

class _BackgroundPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var cloudPaintDarkerSky = Paint()
      ..color = Color.fromRGBO(213, 241, 254, 1)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1.0;

    var cloudPaintLighterSky = Paint()
      ..color = Color.fromRGBO(225, 245, 254, 1)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1.0;

    var cloudPaintdark = Paint()
      ..strokeWidth = 1.0
      ..style = PaintingStyle.fill
      ..color = Color.fromRGBO(166, 223, 249, 1);

    var background = Rect.fromLTRB(0.0, 0.0, size.width, size.height);
    canvas.drawRect(background, cloudPaintdark);

    var darkerSky = Path();
    darkerSky.moveTo(0.0, 0.0);
    darkerSky.lineTo(size.width, 0.0);
    darkerSky.lineTo(size.width, size.height * 0.10);

    darkerSky.quadraticBezierTo(size.width * 0.85, size.height * 0.17, size.width * 0.7, size.height * 0.12);
    darkerSky.quadraticBezierTo(size.width * 0.655, size.height * 0.17, size.width * 0.58, size.height * 0.13);
    darkerSky.quadraticBezierTo(size.width * 0.42, size.height * 0.20, size.width * 0.26, size.height * 0.13);
    darkerSky.quadraticBezierTo(size.width * 0.19, size.height * 0.16, size.width * 0.12, size.height * 0.12);
    darkerSky.quadraticBezierTo(size.width * 0.05, size.height * 0.15, 0.0, size.height * 0.12);

    darkerSky.lineTo(0.0, 0.0);
    canvas.drawPath(darkerSky, cloudPaintDarkerSky);

    var lighterSky = Path();
    lighterSky.moveTo(0.0, 0.0);
    lighterSky.lineTo(size.width, 0.0);
    lighterSky.lineTo(size.width, size.height * 0.08);

    lighterSky.quadraticBezierTo(size.width * 0.8, size.height * 0.16, size.width * 0.6, size.height * 0.06);
    lighterSky.quadraticBezierTo(size.width * 0.4, size.height * 0.16, size.width * 0.2, size.height * 0.06);
    lighterSky.quadraticBezierTo(size.width * 0.1, size.height * 0.11, 0.0, size.height * 0.09);

    lighterSky.lineTo(0.0, 0.0);

    canvas.drawPath(lighterSky, cloudPaintLighterSky);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
