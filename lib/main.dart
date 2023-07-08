import 'package:flutter/material.dart';
import 'package:quiz_app_learn/home_screen.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:'quiz_app',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: Scaffold(
          appBar: AppBar(title: const Text('Take The Quiz')),
          body: const HomeScreen()
    ),);
  }
}