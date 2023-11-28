import 'package:flutter/material.dart';
import 'package:quizz/answer_button.dart';
import 'package:quizz/model/questions.dart';

class QuestionsPage extends StatefulWidget {
  const QuestionsPage({ required this.onSelectAnswer, super.key});

  final void Function(String answer) onSelectAnswer;

  @override
  State<QuestionsPage> createState() => _QuestionsPageState();
}

class _QuestionsPageState extends State<QuestionsPage> {
  int questionIndex = 0;
  

  void answerQuestion(String pickedAnswer) {
    widget.onSelectAnswer(pickedAnswer);
    setState(() {
      questionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[questionIndex];

    return Center(
      child: Container(
        margin:const EdgeInsetsDirectional.all(40),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestion.question,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 20,
            ),
            ...currentQuestion.getShuffledAnswer().map(
              (answer) => AnswerButton(
                answerText: answer,
                onTap: (){
                  answerQuestion(answer);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
