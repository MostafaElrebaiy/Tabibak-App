import 'package:flutter/material.dart';

//Copy this CustomPainter code to the Bottom of the File
class Blood2 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width, size.height * 0.6822902);
    path_0.cubicTo(size.width, size.height * 0.8548808, size.width * 0.5987100,
        0, size.width * 0.3193855, 0);
    path_0.cubicTo(
        size.width * 0.04005860,
        0,
        size.width * -0.3600000,
        size.height * 0.7871710,
        size.width * -0.3600000,
        size.height * 0.6145855);
    path_0.cubicTo(
        size.width * -0.3600000,
        size.height * 0.4419943,
        size.width * -0.01084350,
        size.height,
        size.width * 0.3314535,
        size.height);
    path_0.cubicTo(size.width * 0.6107800, size.height, size.width,
        size.height * 0.5097026, size.width, size.height * 0.6822902);
    path_0.close();

    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.color = Color(0xffBCCEFB).withOpacity(1.0);
    canvas.drawPath(path_0, paint_0_fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
