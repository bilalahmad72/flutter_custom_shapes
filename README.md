# Flutter Custom Shapes

A comprehensive Flutter project demonstrating how to create custom geometric shapes using the `CustomPainter` class. This
repository serves as a practical guide for developers learning to implement custom drawing and painting in Flutter
applications.

## 📋 Overview

This project showcases the implementation of various geometric shapes using Flutter's powerful `CustomPainter` API. Each
shape is implemented as a separate painter class, making it easy to understand, reuse, and extend.

## ✨ Features

- **10 Custom Geometric Shapes** implemented using `CustomPainter`
- **Responsive Design** with proper scaling for different screen sizes
- **Clean Architecture** with separated painter classes
- **Well-Documented Code** with inline comments
- **Ready-to-Use Examples** for immediate implementation
- **Comprehensive Guide** included for learning purposes

## 🎨 Implemented Shapes

| Shape         | Sides | Painter Class          |
|---------------|-------|------------------------|
| Square        | 4     | `SquarePainter`        |
| Rectangle     | 4     | `RectanglePainter`     |
| Triangle      | 3     | `TrianglePainter`      |
| Quadrilateral | 4     | `QuadrilateralPainter` |
| Pentagon      | 5     | `PentagonPainter`      |
| Hexagon       | 6     | `HexagonPainter`       |
| Heptagon      | 7     | `HeptagonPainter`      |
| Octagon       | 8     | `OctagonPainter`       |
| Rhombus       | 4     | `RhombusPainter`       |
| Parallelogram | 4     | `ParallelogramPainter` |

## 🚀 Getting Started

### Prerequisites

- Flutter SDK (3.0.0 or higher)
- Dart SDK (3.0.0 or higher)
- Any IDE with Flutter support (VS Code, Android Studio, IntelliJ IDEA)

### Installation

1. Clone the repository:

```bash
git clone https://github.com/yourusername/flutter_custom_shapes.git
```

2. Navigate to the project directory:

```bash
cd flutter_custom_shapes
```

3. Install dependencies:

```bash
flutter pub get
```

4. Run the application:

```bash
flutter run
```

## 📁 Project Structure

```
lib/
├── app/
│   └── my_app.dart              # Main app configuration
├── painters/
│   ├── square_painter.dart      # Square shape implementation
│   ├── rectangle_painter.dart   # Rectangle shape implementation
│   ├── triangle_painter.dart    # Triangle shape implementation
│   ├── quadrilateral_painter.dart
│   ├── pentagon_painter.dart
│   ├── hexagon_painter.dart
│   ├── heptagon_painter.dart
│   ├── octagon_painter.dart
│   ├── rhombus_painter.dart
│   └── parallelogram_painter.dart
├── screens/
│   └── painter_shapes.dart      # Main display screen
└── main.dart                    # Application entry point
```

## 💻 Usage

### Basic Implementation

To use any shape in your project, simply import the painter class and use it with `CustomPaint` widget:

```dart
import 'package:flutter/material.dart';
import 'package:flutter_custom_shapes/painters/hexagon_painter.dart';

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: HexagonPainter(),
      size: Size(400, 400),
    );
  }
}
```

### Creating Custom Shapes

Each painter follows a consistent pattern:

```dart
class MyCustomShapePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final path = Path();

    // Optional: Add scaling for responsiveness
    final scaleX = size.width / 400;
    final scaleY = size.height / 400;

    // Define your shape coordinates
    path.moveTo(x1 * scaleX, y1 * scaleY);
    path.lineTo(x2 * scaleX, y2 * scaleY);
    // ... more points
    path.close();

    // Configure paint properties
    final paint = Paint()
      ..color = Colors.blue
      ..style = PaintingStyle.fill;

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
```

## 📖 Learning Resources

This repository includes a detailed guide (`shape_guidance.md`) covering:

- Flutter's coordinate system
- Scaling and responsiveness
- Path methods and techniques
- Paint properties
- Step-by-step shape creation
- Best practices and tips

## 🎯 Key Concepts

### Coordinate System

Flutter's canvas uses a coordinate system where:

- Origin (0, 0) is at the **top-left corner**
- X-axis increases from **left to right**
- Y-axis increases from **top to bottom**

### Scaling for Responsiveness

To make shapes responsive across different screen sizes:

```bash

final scaleX = size.width / baseWidth;
final scaleY = size.height / baseHeight;

// Apply scaling to coordinates
path.moveTo(x * scaleX, y * scaleY);
```

### Paint Styles

Customize your shapes with various paint properties:

```dart

final paint = Paint()
  ..color = Colors.blue // Shape color
  ..style = PaintingStyle.fill // fill or stroke
  ..strokeWidth = 5.0 // Border width (for stroke)
  ..strokeCap = StrokeCap.round // Line cap style
  ..strokeJoin = StrokeJoin.round; // Corner style
```

## 🛠️ Customization

You can easily customize shapes by:

1. **Changing Colors**: Modify the `paint.color` property
2. **Adjusting Size**: Change the `Size` parameter in `CustomPaint`
3. **Adding Borders**: Use `PaintingStyle.stroke` instead of `fill`
4. **Creating New Shapes**: Follow the existing painter pattern

## 📄 License

This project is open source and available under the [MIT License](LICENSE).

## 👨‍💻 Author

**Bilal Ahmad**

- LinkedIn: [@bilalahmad72-freelancer](https://www.linkedin.com/in/freelancer-bilalahmad72/)
- Fiverr: [@bilalahmad72](https://www.fiverr.com/bilalahmad72)
- Upwork: [@bilalahmad72](https://www.upwork.com/freelancers/bilalahmad72)

## 🙏 Acknowledgments

- Flutter team for the amazing framework
- The Flutter community for inspiration and support

## 📚 Additional Resources

- [Flutter CustomPainter Documentation](https://api.flutter.dev/flutter/rendering/CustomPainter-class.html)
- [Flutter Canvas Documentation](https://api.flutter.dev/flutter/dart-ui/Canvas-class.html)
- [Flutter Path Documentation](https://api.flutter.dev/flutter/dart-ui/Path-class.html)

## 💡 Future Enhancements

- [ ] Add more complex shapes (stars, curves, etc.)
- [ ] Implement animation support
- [ ] Add interactive shape manipulation
- [ ] Include gradient and shadow effects
- [ ] Add unit tests for painter classes
- [ ] Create widget tests

---

<p align="center">
  Made with ❤️ using Flutter
</p>

<p align="center">
  <a href="https://flutter.dev">
    <img src="https://img.shields.io/badge/Flutter-02569B?style=for-the-badge&logo=flutter&logoColor=white" alt="Flutter"/>
  </a>
  <a href="https://dart.dev">
    <img src="https://img.shields.io/badge/Dart-0175C2?style=for-the-badge&logo=dart&logoColor=white" alt="Dart"/>
  </a>
</p>