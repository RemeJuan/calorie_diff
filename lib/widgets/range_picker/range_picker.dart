import 'package:calorie_diff/providers/health_providers.dart';
import 'package:calorie_diff/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../generated/l10n.dart';

class RangePicker extends HookConsumerWidget {
  final int selectedValue;

  const RangePicker({required this.selectedValue, super.key});

  @override
  Widget build(context, ref) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: DropdownButton<int>(
        isExpanded: true,
        isDense: true,
        dropdownColor: AppTheme.barColor,
        underline: const SizedBox.shrink(),
        items: [7, 14, 30].map((i) => _generateItem(context, i)).toList(),
        onChanged: (value) {
          ref.read(selectedDaysProvider.notifier).state = value!;
        },
        value: selectedValue,
      ),
    );
  }

  DropdownMenuItem<int> _generateItem(BuildContext context, int value) {
    return DropdownMenuItem<int>(
      value: value,
      child: Text(S.of(context).days_select(value)),
    );
  }
}
