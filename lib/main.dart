import 'package:flutter/material.dart';
import 'package:trivia/screens/home_screen.dart';
import 'package:trivia/screens/quiz_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const QuizScreen(),
      routes: {
        HomeScreen.routeName: (context) => const HomeScreen(),
        QuizScreen.routeName: (context) => const QuizScreen(),
      },
    );
  }
}
