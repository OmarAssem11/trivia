import 'package:flutter/material.dart';

class AnswerWidget extends StatelessWidget {
  const AnswerWidget({required this.answerText});
  final String answerText;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(16)),
        ),
        child: Center(
          child: Text(
            answerText,
            style: const TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
