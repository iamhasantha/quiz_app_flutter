import 'package:flutter/material.dart';
import 'package:quiz_app_flutter/opening_screen.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color.fromARGB(255, 18, 98, 219),
                Color.fromARGB(255, 96, 177, 243),
              ],
            ),
          ),
          child: const OpeningScreen(),
        ),
      ),
    ),
  );
}
