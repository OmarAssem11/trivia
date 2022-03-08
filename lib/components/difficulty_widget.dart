import 'package:flutter/material.dart';

class DifficultyWidget extends StatelessWidget {
  const DifficultyWidget({
    required this.difficulty,
    required this.imagePath,
  });
  final String difficulty;
  final String imagePath;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(imagePath),
        const SizedBox(width: 16),
        Text(
          difficulty,
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
