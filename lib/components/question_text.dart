import 'package:flutter/material.dart';

class QuestionText extends StatelessWidget {
  const QuestionText(this.text);
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: const TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
