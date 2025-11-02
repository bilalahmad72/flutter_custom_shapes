# Flutter Custom Shapes Guide

A comprehensive guide to creating custom shapes using Flutter's `CustomPainter` class.

## Table of Contents

- [Understanding Coordinates System](#understanding-coordinates-system)
- [Basic Setup](#basic-setup)
- [Scaling Explained](#scaling-explained)
- [Shape Examples](#shape-examples)
    - [Box (Square)](#1-box-square)
    - [Rectangle](#2-rectangle)
    - [Triangle](#3-triangle)
    - [Circle](#4-circle)

---

## Understanding Coordinates System

In Flutter's canvas, the coordinate system works as follows:

- **Origin (0, 0)** is at the **top-left corner**
- **X-axis** increases from **left to right**
- **Y-axis** increases from **top to bottom**

### Example for a 400x400 canvas:

```
(0,0) ────────────────────→ (400,0)
  │                            │
  │      Canvas Area           │
  │      400 x 400             │
  │                            │
  ↓                            ↓
(0,400) ──────────────────→ (400,400)
```

---

## Basic Setup

### 1. Create CustomPainter Class

```dart
import 'package:flutter/material.dart';

class ShapePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final path = Path();

    // Scaling factors
    final scaleX = size.width / 400;
    final scaleY = size.height / 400;

    // Your shape drawing code here

    final paint = Paint()
      ..color = Colors.blue
      ..style = PaintingStyle.fill;

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
```

### 2. Use in Widget

```dart
class ShapeWidget extends StatelessWidget {
  const ShapeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Custom Shapes"),
      ),
      body: Center(
        child: SizedBox(
          height: 400,
          width: 400,
          child: CustomPaint(
            painter: ShapePainter(),
            size: Size(400, 400),
          ),
        ),
      ),
    );
  }
}
```

---

## Scaling Explained

**Why do we use scaling?**

Scaling ensures your shape adapts to any widget size while maintaining proportions.

### Formula:

```dart

final scaleX = size.width / baseWidth;
final scaleY = size.height / baseHeight;
```

### Example:

If you design for **400x400** but widget is **200x200**:

- `scaleX = 200 / 400 = 0.5`
- `scaleY = 200 / 400 = 0.5`
- All coordinates multiply by 0.5 (shape shrinks proportionally)

---

## Shape Examples

### 1. Box (Square)

**Dimensions:** 400 x 400

**Corner Coordinates:**

- Top-left: `(0, 0)`
- Top-right: `(400, 0)`
- Bottom-right: `(400, 400)`
- Bottom-left: `(0, 400)`

**Code:**

```dart
class BoxPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final path = Path();

    final scaleX = size.width / 400;
    final scaleY = size.height / 400;

    // Draw square
    path.moveTo(0 * scaleX, 0 * scaleY); // Top-left
    path.lineTo(400 * scaleX, 0 * scaleY); // Top-right
    path.lineTo(400 * scaleX, 400 * scaleY); // Bottom-right
    path.lineTo(0 * scaleX, 400 * scaleY); // Bottom-left
    path.close(); // Connect back to start

    final paint = Paint()
      ..color = Colors.blue
      ..style = PaintingStyle.fill;

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
```

**Visual:**

```
(0,0) ──────────────→ (400,0)
  │                      │
  │    Square Box        │
  │    400 x 400         │
  │                      │
  ↓                      ↓
(0,400) ────────────→ (400,400)
```

---

### 2. Rectangle

**Dimensions:** 300 width x 200 height

**Corner Coordinates:**

- Top-left: `(0, 0)`
- Top-right: `(300, 0)`
- Bottom-right: `(300, 200)`
- Bottom-left: `(0, 200)`

**Code:**

```dart
class RectanglePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final path = Path();

    final scaleX = size.width / 300;
    final scaleY = size.height / 200;

    // Draw rectangle
    path.moveTo(0 * scaleX, 0 * scaleY); // Top-left
    path.lineTo(300 * scaleX, 0 * scaleY); // Top-right
    path.lineTo(300 * scaleX, 200 * scaleY); // Bottom-right
    path.lineTo(0 * scaleX, 200 * scaleY); // Bottom-left
    path.close();

    final paint = Paint()
      ..color = Colors.green
      ..style = PaintingStyle.fill;

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
```

**Visual:**

```
(0,0) ─────────────────────→ (300,0)
  │                             │
  │       Rectangle             │
  │      300 x 200              │
  │                             │
  ↓                             ↓
(0,200) ───────────────────→ (300,200)
```

---

### 3. Triangle

**Dimensions:** 400 x 400 canvas

**Vertex Coordinates:**

- Top: `(200, 50)` - Center top
- Bottom-left: `(50, 350)`
- Bottom-right: `(350, 350)`

**Code:**

```dart
class TrianglePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final path = Path();

    final scaleX = size.width / 400;
    final scaleY = size.height / 400;

    // Draw triangle
    path.moveTo(200 * scaleX, 50 * scaleY); // Top vertex
    path.lineTo(350 * scaleX, 350 * scaleY); // Bottom-right vertex
    path.lineTo(50 * scaleX, 350 * scaleY); // Bottom-left vertex
    path.close(); // Connect back to top

    final paint = Paint()
      ..color = Colors.red
      ..style = PaintingStyle.fill;

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
```

**Visual:**

```
           (200,50)
              ▲
             ╱ ╲
            ╱   ╲
           ╱     ╲
          ╱       ╲
         ╱         ╲
        ╱  Triangle ╲
       ╱             ╲
      ╱_______________╲
(50,350)          (350,350)
```

---

### 4. Circle

**Dimensions:** 400 x 400 canvas
**Radius:** 150

**Center Coordinates:** `(200, 200)` - Center of canvas

**Code:**

```dart
class CirclePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final scaleX = size.width / 400;
    final scaleY = size.height / 400;

    // Circle center and radius
    final centerX = 200 * scaleX;
    final centerY = 200 * scaleY;
    final radius = 150 * scaleX; // Assuming uniform scaling

    final paint = Paint()
      ..color = Colors.purple
      ..style = PaintingStyle.fill;

    // Draw circle using canvas method
    canvas.drawCircle(
      Offset(centerX, centerY),
      radius,
      paint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
```

**Alternative: Drawing Circle with Path**

```dart
class CirclePathPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final path = Path();

    final scaleX = size.width / 400;
    final scaleY = size.height / 400;

    // Circle using addOval
    path.addOval(Rect.fromCircle(
      center: Offset(200 * scaleX, 200 * scaleY),
      radius: 150 * scaleX,
    ));

    final paint = Paint()
      ..color = Colors.purple
      ..style = PaintingStyle.fill;

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
```

**Visual:**

```
        ────────
     ╱          ╲
   ╱              ╲
  │    (200,200)   │
  │    • Center    │
  │   Radius: 150  │
   ╲              ╱
     ╲          ╱
        ────────
```

---

## Paint Properties Reference

```dart

final paint = Paint()
  ..color = Colors.blue // Color of the shape
  ..style = PaintingStyle.fill // fill or stroke
  ..strokeWidth = 5.0 // Width if using stroke
  ..strokeCap = StrokeCap.round // End cap style
  ..strokeJoin = StrokeJoin.round; // Corner join style
```

### Style Options:

- `PaintingStyle.fill` - Filled shape
- `PaintingStyle.stroke` - Only outline

---

## Path Methods Reference

| Method                | Description                   | Example                 |
|-----------------------|-------------------------------|-------------------------|
| `moveTo(x, y)`        | Move to point without drawing | `path.moveTo(10, 20)`   |
| `lineTo(x, y)`        | Draw straight line to point   | `path.lineTo(100, 200)` |
| `close()`             | Close path (connect to start) | `path.close()`          |
| `addOval(Rect)`       | Add oval/circle shape         | `path.addOval(rect)`    |
| `addRect(Rect)`       | Add rectangle shape           | `path.addRect(rect)`    |
| `quadraticBezierTo()` | Add curved line (quadratic)   | -                       |
| `cubicTo()`           | Add curved line (cubic)       | -                       |

---

## Tips and Best Practices

1. **Always use scaling** for responsive shapes
2. **Base dimensions** should be your design reference (e.g., 400x400)
3. **Use `close()`** to automatically connect last point to first
4. **Set `shouldRepaint` to `false`** if shape doesn't change (better performance)
5. **Test different widget sizes** to ensure proper scaling
6. **Comment your coordinates** for easier maintenance

---

## Complete Example: All Shapes

```dart
import 'package:flutter/material.dart';

class AllShapesDemo extends StatelessWidget {
  const AllShapesDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("All Custom Shapes")),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            // Box
            SizedBox(
              height: 200,
              width: 200,
              child: CustomPaint(painter: BoxPainter()),
            ),
            SizedBox(height: 20),

            // Rectangle
            SizedBox(
              height: 150,
              width: 250,
              child: CustomPaint(painter: RectanglePainter()),
            ),
            SizedBox(height: 20),

            // Triangle
            SizedBox(
              height: 200,
              width: 200,
              child: CustomPaint(painter: TrianglePainter()),
            ),
            SizedBox(height: 20),

            // Circle
            SizedBox(
              height: 200,
              width: 200,
              child: CustomPaint(painter: CirclePainter()),
            ),
          ],
        ),
      ),
    );
  }
}
```

---

## License

This guide is free to use for learning purposes.

## Contributing

Feel free to add more shapes and examples!

---

**Happy Coding! 🎨**