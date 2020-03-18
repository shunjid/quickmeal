import 'dart:ui';

import 'package:flutter/material.dart';

class Category {
  final String categoryId;
  final String categoryTitle;
  final Color categoryColor;

  const Category({
    @required this.categoryId,
    @required this.categoryTitle,
    @required this.categoryColor
  });
}
