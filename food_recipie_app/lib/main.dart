import 'package:flutter/material.dart';
import 'package:food_recipie_app/screen/Categories_mealsscreen.dart';
import 'package:food_recipie_app/screen/Categories_screen.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CategoriesScreen(),
      routes: {'/category-meals': (context) => CategoryMeals()}));
}
