import 'package:flutter/material.dart';
import 'package:quiz_app_flutter/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          Color.fromARGB(255, 18, 98, 219),
          Color.fromARGB(255, 96, 177, 243),
        ),
      ),
    ),
  );
}
