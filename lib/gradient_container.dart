import 'package:flutter/material.dart';

const Alignment startAlignment = Alignment.topLeft;
const Alignment endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer(
    this.color1,
    this.color2, {
    super.key,
  });

  const GradientContainer.blue({super.key})
      : color1 = Colors.lightBlue,
        color2 = const Color.fromARGB(255, 34, 105, 212);

  final Color color1;
  final Color color2;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: startAlignment,
          end: endAlignment,
          colors: [
            color1,
            color2,
          ],
        ),
      ),
        child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/img/quiz-logo.png',
            width: 200,
          ),
          const SizedBox(height: 16), // Add some spacing between the image and the button
          ElevatedButton(
            onPressed: () {
              // Handle button press
            },
            child: const Text('Center Button'),
          ),
        ],
      ),
    ),
  );
    
  }
}
