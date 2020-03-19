import 'package:flutter/material.dart';

class CategoryMealsScreen extends StatelessWidget {
  static const routeName = '/categoriesMealsScreen';

  @override
  Widget build(BuildContext context) {
    final routeArgs = ModalRoute.of(context).settings.arguments as Map<String, dynamic>;
    final String selectedCategoryId = routeArgs['selectedCategoryId'];
    final String selectedCategoryTitle = routeArgs['selectedCategoryTitle'];

    return Scaffold(
      appBar: AppBar(
        title: Text(selectedCategoryTitle),
      ),
      body: Center(
        child: Text(
          'The Receipes For The Category',
        ),
      ),
    );
  }
}
