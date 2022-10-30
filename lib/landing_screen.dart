import 'package:calorie_diff/widgets/current_calories/current_calories.dart';
import 'package:calorie_diff/widgets/historic_calories/historic_calories.dart';
import 'package:calorie_diff/widgets/permissions_request.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'health/health_providers.dart';

class LandingScreen extends ConsumerWidget {
  const LandingScreen({Key? key}) : super(key: key);

  @override
  Widget build(context, ref) {
    final hasPermissions = ref.watch(hasHealthDataAccessProvider);

    return hasPermissions.when(
      data: (needsPermission) {
        if (needsPermission == true) {
          return const PermissionRequest();
        }

        return ListView(
          shrinkWrap: true,
          children: const [
            CurrentCalories(),
            HistoricCalories(),
          ],
        );
      },
      error: (e, s) => Text(e.toString()),
      loading: () => const CircularProgressIndicator(key: Key('loading')),
    );
  }
}
