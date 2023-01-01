import 'package:calorie_diff/providers/calories_providers.dart';
import 'package:calorie_diff/providers/settings_providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../shared/data_card.dart';

class CurrentCalories extends ConsumerWidget {
  const CurrentCalories({Key? key}) : super(key: key);

  @override
  Widget build(context, ref) {
    final healthData = ref.watch(healthCaloriesProvider);
    final settings = ref.watch(settingsProvider);

    return healthData.when(
      data: (data) {
        return Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            if (settings.macrosEnabled) ...[
              const Center(
                child: Text(
                  "Current Calories:",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 16),
            ],
            DataCard(
              icon: const Icon(
                Icons.difference,
                color: Colors.lightBlueAccent,
                size: 26,
              ),
              label: "Difference",
              data: data.difference,
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: DataCard(
                    icon: const Icon(
                      Icons.directions_run,
                      color: Colors.orange,
                      size: 30,
                    ),
                    label: "Out",
                    data: data.burned,
                  ),
                ),
                Expanded(
                  child: DataCard(
                    icon: const Icon(
                      Icons.fastfood_outlined,
                      color: Colors.lightGreen,
                      size: 26,
                    ),
                    label: "In",
                    data: data.consumed,
                  ),
                )
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
