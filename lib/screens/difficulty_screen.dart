import 'package:flutter/material.dart';
import 'package:trivia/components/difficulty_widget.dart';

class DifficultyScreen extends StatelessWidget {
  const DifficultyScreen({Key? key}) : super(key: key);
  static const routeName = 'difficulty-screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Choose difficulty',
                style: Theme.of(context).textTheme.headline2,
              ),
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
              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}
