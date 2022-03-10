import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;
import 'package:trivia/models/quiz_model.dart';
import 'package:trivia/shared/constants.dart';
import 'package:trivia/shared/cubit/states.dart';

class QuizCubit extends Cubit<QuizStates> {
  QuizCubit() : super(QuizInitialState());
  static QuizCubit get(BuildContext context) => BlocProvider.of(context);

  final baseUrl = 'https://opentdb.com';
  late String category;
  late String difficulty;

  int getCategoryNumber() => categoriesNumbers[category]!;

  void getQuestions() {
    final categoryNumber = getCategoryNumber();
    final url = Uri.parse(
      '$baseUrl/api.php?amount=10&category=$categoryNumber&difficulty=$difficulty&type=multiple',
    );
    http.get(url).then((response) {
      final data = jsonDecode(response.body) as Map<String, dynamic>;
      final results = data['results'] as List;
      for (final quizData in results) {
        quizData as Map;
        final quiz = QuizModel(
          question: quizData['question'] as String,
          correctAnswer: quizData['correct_answer'] as String,
          incorrectAnswers: quizData['incorrect_answers'] as List,
          category: quizData['category'] as String,
          difficulty: quizData['difficulty'] as String,
        );
        quizList.add(quiz);
      }
    }).catchError((error) {
      emit(GetQuestionsErrorState(error.toString()));
    });
  }

  final List<QuizModel> quizList = [];

  int questionIndex = 0;
  int score = 0;

  void answerQuestion({required String answer}) {
    questionIndex++;
    if (answer == quizList[questionIndex].correctAnswer) {
      score++;
    }
    emit(AnswerQuestionState());
  }
}
