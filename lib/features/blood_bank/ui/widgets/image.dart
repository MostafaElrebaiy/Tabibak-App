import 'package:flutter/material.dart';

//Copy this CustomPainter code to the Bottom of the File
class BloodImage extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 1.749333, size.height * 0.4000488);
    path_0.cubicTo(
        size.width * 1.749333,
        size.height * 0.7259605,
        size.width * 1.055341,
        size.height * -0.8883721,
        size.width * 0.5722693,
        size.height * -0.8883721);
    path_0.cubicTo(
        size.width * 0.08919947,
        size.height * -0.8883721,
        size.width * -0.6026667,
        size.height * 0.5981023,
        size.width * -0.6026667,
        size.height * 0.2721907);
    path_0.cubicTo(
        size.width * -0.6026667,
        size.height * -0.05372233,
        size.width * 0.001168661,
        size.height,
        size.width * 0.5931413,
        size.height);
    path_0.cubicTo(
        size.width * 1.076213,
        size.height,
        size.width * 1.749333,
        size.height * 0.07413628,
        size.width * 1.749333,
        size.height * 0.4000488);
    path_0.close();

    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.color = Color(0xff0070CD).withOpacity(1.0);
    canvas.drawPath(path_0, paint_0_fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
