import 'package:flutter/material.dart';
import 'package:food_recipie_app/food/food.dart';
import 'package:food_recipie_app/widget/Meal_item.dart';

class CategoryMeals extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;
    final categoryTitle = routeArgs['title'];
    final categoryId = routeArgs['id'];
    final categoryMeals = DUMMY_MEALS.where((meal) {
      return meal.categories.contains(categoryId);
    }).toList();

    return Scaffold(
        appBar: AppBar(
          title: Text('${categoryTitle}'),
        ),
        body: ListView.builder(
          itemBuilder: (ctx, index) {
            return MealItem(
                title: categoryMeals[index].title,
                imageUrl: categoryMeals[index].imageUrl,
                duration: categoryMeals[index].duration,
                complexity: categoryMeals[index].complexity,
                affordability: categoryMeals[index].affordability,
                meal: categoryMeals[index]);
          },
          itemCount: categoryMeals.length,
        ));
  }
}
