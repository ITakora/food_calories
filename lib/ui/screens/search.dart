import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Center(
        child: Text('Search'),
      ),
      backgroundColor: const Color.fromARGB(255, 255, 255, 240),
    );
  }
}
