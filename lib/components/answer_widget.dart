import 'package:flutter/material.dart';

class AnswerWidget extends StatelessWidget {
  const AnswerWidget(this.text);
  final String text;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        height: 100,
        width: 100,
        color: Colors.amber,
        child: Center(
          child: Text(
            text,
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
