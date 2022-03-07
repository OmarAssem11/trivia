import 'package:flutter/material.dart';
import 'package:trivia/screens/quiz_screen.dart';

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
    return InkWell(
      onTap: () => Navigator.of(context).pushNamed(
        QuizScreen.routeName,
        arguments: name,
      ),
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
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
