import 'package:flutter/material.dart';
import 'package:advanced_basics_app/gradient_container.dart';

void main() {
  runApp(const AdvancedBasicsApp());
}

class AdvancedBasicsApp extends StatelessWidget {
  const AdvancedBasicsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        home: Scaffold(
            body: GradientContainer(Color.fromARGB(255, 69, 18, 189),
                Color.fromARGB(255, 143, 10, 231))));
  }
}
