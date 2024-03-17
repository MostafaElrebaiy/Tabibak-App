import 'package:flutter/material.dart';

//Copy this CustomPainter code to the Bottom of the File
class BloodImage extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.4829932, size.height * 0.8641145);
    path_0.cubicTo(
        size.width * 0.4829932,
        size.height * 0.9030280,
        size.width * 0.3919977,
        size.height * 0.7102804,
        size.width * 0.3286587,
        size.height * 0.7102804);
    path_0.cubicTo(
        size.width * 0.2653197,
        size.height * 0.7102804,
        size.width * 0.1746032,
        size.height * 0.8877617,
        size.width * 0.1746032,
        size.height * 0.8488493);
    path_0.cubicTo(
        size.width * 0.1746032,
        size.height * 0.8099357,
        size.width * 0.2537766,
        size.height * 0.9357477,
        size.width * 0.3313957,
        size.height * 0.9357477);
    path_0.cubicTo(
        size.width * 0.3947347,
        size.height * 0.9357477,
        size.width * 0.4829932,
        size.height * 0.8252021,
        size.width * 0.4829932,
        size.height * 0.8641145);
    path_0.close();

    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.color = Color(0xffBCCEFB).withOpacity(1.0);
    canvas.drawPath(path_0, paint_0_fill);

    Path path_1 = Path();
    path_1.moveTo(size.width, size.height * 0.6472208);
    path_1.cubicTo(size.width, size.height * 0.8109381, size.width * 0.7049354,
        0, size.width * 0.4995476, 0);
    path_1.cubicTo(size.width * 0.2941610, 0, 0, size.height * 0.7467103, 0,
        size.height * 0.5829930);
    path_1.cubicTo(
        0,
        size.height * 0.4192745,
        size.width * 0.2567324,
        size.height * 0.9485981,
        size.width * 0.5084218,
        size.height * 0.9485981);
    path_1.cubicTo(size.width * 0.7138095, size.height * 0.9485981, size.width,
        size.height * 0.4835035, size.width, size.height * 0.6472208);
    path_1.close();

    Paint paint_1_fill = Paint()..style = PaintingStyle.fill;
    paint_1_fill.color = Color(0xff0070CD).withOpacity(1.0);
    canvas.drawPath(path_1, paint_1_fill);

    Path path_2 = Path();
    path_2.moveTo(size.width * 0.8185941, size.height * 0.9003727);
    path_2.cubicTo(
        size.width * 0.8185941,
        size.height * 0.9354544,
        size.width * 0.7152211,
        size.height * 0.7616822,
        size.width * 0.6432653,
        size.height * 0.7616822);
    path_2.cubicTo(
        size.width * 0.5713107,
        size.height * 0.7616822,
        size.width * 0.4682540,
        size.height * 0.9216916,
        size.width * 0.4682540,
        size.height * 0.8866098);
    path_2.cubicTo(
        size.width * 0.4682540,
        size.height * 0.8515269,
        size.width * 0.5581973,
        size.height * 0.9649533,
        size.width * 0.6463741,
        size.height * 0.9649533);
    path_2.cubicTo(
        size.width * 0.7183299,
        size.height * 0.9649533,
        size.width * 0.8185941,
        size.height * 0.8652897,
        size.width * 0.8185941,
        size.height * 0.9003727);
    path_2.close();

    Paint paint_2_fill = Paint()..style = PaintingStyle.fill;
    paint_2_fill.color = Color(0xff0D8BFF).withOpacity(0.2);
    canvas.drawPath(path_2, paint_2_fill);

    Path path_3 = Path();
    path_3.moveTo(size.width * 0.8185941, size.height * 0.9242850);
    path_3.cubicTo(
        size.width * 0.8185941,
        size.height * 0.9654159,
        size.width * 0.7275986,
        size.height * 0.7616822,
        size.width * 0.6642596,
        size.height * 0.7616822);
    path_3.cubicTo(
        size.width * 0.6009206,
        size.height * 0.7616822,
        size.width * 0.5102041,
        size.height * 0.9492792,
        size.width * 0.5102041,
        size.height * 0.9081484);
    path_3.cubicTo(
        size.width * 0.5102041,
        size.height * 0.8670175,
        size.width * 0.5893776,
        size.height,
        size.width * 0.6669966,
        size.height);
    path_3.cubicTo(
        size.width * 0.7303356,
        size.height,
        size.width * 0.8185941,
        size.height * 0.8831530,
        size.width * 0.8185941,
        size.height * 0.9242850);
    path_3.close();

    Paint paint_3_fill = Paint()..style = PaintingStyle.fill;
    paint_3_fill.color = Color(0xffBCCEFB).withOpacity(1.0);
    canvas.drawPath(path_3, paint_3_fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
