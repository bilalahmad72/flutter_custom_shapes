import 'package:flutter/material.dart';
import 'package:flutter_custom_shapes/painters/heptagon_painter.dart';
import 'package:flutter_custom_shapes/painters/hexagon_painter.dart';
import 'package:flutter_custom_shapes/painters/octagon_painter.dart';
import 'package:flutter_custom_shapes/painters/parallelogram_painter.dart';
import 'package:flutter_custom_shapes/painters/pentagon_painter.dart';
import 'package:flutter_custom_shapes/painters/quadrilateral_painter.dart';
import 'package:flutter_custom_shapes/painters/rectangle_painter.dart';
import 'package:flutter_custom_shapes/painters/rhombus_painter.dart';
import 'package:flutter_custom_shapes/painters/square_painter.dart';
import 'package:flutter_custom_shapes/painters/triangle_painter.dart';

class PainterShapes extends StatelessWidget {
  const PainterShapes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// appbar
      appBar: AppBar(centerTitle: true, title: Text("Custom Shapes")),

      /// body
      body: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          padding: EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            spacing: 50,
            children: [
              CustomPaint(painter: SquarePainter(), size: Size(400, 400)),
              CustomPaint(painter: RectanglePainter(), size: Size(300, 200)),
              CustomPaint(painter: TrianglePainter(), size: Size(400, 400)),
              CustomPaint(painter: QuadrilateralPainter(), size: Size(400, 400)),
              CustomPaint(painter: PentagonPainter(), size: Size(400, 400)),
              CustomPaint(painter: HexagonPainter(), size: Size(400, 400)),
              CustomPaint(painter: HeptagonPainter(), size: Size(400, 400)),
              CustomPaint(painter: OctagonPainter(), size: Size(400, 400)),
              CustomPaint(painter: RhombusPainter(), size: Size(400, 400)),
              CustomPaint(painter: ParallelogramPainter(), size: Size(400, 400)),
            ],
          ),
        ),
      ),
    );
  }
}