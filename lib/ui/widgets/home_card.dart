import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:food_calories/data/models/food_calorie_models.dart';

class HomeCard extends StatelessWidget {
  const HomeCard({super.key, required this.data});

  final FoodCalorieModels data;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      height: 210,
      child: Card(
        child: Column(children: [
          CachedNetworkImage(
            imageUrl: data.image,
            imageBuilder: (context, imageProvider) => Container(
              margin: const EdgeInsets.only(top: 25),
              width: double.infinity,
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                image: DecorationImage(
                  image: imageProvider,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            placeholder: (context, url) => const CircularProgressIndicator(),
            errorWidget: (context, url, error) => const Icon(Icons.error),
          ),
          Text(data.name),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Calories : ${data.calories.toString()}'),
              const SizedBox(width: 10),
              Text('Proteins : ${data.proteins.toString()}'),
              const SizedBox(width: 10),
              Text('Carbohydrate : ${data.carbohydrate.toString()}'),
            ],
          )
        ]),
      ),
    );
  }
}
