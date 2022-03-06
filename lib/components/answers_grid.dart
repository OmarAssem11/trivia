import 'package:flutter/material.dart';
import 'package:trivia/components/answer_widget.dart';

class AnswersGrid extends StatelessWidget {
  const AnswersGrid(this.choices);
  final List<String> choices;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 8,
          crossAxisSpacing: 8,
        ),
        itemBuilder: (_, index) => AnswerWidget(choices[index]),
        itemCount: 4,
      ),
    );
  }
}
