import 'package:flutter/material.dart';

class LoginImage extends CustomPainter {
    @override
    void paint(Canvas canvas, Size size) {
            
Path path_0 = Path();
    path_0.moveTo(size.width*0.001333333,size.height*0.9594872);
    path_0.lineTo(size.width*0.001333333,size.height*0.001275510);
    path_0.lineTo(size.width*1.142667,size.height*0.001275510);
    path_0.lineTo(size.width*1.142667,size.height*0.4569796);
    path_0.cubicTo(size.width*1.087531,size.height*0.4839974,size.width*1.016491,size.height*0.5296837,size.width*0.9371547,size.height*0.5833597);
    path_0.cubicTo(size.width*0.9037840,size.height*0.6059362,size.width*0.8689493,size.height*0.6299235,size.width*0.8332027,size.height*0.6545408);
    path_0.cubicTo(size.width*0.7835413,size.height*0.6887423,size.width*0.7321147,size.height*0.7241556,size.width*0.6803947,size.height*0.7586913);
    path_0.cubicTo(size.width*0.5914693,size.height*0.8180714,size.width*0.5017840,size.height*0.8747832,size.width*0.4189707,size.height*0.9180842);
    path_0.cubicTo(size.width*0.3361280,size.height*0.9614031,size.width*0.2603032,size.height*0.9912219,size.width*0.1990715,size.height*0.9969541);
    path_0.cubicTo(size.width*0.1172672,size.height*1.004444,size.width*0.05232293,size.height*0.9874413,size.width*0.001333333,size.height*0.9594872);
    path_0.close();

Paint paint0Stroke = Paint()..style=PaintingStyle.stroke..strokeWidth=2;
paint0Stroke.color=Colors.black.withOpacity(1.0);
canvas.drawPath(path_0,paint0Stroke);

Paint paint0Fill = Paint()..style=PaintingStyle.fill;
paint0Fill.color = const Color(0xff0070CD).withOpacity(1.0);
canvas.drawPath(path_0,paint0Fill);

Path path_1 = Path();
    path_1.moveTo(size.width*1.145267,0);
    path_1.lineTo(size.width*0.5021253,0);
    path_1.cubicTo(size.width*0.5053173,size.height*0.08651020,size.width*0.5541627,size.height*0.1694426,size.width*0.6399467,size.height*0.2339926);
    path_1.cubicTo(size.width*0.7257280,size.height*0.2985434,size.width*0.8428640,size.height*0.3405077,size.width*0.9704373,size.height*0.3523954);
    path_1.cubicTo(size.width*1.037523,size.height*0.3244235,size.width*1.097696,size.height*0.3008903,size.width*1.145267,size.height*0.2862730);
    path_1.lineTo(size.width*1.145267,0);
    path_1.close();

Paint paint1Fill = Paint()..style=PaintingStyle.fill;
paint1Fill.color = const Color(0xFF338dd7).withOpacity(1.0);
canvas.drawPath(path_1,paint1Fill);

}

@override
bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
}
}