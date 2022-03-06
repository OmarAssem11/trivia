import 'package:flutter/material.dart';
import 'package:trivia/components/answers_grid.dart';
import 'package:trivia/components/countdown_timer.dart';
import 'package:trivia/components/gradient_widget.dart';
import 'package:trivia/components/question_widget.dart';

class QuestionScreen extends StatelessWidget {
  const QuestionScreen({Key? key}) : super(key: key);
  static const routeName = 'question_screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: GradientWidget(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: const [
                SizedBox(height: 24),
                QuestionWidget('What is the fastest animal in the world?'),
                CountdownTimer(),
                AnswersGrid(
                  choices: [
                    'answer1',
                    'answer2',
                    'answer3',
                    'answer4',
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
