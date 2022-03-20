import 'package:flutter/material.dart';
import 'package:yoga_app/utils/app_constant.dart';

class HearderLeftPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0Stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;
    paint0Stroke.color = AppColors.kPrimary.withOpacity(0.22);
    paint0Stroke.strokeJoin = StrokeJoin.bevel;
    canvas.drawRRect(
        RRect.fromRectAndCorners(
            Rect.fromLTWH(size.width * -0.3348214, size.height * -0.4103774,
                size.width * 1.330357, size.height * 1.405660),
            bottomRight: Radius.circular(size.width * 0.6651786),
            bottomLeft: Radius.circular(size.width * 0.6651786),
            topLeft: Radius.circular(size.width * 0.6651786),
            topRight: Radius.circular(size.width * 0.6651786)),
        paint0Stroke);

    Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.color = AppColors.kWhite.withOpacity(1.0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class HearderRightPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {

    Paint paint0Stroke = Paint()..style=PaintingStyle.stroke..strokeWidth=2;
    paint0Stroke.color=AppColors.kPrimary.withOpacity(0.22);
    paint0Stroke.strokeJoin = StrokeJoin.bevel;
    canvas.drawRRect(RRect.fromRectAndCorners(Rect.fromLTWH(size.width*0.2715054,size.height*-0.1613757,size.width*0.8924731,size.height*0.8783069),bottomRight: Radius.circular(size.width*0.4462366),bottomLeft:  Radius.circular(size.width*0.4462366),topLeft:  Radius.circular(size.width*0.4462366),topRight:  Radius.circular(size.width*0.4462366)),paint0Stroke);

    Paint paint1Stroke = Paint()..style=PaintingStyle.stroke..strokeWidth=2;
    paint1Stroke.color=AppColors.kPrimary.withOpacity(0.22);
    paint1Stroke.strokeJoin = StrokeJoin.bevel;
    canvas.drawRRect(RRect.fromRectAndCorners(Rect.fromLTWH(size.width*0.1209677,size.height*-0.3095238,size.width*1.198925,size.height*1.179894),bottomRight: Radius.circular(size.width*0.5994624),bottomLeft:  Radius.circular(size.width*0.5994624),topLeft:  Radius.circular(size.width*0.5994624),topRight:  Radius.circular(size.width*0.5994624)),paint1Stroke);

    Paint paint2Stroke = Paint()..style=PaintingStyle.stroke..strokeWidth=2;
    paint2Stroke.color=AppColors.kPrimary.withOpacity(0.22);
    paint2Stroke.strokeJoin = StrokeJoin.bevel;
    canvas.drawRRect(RRect.fromRectAndCorners(Rect.fromLTWH(size.width*0.002688172,size.height*-0.3412698,size.width*1.360215,size.height*1.338624),bottomRight: Radius.circular(size.width*0.6639785),bottomLeft:  Radius.circular(size.width*0.6639785),topLeft:  Radius.circular(size.width*0.6639785),topRight:  Radius.circular(size.width*0.6639785)),paint2Stroke);

    Paint paint3Stroke = Paint()..style=PaintingStyle.stroke..strokeWidth=2;
    paint3Stroke.color=AppColors.kPrimary.withOpacity(0.22);
    paint3Stroke.strokeJoin = StrokeJoin.bevel;
    canvas.drawRRect(RRect.fromRectAndCorners(Rect.fromLTWH(size.width*0.3575269,size.height*-0.1613757,size.width*0.8010753,size.height*0.7883598),bottomRight: Radius.circular(size.width*0.4005376),bottomLeft:  Radius.circular(size.width*0.4005376),topLeft:  Radius.circular(size.width*0.4005376),topRight:  Radius.circular(size.width*0.4005376)),paint3Stroke);

  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class RectanglePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {

    Path path_0 = Path();
    path_0.moveTo(0,size.height*0.6875000);
    path_0.cubicTo(0,size.height*0.3078044,size.width*0.1026015,0,size.width*0.2291667,0);
    path_0.lineTo(size.width*0.7708333,0);
    path_0.cubicTo(size.width*0.8973979,0,size.width,size.height*0.3078044,size.width,size.height*0.6875000);
    path_0.lineTo(size.width,size.height);
    path_0.lineTo(0,size.height);
    path_0.lineTo(0,size.height*0.6875000);
    path_0.close();

    Paint paint0Fill = Paint()..style=PaintingStyle.fill;
    paint0Fill.color = AppColors.kPrimary.withOpacity(0.56);
    canvas.drawPath(path_0,paint0Fill);

  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}