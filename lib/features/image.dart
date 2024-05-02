

// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

class ImageCurve extends CustomPainter {
    @override
    void paint(Canvas canvas, Size size) {
            
Path path_0 = Path();
    path_0.moveTo(size.width,0);
    path_0.lineTo(size.width*-0.1617647,0);
    path_0.lineTo(size.width*-0.1617647,size.height);
    path_0.cubicTo(size.width*0.01646059,size.height*0.8992810,size.width*0.2870993,size.height*0.7338140,size.width*0.7572059,size.height*0.6031198);
    path_0.cubicTo(size.width*0.8991912,size.height*0.4132893,size.width*0.9815735,size.height*0.2086550,size.width,0);
    path_0.close();

Paint paint_0_fill = Paint()..style=PaintingStyle.fill;
paint_0_fill.color = Colors.red;
canvas.drawPath(path_0,paint_0_fill);

}

@override
bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
}
}