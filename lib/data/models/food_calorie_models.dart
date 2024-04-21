class FoodCalorieModels {
  num id;
  num calories;
  num proteins;
  num fat;
  num carbohydrate;
  String name;
  String image;

  FoodCalorieModels({
    required this.id,
    required this.calories,
    required this.proteins,
    required this.fat,
    required this.carbohydrate,
    required this.name,
    required this.image,
  });

  factory FoodCalorieModels.fromJson(Map<String, dynamic> json) =>
      FoodCalorieModels(
        id: json["id"],
        calories: json["calories"],
        proteins: json["proteins"],
        fat: json["fat"],
        carbohydrate: json["carbohydrate"],
        name: json["name"],
        image: json["image"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "calories": calories,
        "proteins": proteins,
        "fat": fat,
        "carbohydrate": carbohydrate,
        "name": name,
        "image": image,
      };
}
