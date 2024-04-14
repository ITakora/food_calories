import 'package:flutter/material.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation(
      {super.key, required this.onTapFunc, required this.index});

  final int index;
  final void Function(int value) onTapFunc;

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: NavigationBar(
            onDestinationSelected: widget.onTapFunc,
            selectedIndex: widget.index,
            backgroundColor: Colors.grey,
            destinations: const [
              NavigationDestination(
                icon: Icon(Icons.home_outlined),
                label: 'Home',
                selectedIcon: Icon(Icons.home),
              ),
              NavigationDestination(
                icon: Icon(Icons.search),
                label: 'Search',
                selectedIcon: Icon(Icons.search_rounded),
              ),
              NavigationDestination(
                icon: Icon(Icons.favorite_border_rounded),
                label: 'Favorite',
                selectedIcon: Icon(Icons.favorite),
              )
            ]),
      ),
    );
  }
}
