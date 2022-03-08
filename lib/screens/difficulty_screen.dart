import 'package:flutter/material.dart';
import 'package:trivia/components/difficulty_widget.dart';
import 'package:trivia/screens/quiz_screen.dart';

class DifficultyScreen extends StatelessWidget {
  const DifficultyScreen({Key? key}) : super(key: key);
  static const routeName = 'difficulty-screen';
  @override
  Widget build(BuildContext context) {
    final category = ModalRoute.of(context)!.settings.arguments! as String;
    const String difficulty = '';
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text('Choose difficulty'),
            const DifficultyWidget(
              difficulty: 'Easy',
              imagePath: 'assets/images/easy.png',
            ),
            const DifficultyWidget(
              difficulty: 'Medium',
              imagePath: 'assets/images/medium.png',
            ),
            const DifficultyWidget(
              difficulty: 'Hard',
              imagePath: 'assets/images/hard.png',
            ),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.pink),
              ),
              onPressed: () => Navigator.of(context).pushReplacementNamed(
                QuizScreen.routeName,
                arguments: QuizArguments(
                  category: category,
                  difficulty: difficulty,
                ),
              ),
              child: const Text(
                'START',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class QuizArguments {
  final String category;
  final String difficulty;
  QuizArguments({
    required this.category,
    required this.difficulty,
  });
}
