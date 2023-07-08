import 'package:flutter/material.dart';

const Alignment startAlignment = Alignment.topLeft;
const Alignment endAlignment = Alignment.bottomRight;

class OpeningScreen extends StatelessWidget {
  const OpeningScreen({super.key});

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Opacity(
            opacity: 0.8,
            child: Image.asset(
              'assets/img/quiz-logo.png',
              width: 200,
            ),
          ),
          const SizedBox(
              height: 80),
          const Text(
              'Flutter Quiz App',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
          ),
          const SizedBox(
              height: 16), // Add some spacing between the image and the button
          ElevatedButton.icon(
            onPressed: () {
              // Handle button press
            },
            icon: const Icon(Icons.arrow_right_alt),
            label: const Text('Start Quiz'),
            
          ),
        ],
      ),
    );
  }
}
