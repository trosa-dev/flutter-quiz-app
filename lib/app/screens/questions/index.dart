import 'package:fluter_quiz_app/app/screens/questions/data/questions.dart';
import 'package:fluter_quiz_app/app/screens/questions/widgets/answer_button/index.dart';
import 'package:flutter/material.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({required this.finishQuiz, super.key});

  final void Function() finishQuiz;

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  final currentQuestion = questions[0];

  @override
  Widget build(context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            currentQuestion.text,
            style: const TextStyle(color: Colors.white),
          ),
          const SizedBox(height: 30),
          ...currentQuestion.answers.map(
            (answer) => Column(
              children: [
                AnswerButton(
                  answerText: answer,
                  onTap: () {},
                ),
                const SizedBox(height: 10),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
