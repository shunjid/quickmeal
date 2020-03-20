import 'package:flutter/material.dart';
import 'package:quickmeal/data/category_data.dart';
import 'package:quickmeal/modules/category_widget_module.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: const EdgeInsets.all(25.0),
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 20.0,
        mainAxisSpacing: 20.0,
      ),
      children: DummyCategories.map(
        (eachCategory) => CategoryItem(
          eachCategoryId: eachCategory.categoryId,
          eachCategoryTitle: eachCategory.categoryTitle,
          eachCategoryColor: eachCategory.categoryColor,
        ),
      ).toList(),
    );
  }
}
