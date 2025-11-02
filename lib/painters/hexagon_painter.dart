import 'package:flutter/material.dart';

class HexagonPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final path = Path();

    path.moveTo(100, 0);
    path.lineTo(300, 0);
    path.lineTo(400, 200);
    path.lineTo(300, 400);
    path.lineTo(100, 400);
    path.lineTo(0, 200);
    path.close();

    final paint = Paint()..color = Colors.purple;

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}