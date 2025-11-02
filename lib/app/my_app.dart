import 'package:flutter/material.dart';
import 'package:flutter_custom_shapes/screens/painter_shapes.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter Custom Shapes",
      theme: ThemeData(scaffoldBackgroundColor: Colors.white),
      darkTheme: ThemeData(scaffoldBackgroundColor: Colors.black87),
      home: PainterShapes(),
    );
  }
}