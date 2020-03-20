import 'package:flutter/material.dart';
import 'package:quickmeal/models/meal.dart';
import 'package:quickmeal/modules/meal_widget_module.dart';

class FavouriteScreen extends StatelessWidget {
  final List<Meal> favouriteMeals;
  FavouriteScreen(this.favouriteMeals);

  @override
  Widget build(BuildContext context) {
    if(favouriteMeals.isEmpty){
      return Center(
        child: Text(
            'You have no favs'
        ),
      );
    } else {
      return ListView.builder(
        itemBuilder: (context, index) {
          return MealItem(
            id: favouriteMeals[index].id,
            title: favouriteMeals[index].title,
            duration: favouriteMeals[index].duration,
            affordability: favouriteMeals[index].affordability,
            complexity: favouriteMeals[index].complexity,
            imageUrl: favouriteMeals[index].imageUrl,
          );
        },
        itemCount: favouriteMeals.length,
      );
    }
  }
}
