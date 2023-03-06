import 'package:flutter/material.dart';
import 'package:poolc_quiz_app/src/config/app_theme.dart';
import 'package:poolc_quiz_app/src/screens/home/home_screen.dart';
import 'package:poolc_quiz_app/src/screens/quiz/quiz_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PoolC Simple Quiz APP',
      debugShowCheckedModeBanner: false,
      theme: themeData(),
      home: const QuizScreen(),
    );
  }
}

