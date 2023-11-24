import 'package:flutter/material.dart';
import 'package:quizz/welcome_page.dart';

class QuizApp extends StatefulWidget {
  const QuizApp({super.key});

  @override
  State<QuizApp> createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 51, 3, 78),
                Color.fromARGB(255, 128, 7, 184)
              ],
            ),
          ),
          child: const WelcomePage(),
        ),
      ),
    );
  }
}