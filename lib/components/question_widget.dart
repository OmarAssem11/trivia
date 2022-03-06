import 'package:flutter/material.dart';

class QuestionWidget extends StatelessWidget {
  const QuestionWidget(this.questionText);
  final String questionText;
  @override
  Widget build(BuildContext context) {
    return Text(
      questionText,
      textAlign: TextAlign.center,
      style: const TextStyle(
        fontSize: 32,
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
