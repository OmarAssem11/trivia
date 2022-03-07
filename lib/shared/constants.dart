import 'package:flutter/material.dart';
import 'package:trivia/models/category_model.dart';

List<CategoryModel> categories = [
  CategoryModel(
    name: 'Art',
    color: Colors.grey,
    imagePath: 'assets/images/art.png',
  ),
  CategoryModel(
    name: 'Sports',
    color: Colors.orangeAccent,
    imagePath: 'assets/images/sports.png',
  ),
  CategoryModel(
    name: 'History',
    color: Colors.teal,
    imagePath: 'assets/images/history.png',
  ),
  CategoryModel(
    name: 'Politics',
    color: Colors.lime,
    imagePath: 'assets/images/politics.png',
  ),
  CategoryModel(
    name: 'Celebrities',
    color: Colors.pink,
    imagePath: 'assets/images/celebrities.png',
  ),
  CategoryModel(
    name: 'Animals',
    color: Colors.purpleAccent,
    imagePath: 'assets/images/animals.png',
  ),
  CategoryModel(
    name: 'Video games',
    color: Colors.cyan,
    imagePath: 'assets/images/video-games.png',
  ),
  CategoryModel(
    name: 'Books',
    color: Colors.lightGreen,
    imagePath: 'assets/images/books.png',
  ),
];
