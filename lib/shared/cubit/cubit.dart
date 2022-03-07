import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;
import 'package:trivia/models/quiz_model.dart';
import 'package:trivia/shared/cubit/states.dart';

class QuizCubit extends Cubit<QuizStates> {
  QuizCubit() : super(QuizInitialState());
  static QuizCubit get(BuildContext context) => BlocProvider.of(context);
  final baseUrl = 'https://opentdb.com';
  Future<QuizModel> getQuestion() async {
    final url = Uri.parse('$baseUrl/api.php?amount=1&type=multiple');
    final response = await http.get(url);
    final data = jsonDecode(response.body) as Map<String, dynamic>;
    final results = data['results'] as List;
    final quizData = results[0] as Map;
    final quiz = QuizModel(
      question: quizData['question'] as String,
      correctAnswer: quizData['correct_answer'] as String,
      incorrectAnswers: quizData['incorrect_answers'] as List,
      category: quizData['category'] as String,
      difficulty: quizData['difficulty'] as String,
    );
    emit(GetQuestionSuccessState());
    return quiz;
  }
}
