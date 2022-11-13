import 'package:calorie_diff/widgets/current_calories/current_calories.dart';
import 'package:calorie_diff/widgets/historic_calories/historic_calories.dart';
import 'package:flutter/material.dart';

class CurrentPage extends StatelessWidget {
  const CurrentPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: const [
        CurrentCalories(),
        HistoricCalories(days: 7, showLoader: false),
      ],
    );
  }
}
