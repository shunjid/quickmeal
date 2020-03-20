import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:quickmeal/screens/catergories.dart';
import 'package:quickmeal/screens/catergoy_meals_screen.dart';
import 'package:quickmeal/screens/meal_details_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.pink,
        accentColor: Colors.amber,
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
          body1: TextStyle(
            color: Color.fromRGBO(20, 51, 51, 1),
          ),
          body2: TextStyle(
            color: Color.fromRGBO(20, 51, 51, 1),
          ),
          title: TextStyle(
            fontSize: 20,
            fontFamily: 'RobotoCondensed',
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      title: 'QuickMeal',
      routes: {
        '/' : (ctx) => CategoriesScreen(),
        CategoryMealsScreen.routeName : (ctx) => CategoryMealsScreen() ,
        MealDetailScreen.routeName : (ctx) => MealDetailScreen(),
      },
    );
  }
}
