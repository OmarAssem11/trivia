import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trivia/screens/difficulty_screen.dart';
import 'package:trivia/screens/home_screen.dart';
import 'package:trivia/screens/quiz_screen.dart';
import 'package:trivia/shared/bloc_observer.dart';
import 'package:trivia/shared/cubit/cubit.dart';

void main() {
  BlocOverrides.runZoned(
    () => QuizCubit(),
    blocObserver: MyBlocObserver(),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const DifficultyScreen(),
      routes: {
        HomeScreen.routeName: (context) => const HomeScreen(),
        QuizScreen.routeName: (context) => const QuizScreen(),
        DifficultyScreen.routeName: (context) => const DifficultyScreen(),
      },
    );
  }
}
