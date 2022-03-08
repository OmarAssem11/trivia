import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trivia/components/answers_grid.dart';
import 'package:trivia/components/countdown_timer.dart';
import 'package:trivia/components/gradient_widget.dart';
import 'package:trivia/components/question_widget.dart';
import 'package:trivia/models/quiz_model.dart';
import 'package:trivia/screens/difficulty_screen.dart';
import 'package:trivia/shared/cubit/cubit.dart';
import 'package:trivia/shared/cubit/states.dart';

class QuizScreen extends StatelessWidget {
  const QuizScreen({Key? key}) : super(key: key);
  static const routeName = 'question_screen';
  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments! as QuizArguments;
    QuizModel? quiz;
    return BlocProvider(
      create: (_) => QuizCubit(),
      child: BlocConsumer<QuizCubit, QuizStates>(
        listener: (context, state) {},
        builder: (context, state) {
          if (state is QuizInitialState) {
            QuizCubit.get(context)
                .getQuestions(
                  category: '',
                  difficulty: '',
                )
                .then((value) => quiz = value);
          }
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
