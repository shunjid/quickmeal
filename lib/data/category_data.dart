import 'package:flutter/material.dart';
import 'package:quickmeal/models/category.dart';

// const (unchangeable) LIST require immutable objects (const constructor)
const DummyCategories = const [
  Category(
    categoryId: 'c1',
    categoryTitle: 'Italian',
    categoryColor: Colors.deepOrangeAccent,
  ),
  Category(
    categoryId: 'c2',
    categoryTitle: 'Quick & Easy',
    categoryColor: Colors.red,
  ),
  Category(
    categoryId: 'c3',
    categoryTitle: 'Hamburgers',
    categoryColor: Colors.orange,
  ),
  Category(
    categoryId: 'c4',
    categoryTitle: 'German',
    categoryColor: Colors.amber,
  ),
  Category(
    categoryId: 'c5',
    categoryTitle: 'Light & Lovely',
    categoryColor: Colors.blue,
  ),
  Category(
    categoryId: 'c6',
    categoryTitle: 'Exotic',
    categoryColor: Colors.green,
  ),
  Category(
    categoryId: 'c7',
    categoryTitle: 'Breakfast',
    categoryColor: Colors.lightBlue,
  ),
  Category(
    categoryId: 'c8',
    categoryTitle: 'Asian',
    categoryColor: Colors.lightGreen,
  ),
  Category(
    categoryId: 'c9',
    categoryTitle: 'French',
    categoryColor: Colors.pink,
  ),
  Category(
    categoryId: 'c10',
    categoryTitle: 'Summer',
    categoryColor: Colors.teal,
  ),
];
