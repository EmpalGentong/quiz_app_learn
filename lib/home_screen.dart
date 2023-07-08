import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen(this.startQuiz, {super.key});

  final Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 250,
            color: const Color.fromARGB(120, 255, 255, 255),
          ),
          const SizedBox(
            height: 30,
          ),
          const Text('Learn Flutter in a Fun Way',
              style: TextStyle(color: Colors.white, fontSize: 25)),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton.icon(
            onPressed: startQuiz,
            icon: const Icon(Icons.accessible_forward_rounded),
            label: const Text('Start Quiz'),
          ),
        ],
      ),
    );
  }
}
