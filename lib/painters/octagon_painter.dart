import 'package:flutter/material.dart';

class OctagonPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final path = Path();

    final scaleX = size.width / 400;
    final scaleY = size.height / 400;

    path.moveTo(125 * scaleX, 0 * scaleY);
    path.lineTo(275 * scaleX, 0 * scaleY);
    path.lineTo(350 * scaleX, 100 * scaleY);
    path.lineTo(350 * scaleX, 300 * scaleY);
    path.lineTo(275 * scaleX, 400 * scaleY);
    path.lineTo(125 * scaleX, 400 * scaleY);
    path.lineTo(50 * scaleX, 300 * scaleY);
    path.lineTo(50 * scaleX, 100 * scaleY);
    path.close();

    final paint = Paint()..color = Colors.deepOrange;

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}