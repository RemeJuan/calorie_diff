import 'package:calorie_diff/providers/macros_providers.dart';
import 'package:calorie_diff/providers/settings_providers.dart';
import 'package:calorie_diff/widgets/shared/progress_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CurrentMacros extends ConsumerWidget {
  const CurrentMacros({Key? key}) : super(key: key);

  @override
  Widget build(context, ref) {
    final healthData = ref.watch(healthMacrosProvider);
    final macros = ref.watch(settingsProvider.select((v) => v.macros));

    return healthData.when(
      data: (data) {
        return Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            const Center(
              child: Text(
                "Macros:",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: ProgressCard(
                    label: "Carbs",
                    data: data.carb,
                    target: macros.carb,
                    color: Colors.orange,
                  ),
                ),
                Expanded(
                  child: ProgressCard(
                    label: "Fats",
                    data: data.fat,
                    target: macros.fat,
                    color: Colors.lightGreen,
                  ),
                ),
                Expanded(
                  child: ProgressCard(
                    label: "Protein",
                    data: data.protein,
                    target: macros.protein,
                    color: Colors.lightBlueAccent,
                  ),
                ),
              ],
            ),
          ],
        );
      },
      error: (e, s) => const SizedBox.shrink(key: Key("error")),
      loading: () => const SizedBox.shrink(key: Key("loading")),
    );
  }
}