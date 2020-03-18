import 'package:flutter/material.dart';

class CategoryMealsScreen extends StatelessWidget {
  final String selectedCategoryId;
  final String selectedCategoryTitle;

  const CategoryMealsScreen({this.selectedCategoryId, this.selectedCategoryTitle});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('The Recipes'),
      ),
      body: Center(
        child: Text(
          'The Receipes For The Category',
        ),
      ),
    );
  }
}
