import 'package:flutter/material.dart';

class QuestionWidget extends StatelessWidget {
  const QuestionWidget(this.questionText);
  final String questionText;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        questionText,
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.headline5,
      ),
    );
  }
}
