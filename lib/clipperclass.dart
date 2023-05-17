import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottleCliper extends CustomClipper<Path>{
  @override
  getClip(Size size) {
    Path path0=Path();
    path0.moveTo(size.width*0.0413583,size.height*0.2834857);
    path0.lineTo(size.width*0.0391667,size.height*0.7842857);
    path0.lineTo(size.width*0.5801750,size.height*0.7869286);
    path0.lineTo(size.width*0.7900000,size.height*0.6400000);
    path0.lineTo(size.width*0.9986250,size.height*0.6386857);
    path0.lineTo(size.width*0.9959417,size.height*0.4294429);
    path0.lineTo(size.width*0.7891667,size.height*0.4271429);
    path0.lineTo(size.width*0.5823667,size.height*0.2828857);
    path0.lineTo(size.width*0.0413583,size.height*0.2834857);

    path0.close();





    return path0;

  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) =>true;
}





class BottlePaint extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {


    Paint paint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth=3.0

      ..shader = LinearGradient(
        colors:  [
         const   Color(0xffe4d4b6).withOpacity(0.8),
         const  Color(0xffe4d4b6).withOpacity(0.8),
        ],
      ).createShader(Rect.fromCircle(
        center:const  Offset(100,-60),
        radius: 100,
      ));


    // ..color = Colors.black;


    Path path0=Path();
    path0.moveTo(size.width*0.0413583,size.height*0.2834857);
    path0.lineTo(size.width*0.0391667,size.height*0.7842857);
    path0.lineTo(size.width*0.5801750,size.height*0.7869286);
    path0.lineTo(size.width*0.7900000,size.height*0.6400000);
    path0.lineTo(size.width*0.9986250,size.height*0.6386857);
    path0.lineTo(size.width*0.9959417,size.height*0.4294429);
    path0.lineTo(size.width*0.7891667,size.height*0.4271429);
    path0.lineTo(size.width*0.5823667,size.height*0.2828857);
    path0.lineTo(size.width*0.0413583,size.height*0.2834857);

    path0.close();
    canvas.drawPath(path0, paint);







  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) =>true;
    // TODO: implement shouldRepaint

  }





class ButtonClipper extends CustomClipper<Path>{
  @override
  getClip(Size size) {

    Path path0 = Path();
    path0.moveTo(size.width*0.9300000,size.height*0.9750000);
    path0.lineTo(size.width*0.0643500,size.height*0.9814000);
    path0.quadraticBezierTo(size.width*-0.0329875,size.height*0.3757000,size.width*0.0640125,size.height*0.1648000);
    path0.quadraticBezierTo(size.width*0.2333125,size.height*-0.0625000,size.width*0.4962500,size.height*0.7450000);
    path0.quadraticBezierTo(size.width*0.7406125,size.height*0.0460500,size.width*0.9325000,size.height*0.1300000);
    path0.quadraticBezierTo(size.width*1.0480875,size.height*0.5096000,size.width*0.9324625,size.height*0.9764500);
    path0.lineTo(size.width*0.9350000,size.height*0.3450000);
    path0.close();





    return path0;

  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) =>true;
}