import 'package:flutter/material.dart';

class RhombusPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint
    final path = Path();

    final scaleX = size.width / 400;
    final scaleY = size.height / 400;

    path.moveTo(200 * scaleX, 0 * scaleY);
    path.lineTo(300 * scaleX, 200 * scaleY);
    path.lineTo(200 * scaleX, 400 * scaleY);
    path.lineTo(100 * scaleX, 200 * scaleY);
    path.close();

    final paint = Paint()..color = Colors.lightGreen;
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}