import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trivia/components/answers_grid.dart';
import 'package:trivia/components/countdown_timer.dart';
import 'package:trivia/components/gradient_widget.dart';
import 'package:trivia/components/question_widget.dart';
import 'package:trivia/models/quiz_model.dart';
import 'package:trivia/shared/cubit/cubit.dart';
import 'package:trivia/shared/cubit/states.dart';

class QuizScreen extends StatelessWidget {
  const QuizScreen({Key? key}) : super(key: key);
  static const routeName = 'question_screen';
  @override
  Widget build(BuildContext context) {
    QuizModel? quiz;
    return BlocProvider(
      create: (_) => QuizCubit(),
      child: BlocConsumer<QuizCubit, QuizStates>(
        listener: (_, state) {},
        builder: (context, state) {
          QuizCubit.get(context).getQuestion().then((value) => quiz = value);
          return Scaffold(
            body: SafeArea(
              child: GradientWidget(
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    children: [
                      const SizedBox(height: 24),
                      QuestionWidget(
                        quiz != null ? quiz!.question : '',
                      ),
                      const CountdownTimer(),
                      AnswersGrid(
                        choices: [
                          if (quiz != null) quiz!.correctAnswer else '',
                          if (quiz != null)
                            quiz!.incorrectAnswers[0] as String
                          else
                            '',
                          if (quiz != null)
                            quiz!.incorrectAnswers[1] as String
                          else
                            '',
                          if (quiz != null)
                            quiz!.incorrectAnswers[2] as String
                          else
                            '',
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
