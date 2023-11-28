import 'package:flutter/material.dart';
import 'package:quizz/model/questions.dart';
import 'package:quizz/questions_summary.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({
    required this.restartQuiz,
    super.key,
    required this.chosenAnswers,
  });

  final List<String> chosenAnswers;
  final Function() restartQuiz;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];

    for (int i = 0; i < chosenAnswers.length; i++) {
      summary.add({
        "question_index": i,
        "question": questions[i].question,
        "correct_answer": questions[i].answers[0],
        "user_answer": chosenAnswers[i],
      });
    }

    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final summaryData = getSummaryData();

    final numTotalQuestions = questions.length;
    final numCorrectQuestions = summaryData.where((data) {
      return data["user_answer"] == data["correct_answer"];
    }).length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "You answered $numCorrectQuestions out of $numTotalQuestions questions correctly",
              style: const TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            QuestionsSummary(
              summaryData: summaryData,
            ),
            const SizedBox(
              height: 40,
            ),
            TextButton(
              onPressed: () {
                restartQuiz();
              },
              child: const Text("Restart Quiz"),
            ),
          ],
        ),
      ),
    );
  }
}
