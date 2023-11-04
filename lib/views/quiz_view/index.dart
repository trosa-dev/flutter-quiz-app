import 'package:fluter_quiz_app/views/question_view/index.dart';
import 'package:flutter/material.dart';
import '../start_view/index.dart';

class QuizView extends StatefulWidget {
  const QuizView({super.key});

  @override
  State<QuizView> createState() {
    return _QuizViewState();
  }
}

class _QuizViewState extends State<QuizView> {
  Widget activeScreen = const StartView();

  void switchView() {
    setState(() {
      activeScreen = const QuestionsView();
    });
  }

  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 78, 13, 151),
                Color.fromARGB(255, 107, 15, 168),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: activeScreen,
        ),
      ),
    );
  }
}
