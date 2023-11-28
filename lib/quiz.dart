import 'package:flutter/material.dart';
import 'package:quizz/model/questions.dart';
import 'package:quizz/questions_page.dart';
import 'package:quizz/result_page.dart';
import 'package:quizz/welcome_page.dart';

class QuizApp extends StatefulWidget {
  const QuizApp({super.key});

  @override
  State<QuizApp> createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {
  List<String> pickedAnswers = [];
  String? activePage;

  void switchPage() {
    setState(() {
      activePage = "questionPage";
    });
  }

  void pickAnswer(String answer) {
    pickedAnswers.add(answer);

    if (pickedAnswers.length == questions.length) {
      setState(() {
        activePage = "resultPage";
      });
    }
  }


  void startQuizAgain() {
    setState(() {
      pickedAnswers = [];
      activePage = "welcomePage";
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget currentPage = WelcomePage(switchPage);
    if (activePage == "questionPage") {
      currentPage = QuestionsPage(
        onSelectAnswer: pickAnswer,
      );
    }

    if (activePage == "resultPage") {
      currentPage = ResultPage(
        chosenAnswers: pickedAnswers,
        restartQuiz: startQuizAgain,
      );
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
