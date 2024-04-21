import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:food_calories/riverpods/calories_protein_state.dart';
import 'package:food_calories/ui/screens/home.dart';

class CaloriesUser extends ConsumerStatefulWidget {
  const CaloriesUser({super.key});

  @override
  ConsumerState<CaloriesUser> createState() => _CaloriesUserState();
}

class _CaloriesUserState extends ConsumerState<CaloriesUser> {
  @override
  Widget build(BuildContext context) {
    // FocusNode focusNode = FocusNode();

    String calorieUser = ref.watch(calorieState);
    String proteinUser = ref.watch(proteinState);

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: TextFormField(
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  calorieUser = value;
                  ref.watch(calorieState.notifier).state;
                },
                decoration: const InputDecoration(label: Text('Calories ')),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: TextFormField(
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  proteinUser = value;
                  ref.watch(proteinState.notifier).state;
                },
                decoration: const InputDecoration(label: Text('Protein ')),
              ),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(context, MaterialPageRoute(
                  builder: (context) {
                    return Home(
                      calorie: calorieUser,
                      protein: proteinUser,
                    );
                  },
                ));
              },
              child: const Text("Next"),
            )
          ],
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}
