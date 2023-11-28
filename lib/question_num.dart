import 'package:flutter/material.dart';

class QuestionNum extends StatelessWidget {
  const QuestionNum({
    required this.correctAnswer,
    required this.questionIndex,
    super.key,
  });

  final int questionIndex;
  final bool correctAnswer;

  @override
  Widget build(BuildContext context) {
    final questionNum = questionIndex + 1;
    return Container(
      height: 35,
      width: 35,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: correctAnswer ? Colors.green : Colors.red,
      ),
      child: Text(
        questionNum.toString(),
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.white,
          fontSize: 20,
        ),

      ),
    );
  }
}
