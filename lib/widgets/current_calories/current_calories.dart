import 'package:calorie_diff/providers/calories_providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../generated/l10n.dart';
import '../shared/data_card.dart';

class CurrentCalories extends ConsumerWidget {
  const CurrentCalories({Key? key}) : super(key: key);

  @override
  Widget build(context, ref) {
    final healthData = ref.watch(healthCaloriesProvider);

    return healthData.when(
      data: (data) {
        return Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            DataCard(
              icon: const Icon(
                Icons.difference,
                color: Colors.lightBlueAccent,
                size: 26,
              ),
              label: S.of(context).difference,
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
                    label: S.of(context).current_out,
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
                    label: S.of(context).current_in,
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
