import 'package:flutter/material.dart';
import 'package:sample_app/ui/slider/Slider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Link Page Sample',
      theme: ThemeData(primaryColor: Colors.blue),
      home: SliderExample(),
    );
  }
}
