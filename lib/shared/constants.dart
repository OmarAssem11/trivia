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
  CategoryModel(
    name: 'General Knowledge',
    color: Colors.lightGreen,
    imagePath: 'assets/images/books.png',
  ),
  CategoryModel(
    name: 'Films',
    color: Colors.lightGreen,
    imagePath: 'assets/images/books.png',
  ),
  CategoryModel(
    name: 'Mythology',
    color: Colors.lightGreen,
    imagePath: 'assets/images/books.png',
  ),
  CategoryModel(
    name: 'Geography',
    color: Colors.lightGreen,
    imagePath: 'assets/images/books.png',
  ),
  CategoryModel(
    name: 'Mathematics',
    color: Colors.lightGreen,
    imagePath: 'assets/images/books.png',
  ),
  CategoryModel(
    name: 'Music',
    color: Colors.lightGreen,
    imagePath: 'assets/images/books.png',
  ),
  CategoryModel(
    name: 'Board Games',
    color: Colors.lightGreen,
    imagePath: 'assets/images/books.png',
  ),
  CategoryModel(
    name: 'Vehicles',
    color: Colors.lightGreen,
    imagePath: 'assets/images/books.png',
  ),
  CategoryModel(
    name: 'Comics',
    color: Colors.lightGreen,
    imagePath: 'assets/images/books.png',
  ),
  CategoryModel(
    name: 'Gadgets',
    color: Colors.lightGreen,
    imagePath: 'assets/images/books.png',
  ),
  CategoryModel(
    name: 'Science & Nature',
    color: Colors.lightGreen,
    imagePath: 'assets/images/books.png',
  ),
  CategoryModel(
    name: 'Computers',
    color: Colors.lightGreen,
    imagePath: 'assets/images/books.png',
  ),
  CategoryModel(
    name: 'Musicals & Theaters',
    color: Colors.lightGreen,
    imagePath: 'assets/images/books.png',
  ),
  CategoryModel(
    name: 'Television',
    color: Colors.lightGreen,
    imagePath: 'assets/images/books.png',
  ),
  CategoryModel(
    name: 'Anime & Manga',
    color: Colors.lightGreen,
    imagePath: 'assets/images/books.png',
  ),
  CategoryModel(
    name: 'Cartoon & Animations',
    color: Colors.lightGreen,
    imagePath: 'assets/images/books.png',
  ),
];

Map<String, int> categoriesNumbers = {
  'Art': 25,
  'Sports': 21,
  'History': 23,
  'Politics': 24,
  'Celebrities': 26,
  'Animals': 27,
  'Video games': 15,
  'Books': 10,
  'General Knowledge': 9,
  'Film': 11,
  'Mythology': 20,
  'Geography': 22,
  'Mathematics': 19,
  'Music': 12,
  'Board Games': 16,
  'Vehicles': 28,
  'Comics': 29,
  'Gadgets': 30,
  'Science & Nature': 17,
  'Computers': 18,
  'Musicals & Theaters': 13,
  'Television': 14,
  'Anime & Manga': 31,
  'Cartoon & Animations': 32,
};
