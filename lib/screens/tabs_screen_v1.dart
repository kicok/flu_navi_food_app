import 'package:flutter/material.dart';

import 'categories_screen.dart';
import 'favorites_screen.dart';
import '../models/meal.dart';

class TabsScreen1 extends StatefulWidget {
  final List<Meal> favoriteMeals;
  TabsScreen1(this.favoriteMeals);

  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen1> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      //initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Meals'),
          bottom: TabBar(tabs: [
            Tab(
              icon: Icon(Icons.category),
              text: 'Categories',
            ),
            Tab(
              icon: Icon(
                Icons.star,
              ),
              text: 'Favorites',
            ),
          ]),
        ),
        body: TabBarView(children: [
          CategoriesScreen(),
          FavoritesScreen(widget.favoriteMeals),
        ]),
      ),
    );
  }
}
