import 'package:flutter/material.dart';
import 'package:quizz/question_num.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary({
    super.key,
    required this.summaryData,
  });

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((data) {
            return Container(
              margin: const EdgeInsets.symmetric( vertical: 12),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  QuestionNum(
                    correctAnswer: data["user_answer"] as String ==
                        data["correct_answer"] as String,
                    questionIndex: data["question_index"] as int,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          data["question"] as String,
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          data["user_answer"] as String,
                          style: const TextStyle(
                            color: Color.fromARGB(255, 170, 169, 250),
                          ),
                        ),
                        Text(
                          data["correct_answer"] as String,
                          style: const TextStyle(
                            color: Color.fromARGB(255, 236, 169, 250),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
