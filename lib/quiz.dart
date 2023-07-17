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
  Widget? activeScreen; 
  
  @override
  void initState() {
    activeScreen = OpeningScreen(changeScreen);
    super.initState();
  }


  void changeScreen() {
    setState(() {
      activeScreen = const QuestionScreen();
    });
  }

  @override
  Widget build(context) {
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
          child: ac
        ),
      ),
    );
  }
}