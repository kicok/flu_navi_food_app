import 'package:flutter/material.dart';

import '../widgets/meal_item.dart';
import '../dummy_data.dart';

class CategoryMealsScreen extends StatelessWidget {
  static const routeName = '/category-meals';
  // final String categoryId;
  // final String categoryTitle;

  // CategoryMealsScreen(this.categoryId, this.categoryTitle);

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final categoryTitle = routeArgs['title'];
    final CategoryId = routeArgs['id'];
    final catetegoryMeals = DUMMY_MEALS.where((meal) {
      return meal.categories.contains(CategoryId);
    }).toList();
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle),
      ),
      body: ListView.builder(
        itemBuilder: (ctx, index) {
          //return Text(catetegoryMeals[index].title);
          return MealItem(
            title: catetegoryMeals[index].title,
            imageUrl: catetegoryMeals[index].imageUrl,
            duration: catetegoryMeals[index].duration,
            complexity: catetegoryMeals[index].complexity,
            affordability: catetegoryMeals[index].affordability,
          );
        },
        itemCount: catetegoryMeals.length,
      ),
    );
  }
}
