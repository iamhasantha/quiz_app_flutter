import 'package:flutter/material.dart';
import 'package:quiz_app_flutter/opening_screen.dart';
import 'package:quiz_app_flutter/questions_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  
  @override
  State<StatefulWidget> createState() {
    return _QuizState();
    
  }
}

class _QuizState extends State<Quiz> {
  var activeScreen = 'start-screen'; 

  void changeScreen() {
    setState(() {
      activeScreen = 'question-screen';
    });
  }

  @override
  Widget build(context) {
    Widget screenWidget = OpeningScreen(changeScreen);

    if (activeScreen == 'question-screen') {
      screenWidget = const QuestionScreen();
    }

    return MaterialApp(
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
          child: screenWidget,
        ),
      ),
    );
  }
}