import 'package:flutter/material.dart';
import 'package:quickmeal/data/meals_data.dart';

class CategoryMealsScreen extends StatelessWidget {
  static const routeName = '/categoriesMealsScreen';

  @override
  Widget build(BuildContext context) {
    final routeArgs =ModalRoute.of(context).settings.arguments as Map<String, dynamic>;

    final String selectedCategoryId = routeArgs['selectedCategoryId'];
    final String selectedCategoryTitle = routeArgs['selectedCategoryTitle'];
    final mealsOfSelectedCategory = DUMMY_MEALS.where((eachMeal) {
      return eachMeal.categories.contains(selectedCategoryId);
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(selectedCategoryTitle),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Text(
            mealsOfSelectedCategory[index].title,
          );
        },
        itemCount: mealsOfSelectedCategory.length,
      ),
    );
  }
}
