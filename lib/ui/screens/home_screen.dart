import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:food_calories/data/datas/calorie_data.dart';

import 'package:percent_indicator/circular_percent_indicator.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen(
      {super.key, required this.calorieUser, required this.proteinUser});

  final String calorieUser;
  final String proteinUser;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final calorie = ref.watch(calorieState);

    final foodData = ref.watch(calorieData);

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
              child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircularPercentIndicator(
                radius: 70.0,
                lineWidth: 8.0,
                animation: true,
                center: Text(calorieUser),
                percent: 1,
                progressColor: Colors.green,
              ),
              const SizedBox(width: 20),
              CircularPercentIndicator(
                radius: 70.0,
                lineWidth: 8.0,
                animation: true,
                center: Text(proteinUser),
                percent: 1,
                progressColor: Colors.green,
              ),
            ],
          )),
        ),
        foodData.when(
          error: (error, stackTrace) => Text(error.toString()),
          loading: () => const Center(child: CircularProgressIndicator()),
          data: (data) {
            return Expanded(
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: data.length,
                itemBuilder: (context, index) {
                  final dataFood = data[index];

                  return SizedBox(
                    width: 150,
                    height: 150,
                    child: Card(
                      child: Column(children: [
                        Text(dataFood.name),
                        Row(
                          children: [
                            Text('Calories : ${dataFood.calories.toString()}'),
                            const SizedBox(width: 10),
                            Text('Proteins : ${dataFood.proteins.toString()}'),
                            const SizedBox(width: 10),
                            Text(
                                'Carbohydrate : ${dataFood.carbohydrate.toString()}'),
                          ],
                        )
                      ]),
                    ),
                  );
                },
              ),
            );
          },
        )
      ]),
      backgroundColor: const Color.fromARGB(255, 255, 255, 240),
    );
  }
}
