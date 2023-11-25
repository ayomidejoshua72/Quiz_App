import 'package:flutter/material.dart';
import 'package:quizz/questions_page.dart';
import 'package:quizz/welcome_page.dart';

class QuizApp extends StatefulWidget {
  const QuizApp({super.key});

  @override
  State<QuizApp> createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {
  var activePage = "startPage";

  void switchPage () {
    setState(() {
      activePage = "welcomePage";
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget currentPage = WelcomePage(switchPage);
    if (activePage == "welcomePage"){
      currentPage = const QuestionsPage();
    }

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 51, 3, 78),
                Color.fromARGB(255, 128, 7, 184)
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: currentPage,
        ),
      ),
    );
  }
}