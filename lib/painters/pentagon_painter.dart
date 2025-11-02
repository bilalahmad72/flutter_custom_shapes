import 'package:flutter/material.dart';

class PentagonPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final path = Path();

    path.moveTo(200, 0);
    path.lineTo(400, 150);
    path.lineTo(400, 150);
    path.lineTo(350, 350);
    path.lineTo(150, 350);
    path.lineTo(50, 350);
    path.lineTo(0, 150);
    path.close();

    final paint = Paint()
      ..color = Colors.pink
      ..strokeWidth = 10
      ..style = PaintingStyle.stroke;

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}