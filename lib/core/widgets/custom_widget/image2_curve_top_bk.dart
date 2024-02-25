import 'package:flutter/material.dart';

class ForgetImage extends CustomPainter {
    @override
    void paint(Canvas canvas, Size size) {
            
Path path_0 = Path();

    path_0.moveTo(size.width*0.001705176,size.height*0.5485893);
    path_0.lineTo(size.width*0.001705247,size.height*0.4420063);
    path_0.lineTo(size.width*0.001705176,0);
    path_0.lineTo(size.width*0.001705176,size.height*0.8041034);
    path_0.cubicTo(size.width*0.001705286,size.height*0.6598746,size.width*-0.002131477,size.height*0.6642163,size.width*0.001705176,size.height*0.5485893);
    path_0.close();

Paint paint0Fill = Paint()..style=PaintingStyle.fill;
paint0Fill.color = const Color(0xFF338dd7).withOpacity(1.0);
canvas.drawPath(path_0,paint0Fill);

Path path_1 = Path();
    path_1.moveTo(size.width*0.9994150,0);
    path_1.lineTo(size.width*0.001705176,0);
    path_1.lineTo(size.width*0.001705176,size.height*0.8041034);
    path_1.cubicTo(size.width*0.05449402,size.height*0.6641473,size.width*0.1982243,size.height*0.2870408,size.width*0.4919028,size.height*0.3345549);
    path_1.cubicTo(size.width*0.7637121,size.height*0.3785298,size.width*0.8749925,size.height*0.6876740,size.width*0.9994150,size.height*0.9974734);
    path_1.lineTo(size.width*0.9994150,0);
    path_1.close();

Paint paint1Fill = Paint()..style=PaintingStyle.fill;
paint1Fill.color = const Color(0xff0070CD).withOpacity(1.0);
canvas.drawPath(path_1,paint1Fill);

Path path_2 = Path();
    path_2.moveTo(size.width*0.3523364,0);
    path_2.lineTo(size.width*0.0009345794,0);
    path_2.lineTo(size.width*0.0009345794,size.height*0.8025078);
    path_2.cubicTo(size.width*0.03457944,size.height*0.7084639,size.width*0.1476636,size.height*0.4467085,size.width*0.2915888,size.height*0.3714734);
    path_2.cubicTo(size.width*0.3335888,size.height*0.2905307,size.width*0.3475327,size.height*0.1499276,size.width*0.3523364,0);
    path_2.close();

Paint paint2Fill = Paint()..style=PaintingStyle.fill;
paint2Fill.color = const Color(0xFF338dd7).withOpacity(1.0);
canvas.drawPath(path_2,paint2Fill);

}

@override
bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
}
}