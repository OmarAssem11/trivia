import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trivia/screens/difficulty_screen.dart';
import 'package:trivia/shared/cubit/cubit.dart';
import 'package:trivia/shared/cubit/states.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({
    required this.name,
    required this.color,
    required this.imagePath,
  });
  final String name;
  final Color color;
  final String imagePath;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<QuizCubit, QuizStates>(
      listener: (context, state) {},
      builder: (context, state) {
        return InkWell(
          onTap: () {
            QuizCubit.get(context).category = name;
            Navigator.of(context).pushNamed(DifficultyScreen.routeName);
          },
          child: Container(
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(16)),
              color: color,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(imagePath),
                const SizedBox(height: 16),
                Text(
                  name,
                  style: Theme.of(context).textTheme.headline3,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
