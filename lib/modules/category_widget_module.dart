import 'package:flutter/material.dart';

// Single Category Item Builder
class CategoryItem extends StatelessWidget {
  final String eachCategoryId;
  final String eachCategoryTitle;
  final Color eachCategoryColor;

  CategoryItem(
      {this.eachCategoryId, this.eachCategoryTitle, this.eachCategoryColor});

  void selectCategory(BuildContext ctx) {
    Navigator.of(ctx).pushNamed('/categories', arguments: {
      'selectedCategoryId': eachCategoryId,
      'selectedCategoryTitle': eachCategoryTitle,
    });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15.0),
      onTap: () => selectCategory(context),
      child: Container(
        padding: const EdgeInsets.all(15.0),
        child: Text(
          eachCategoryTitle,
          style: Theme.of(context).textTheme.title,
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              eachCategoryColor.withOpacity(0.9),
              eachCategoryColor,
            ],
            begin: Alignment.bottomLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(15.0),
        ),
      ),
    );
  }
}
