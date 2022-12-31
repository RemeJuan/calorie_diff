import 'package:calorie_diff/providers/settings_providers.dart';
import 'package:calorie_diff/widgets/current_calories/current_calories.dart';
import 'package:calorie_diff/widgets/historic_calories/historic_calories.dart';
import 'package:calorie_diff/widgets/macros/macros.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CurrentPage extends ConsumerWidget {
  const CurrentPage({Key? key}) : super(key: key);

  @override
  Widget build(context, ref) {
    final settings = ref.watch(settingsProvider);

    return ListView(
      shrinkWrap: true,
      children: [
        if (settings.macrosEnabled) const CurrentMacros(),
        const SizedBox(height: 16),
        const CurrentCalories(),
        if (!settings.macrosEnabled)
          const HistoricCalories(days: 7, showLoader: false),
      ],
    );
  }
}
