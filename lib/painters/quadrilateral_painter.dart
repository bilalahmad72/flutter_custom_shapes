import 'package:flutter/material.dart';

class QuadrilateralPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint
    final path = Path();

    path.moveTo(150, 100);
    path.lineTo(300, 150);
    path.lineTo(350, 250);
    path.lineTo(100, 300);
    path.close();

    final paint = Paint()..color = Colors.green;
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}