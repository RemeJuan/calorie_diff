import 'package:calorie_diff/health/health_providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'data_card.dart';

class CurrentCalories extends ConsumerWidget {
  const CurrentCalories({Key? key}) : super(key: key);

  @override
  Widget build(context, ref) {
    final healthData = ref.watch(healthDataProvider);

    return healthData.when(
      data: (data) {
        return Column(
          mainAxisSize: MainAxisSize.max,
          children: [
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
            const SizedBox(height: 16),
            DataCard(
              icon: const Icon(
                Icons.difference,
                color: Colors.lightBlueAccent,
                size: 26,
              ),
              label: "Difference",
              data: data.difference,
            ),
          ],
        );
      },
      error: (e, s) => const SizedBox.shrink(key: Key("error")),
      loading: () => const SizedBox.shrink(key: Key("loading")),
    );
  }
}
