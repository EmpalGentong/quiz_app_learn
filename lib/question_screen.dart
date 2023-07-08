import 'package:flutter/material.dart';
import 'package:quiz_app_learn/answer_button.dart';
import 'package:quiz_app_learn/data/questions.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  int counter = 0;
  var currentQuestions = questions[0];

  void addCounter() {
    setState(() {
      currentQuestions = questions[++counter];
      if (counter == questions.length - 1) {
        counter = 0;
      }
    });
  }

  @override
  Widget build(context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        padding: EdgeInsets.all(25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              currentQuestions.question,
              style: const TextStyle(color: Colors.white, fontSize: 15),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 30,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                ...currentQuestions.getShuffledAnswer().map((answers) {
                  return AnswerButton(answerText: answers, onTap: addCounter);
                })
              ],
            )
          ],
        ),
      ),
    );
  }
}
