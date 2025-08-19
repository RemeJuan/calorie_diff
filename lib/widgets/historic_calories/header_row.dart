import 'package:calorie_diff/providers/settings_providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HeaderRow extends ConsumerWidget {
  final List<String> entries;

  const HeaderRow({required this.entries, super.key});

  @override
  Widget build(context, ref) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final settings = ref.watch(settingsProvider);
        final width = constraints.maxWidth;
        final widthModifier = settings.macrosEnabled ? 40 : 0;

        return Row(
          children: entries.map((e) {
            return Container(
              width: (width - widthModifier) / entries.length,
              alignment: Alignment.center,
              child: Text(
                e,
                style: TextStyle(
                  color: Colors.blueGrey[300],
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  height: 1.5,
                ),
              ),
            );
          }).toList(),
        );
      },
    );
  }
}
