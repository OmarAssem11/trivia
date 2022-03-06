import 'package:flutter/material.dart';
import 'package:trivia/screens/home_screen.dart';
import 'package:trivia/screens/question_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const QuestionScreen(),
      routes: {
        HomeScreen.routeName: (context) => const HomeScreen(),
        QuestionScreen.routeName: (context) => const QuestionScreen(),
      },
    );
  }
}
