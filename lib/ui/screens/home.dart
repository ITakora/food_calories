import 'package:flutter/material.dart';
import 'package:food_calories/ui/screens/favorite.dart';
import 'package:food_calories/ui/screens/search.dart';
import 'package:food_calories/ui/widgets/bottom_navigation.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;

  onTapFunc(value) {
    // widget.indexScreen(value);
    setState(() {
      index = value;
    });
  }

  final screens = [FavoriteScreen(), SearchScreen()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: screens[index],
        backgroundColor: const Color.fromARGB(255, 255, 255, 240),
        bottomNavigationBar: BottomNavigation(
            onTapFunc: (value) {
              onTapFunc(value);
            },
            index: index));
  }
}
