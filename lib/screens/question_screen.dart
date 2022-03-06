import 'package:flutter/material.dart';
import 'package:trivia/components/answers_grid.dart';
import 'package:trivia/components/countdown_timer.dart';
import 'package:trivia/components/question_text.dart';

class QuestionScreen extends StatelessWidget {
  const QuestionScreen({Key? key}) : super(key: key);
  static const routeName = 'question_screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SafeArea(
          child: Column(
            children: const [
              QuestionText('What is the fastest animal in the world?'),
              CountdownTimer(),
              AnswersGrid([
                'answer1',
                'answer2',
                'answer3',
                'answer4',
              ]),
            ],
          ),
        ),
      ),
    );
  }
}
