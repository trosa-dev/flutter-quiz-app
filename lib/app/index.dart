import 'package:fluter_quiz_app/app/screens/questions/data/questions.dart';
import 'package:fluter_quiz_app/app/screens/questions/index.dart';
import 'package:fluter_quiz_app/app/screens/results/index.dart';
import 'package:fluter_quiz_app/enums/screens.dart';
import 'package:flutter/material.dart';
import 'screens/start/index.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() {
    return _AppState();
  }
}

class _AppState extends State<App> {
  List<String> selectedAnswers = [];
  Screens? activeScreen;

  void restartQuiz() {
    setState(() {
      selectedAnswers = [];
      activeScreen = Screens.start;
    });
  }

  void startQuiz() {
    setState(() {
      activeScreen = Screens.quiz;
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);

    if (selectedAnswers.length == questions.length) {
      setState(() {
        activeScreen = Screens.results;
      });
    }
  }

  Widget handleScreen() {
    switch (activeScreen) {
      case Screens.start:
        return StartScreen(startQuiz: startQuiz);
      case Screens.quiz:
        return QuestionsScreen(
          finishQuiz: restartQuiz,
          onSelectAnswer: chooseAnswer,
        );
      case Screens.results:
        return ResultsScreen(
          selectedAnswers: selectedAnswers,
          onRestart: restartQuiz,
        );
      default:
        return StartScreen(startQuiz: startQuiz);
    }
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
          child: handleScreen(),
        ),
      ),
    );
  }
}
