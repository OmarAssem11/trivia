import 'package:flutter/material.dart';
import 'package:trivia/shared/cubit/cubit.dart';

class AnswerWidget extends StatelessWidget {
  const AnswerWidget({required this.answer});
  final String answer;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => QuizCubit.get(context).answerQuestion(
        answer: answer,
        context: context,
      ),
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(16)),
        ),
        child: Center(
          child: Text(
            answer,
            style: Theme.of(context).textTheme.headline4,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
