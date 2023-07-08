import 'package:flutter/material.dart';

import 'package:quiz_app_learn/home_screen.dart';
import 'package:quiz_app_learn/question_screen.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  var activeScreen = 'home-screen';

  // @override
/*  void initState() {
    // TODO: implement initState
    activeScreen = HomeScreen(startQuiz);
    super.initState();
  }*/

  void startQuiz() {
    setState(() {
      activeScreen = 'quiz-screen';
    });
  }

  @override
  Widget build(context) {
    Widget screen = HomeScreen(startQuiz);

    if (activeScreen == 'quiz-screen') {
      screen = const QuestionScreen();
    }

    return MaterialApp(
      title: 'quiz_app',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: Scaffold(
        appBar: AppBar(title: const Text('Take The Quiz')),
        body: Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.deepPurple, Colors.purpleAccent],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight)),
            child: Center(child: screen)),
      ),
    );
  }
}
