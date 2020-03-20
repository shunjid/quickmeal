import 'package:flutter/material.dart';

class MealDetailScreen extends StatelessWidget {
  static const routeName = '/meal-detail';
  @override
  Widget build(BuildContext context) {
    final selectedMealId = ModalRoute.of(context).settings.arguments as String;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          '$selectedMealId',
        ),
      ),
      body: Center(
        child: Text(
            'Meal!'
        ),
      ),
    );
  }
}
