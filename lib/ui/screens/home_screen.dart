import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Food Calories'),
        systemOverlayStyle: SystemUiOverlayStyle.dark,
        backgroundColor: Colors.transparent,
      ),
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.only(top: 35),
          child: Center(
              child: CircularPercentIndicator(
            radius: 70.0,
            lineWidth: 8.0,
            animation: true,
            center: Text('Your Calories'),
            percent: 1,
            progressColor: Colors.green,
          )),
        )
      ]),
      backgroundColor: const Color.fromARGB(255, 255, 255, 240),
    );
  }
}
