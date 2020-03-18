import 'package:flutter/material.dart';
import 'package:quickmeal/screens/catergories.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      title: 'QuickMeal',
      home: CategoriesScreen(),
    );
  }
}
