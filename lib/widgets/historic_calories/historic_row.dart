import 'package:calorie_diff/providers/settings_providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'historic_macros.dart';

class HistoricRow extends ConsumerWidget {
  final DateTime date;
  final List<String> entries;

  const HistoricRow({
    required this.date,
    required this.entries,
    super.key,
  });

  @override
  Widget build(context, ref) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final width = constraints.maxWidth;
        final settings = ref.watch(settingsProvider);
        final widthModifier = settings.macrosEnabled ? 40 : 0;

        final title = Row(
          children: entries.map((e) {
            return Container(
              width: (width - widthModifier) / entries.length,
              alignment: Alignment.center,
              child: Text(
                e,
                style: TextStyle(
                  color: Colors.blueGrey[400],
                  fontSize: 14,
                  height: 1.25,
                ),
              ),
            );
          }).toList(),
        );

        if (!settings.macrosEnabled) {
          return title;
        }

        return Theme(
          data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
          child: ExpansionTile(
            tilePadding: EdgeInsets.zero,
            childrenPadding: EdgeInsets.zero,
            maintainState: true,
            initiallyExpanded: false,
            title: title,
            children: [
              HistoricMacros(date: date),
            ],
          ),
        );
      },
    );
  }
}
