import 'package:calorie_diff/pages/current_page.dart';
import 'package:calorie_diff/pages/historic_page.dart';
import 'package:calorie_diff/pages/settings/settings_page.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'core/core_providers.dart';
import 'providers/health_providers.dart';

class LandingScreen extends HookConsumerWidget {
  const LandingScreen({Key? key}) : super(key: key);

  @override
  Widget build(context, ref) {
    final hasPermissions = ref.watch(healthRequestAccessProvider);
    final pageViewController = ref.watch(pageViewControllerProvider);

    return hasPermissions.when(
      data: (_) {
        return GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: PageView(
            controller: pageViewController,
            children: const [
              CurrentPage(),
              HistoricPage(),
              SettingsPage(),
            ],
          ),
        );
      },
      error: (e, s) => Text(e.toString()),
      loading: () => const SizedBox.shrink(key: Key('loading')),
    );
  }
}
