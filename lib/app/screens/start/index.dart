import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({required this.startQuiz, super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            // good strategy for opacity
            'assets/images/quiz-logo.png',
            width: 300,
            color: const Color.fromARGB(150, 255, 255, 255),
          ),
          // Opacity( // bad strategy for opacity
          //  opacity: 0.8,
          //  child: Image.asset(
          //   'assets/images/quiz-logo.png',
          //   width: 300,
          //   color: const Color.fromARGB(150, 255, 255, 255),
          //  ),
          //),
          const SizedBox(
            height: 80,
          ),
          const Text(
            'Learn Fluter the fun way!',
            style: TextStyle(
              color: Color.fromARGB(255, 237, 223, 252),
              fontSize: 24,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          OutlinedButton.icon(
            icon: const Icon(Icons.arrow_right_alt),
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
            ),
            onPressed: startQuiz,
            label: const Text(
              'Start Quiz',
            ),
          ),
        ],
      ),
    );
  }
}
