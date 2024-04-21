import 'package:flutter/material.dart';

import 'package:food_calories/ui/screens/favorite_screen.dart';
import 'package:food_calories/ui/screens/home_screen.dart';
import 'package:food_calories/ui/screens/search_screen.dart';
import 'package:food_calories/ui/widgets/bottom_navigation.dart';

class Home extends StatefulWidget {
  const Home({super.key, required this.calorie, required this.protein});

  final String calorie;
  final String protein;

  @override
  State<StatefulWidget> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int index = 0;

  void onTap(int value) {
    setState(() {
      index = value;
      ;
    });
  }

  @override
  Widget build(BuildContext context) {
    final screens = [
      HomeScreen(calorieUser: widget.calorie, proteinUser: widget.protein),
      const SearchScreen(),
      const FavoriteScreen()
    ];
    return Scaffold(
        body: screens[index],
        bottomNavigationBar: BottomNavigation(
            onTapFunc: (value) {
              onTap(value);
            },
            index: index));
  }
}
