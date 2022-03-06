import 'package:bloc/bloc.dart';
import 'package:trivia/shared/cubit/states.dart';

class QuizCubit extends Cubit<QuizStates> {
  QuizCubit() : super(QuizInitialState());
}
