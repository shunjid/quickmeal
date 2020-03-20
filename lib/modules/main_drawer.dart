import 'package:flutter/material.dart';
import 'package:quickmeal/screens/filters_screen.dart';

class MainDrawer extends StatelessWidget {
  Widget buildListTile(
      {String title,
      IconData icon,
      BuildContext context,
      Function tapHandler}) {
    return ListTile(
      leading: Icon(
        icon,
        size: 26.0,
      ),
      title: Text(
        title,
        style: TextStyle(
          fontFamily: 'RobotoCondensed',
          fontSize: 24.0,
          fontWeight: FontWeight.bold,
        ),
      ),
      onTap: tapHandler,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            height: 150.0,
            width: double.infinity,
            padding: EdgeInsets.all(15.0),
            alignment: Alignment.centerLeft,
            color: Theme.of(context).accentColor,
            child: Text(
              'Cooking Up!',
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 40.0,
                color: Theme.of(context).primaryColor,
              ),
            ),
          ),
          SizedBox(
            height: 5.0,
          ),
          buildListTile(
            title: 'Meals',
            icon: Icons.restaurant,
            context: context,
            tapHandler: () => Navigator.of(context).pushReplacementNamed('/'),
          ),
          buildListTile(
            title: 'Filters',
            icon: Icons.settings,
            context: context,
            tapHandler: () =>
                Navigator.of(context).pushReplacementNamed(FilterScreen.routeName),
          ),
        ],
      ),
    );
  }
}
