import 'package:flutter/material.dart';

class ParallelogramPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final path = Path();

    final scaleX = size.width / 400;
    final scaleY = size.height / 400;

    path.moveTo(50 * scaleX, 0 * scaleY);
    path.lineTo(350 * scaleX, 0 * scaleY);
    path.lineTo(300 * scaleX, 200 * scaleY);
    path.lineTo(0 * scaleX, 200 * scaleY);
    path.close();

    final paint = Paint()..color = Colors.orange;

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}