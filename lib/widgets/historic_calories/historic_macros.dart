import 'package:calorie_diff/providers/macros_providers.dart';
import 'package:calorie_diff/providers/settings_providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../generated/l10n.dart';
import 'historic_macro_row.dart';

class HistoricMacros extends ConsumerWidget {
  final DateTime date;

  const HistoricMacros({required this.date, super.key});

  @override
  Widget build(context, ref) {
    final healthData = ref.watch(healthMacrosProvider(date));
    final macros = ref.watch(settingsProvider.select((v) => v.macros));

    return healthData.when(
      data: (data) {
        return Container(
          padding: const EdgeInsets.only(left: 4, right: 60),
          child: Column(
            children: [
              HistoricMacroRow(
                label: S.of(context).carbs,
                data: data.carb,
                target: macros.carb,
              ),
              divider,
              HistoricMacroRow(
                label: S.of(context).fats,
                data: data.fat,
                target: macros.fat,
              ),
              divider,
              HistoricMacroRow(
                label: S.of(context).protein,
                data: data.protein,
                target: macros.protein,
              ),
              const SizedBox(height: 16),
            ],
          ),
        );
      },
      error: (e, s) => const SizedBox.shrink(key: Key("error")),
      loading: () => const SizedBox.shrink(key: Key("loading")),
    );
  }

  static const divider = SizedBox(height: 8);
}
