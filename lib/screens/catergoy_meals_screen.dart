import 'package:flutter/material.dart';
import 'package:quickmeal/data/meals_data.dart';
import 'package:quickmeal/models/meal.dart';
import 'package:quickmeal/modules/meal_widget_module.dart';

class CategoryMealsScreen extends StatefulWidget {
  static const routeName = '/categoriesMealsScreen';

  @override
  _CategoryMealsScreenState createState() => _CategoryMealsScreenState();
}

class _CategoryMealsScreenState extends State<CategoryMealsScreen> {
  String selectedCategoryTitle;
  List<Meal> mealsOfSelectedCategory;
  var _allDataBeingInitialized = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    if(!_allDataBeingInitialized) {
      final routeArgs =ModalRoute.of(context).settings.arguments as Map<String, dynamic>;

      final String selectedCategoryId = routeArgs['selectedCategoryId'];
      selectedCategoryTitle = routeArgs['selectedCategoryTitle'];
      mealsOfSelectedCategory = DUMMY_MEALS.where((eachMeal) {
        return eachMeal.categories.contains(selectedCategoryId);
      }).toList();

      // Because we don't want to re-initialize
      _allDataBeingInitialized = true;
    }
    super.didChangeDependencies();
  }

  void _removeMeal(String mealId) {
    setState(() {
      mealsOfSelectedCategory.removeWhere((meal) => meal.id == mealId);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(selectedCategoryTitle),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return MealItem(
            id: mealsOfSelectedCategory[index].id,
            title: mealsOfSelectedCategory[index].title,
            duration: mealsOfSelectedCategory[index].duration,
            affordability: mealsOfSelectedCategory[index].affordability,
            complexity: mealsOfSelectedCategory[index].complexity,
            imageUrl: mealsOfSelectedCategory[index].imageUrl,
            removeItem: _removeMeal,
          );
        },
        itemCount: mealsOfSelectedCategory.length,
      ),
    );
  }
}
