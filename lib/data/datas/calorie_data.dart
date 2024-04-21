import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:food_calories/data/models/food_calorie_models.dart';

final calorieData = FutureProvider<List<FoodCalorieModels>>((ref) async {
  final response =
      await rootBundle.loadString('assets/data/food_calories.json');
  final List data = (jsonDecode(response) as List);

  final List<FoodCalorieModels> foodData =
      data.map((data) => FoodCalorieModels.fromJson(data)).toList();

  return foodData;
});
