import 'package:flutter/material.dart';

class HeptagonPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final path = Path();

    /// for making responsive its good
    final scaleX = size.width / 400;
    final scaleY = size.height / 400;

    path.moveTo(200 * scaleX, 0 * scaleY);
    path.lineTo(300 * scaleX, 75 * scaleY);
    path.lineTo(350 * scaleX, 200 * scaleY);
    path.lineTo(275 * scaleX, 300 * scaleY);
    path.lineTo(125 * scaleX, 300 * scaleY);
    path.lineTo(50 * scaleX, 200 * scaleY);
    path.lineTo(100 * scaleX, 75 * scaleY);
    path.close();

    final paint = Paint()..color = Colors.lightGreen;

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}