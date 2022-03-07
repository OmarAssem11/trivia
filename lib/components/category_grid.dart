import 'package:flutter/material.dart';
import 'package:trivia/components/category_widget.dart';
import 'package:trivia/shared/constants.dart';

class CategoryGrid extends StatelessWidget {
  const CategoryGrid();
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 16,
          crossAxisSpacing: 16,
        ),
        itemBuilder: (context, index) => CategoryWidget(
          name: categories[index].name,
          color: categories[index].color,
          imagePath: categories[index].imagePath,
        ),
        itemCount: categories.length,
      ),
    );
  }
}
