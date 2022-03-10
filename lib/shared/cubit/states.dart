abstract class QuizStates {}

class QuizInitialState extends QuizStates {}

class GetQuestionLoadingState extends QuizStates {}

class GetQuestionsSuccessState extends QuizStates {}

class GetQuestionsErrorState extends QuizStates {
  final String error;
  GetQuestionsErrorState(this.error);
}

class AnswerQuestionState extends QuizStates {}
