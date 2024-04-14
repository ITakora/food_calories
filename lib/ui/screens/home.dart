import 'package:flutter/material.dart';
import 'package:food_calories/ui/screens/favorite_screen.dart';
import 'package:food_calories/ui/screens/home_screen.dart';
import 'package:food_calories/ui/screens/search_screen.dart';
import 'package:food_calories/ui/widgets/bottom_navigation.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int index = 0;

  onTapFunc(value) {
    // widget.indexScreen(value);
    setState(() {
      index = value;
    });
  }

  final screens = [HomeScreen(), SearchScreen(), FavoriteScreen()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: screens[index],
        bottomNavigationBar: BottomNavigation(
            onTapFunc: (value) {
              onTapFunc(value);
            },
            index: index));
  }
}
