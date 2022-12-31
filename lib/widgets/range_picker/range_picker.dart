import 'package:calorie_diff/providers/health_providers.dart';
import 'package:calorie_diff/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class RangePicker extends HookConsumerWidget {
  final int selectedValue;

  const RangePicker({required this.selectedValue, Key? key}) : super(key: key);

  @override
  Widget build(context, ref) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: DropdownButton<int>(
        isExpanded: true,
        isDense: true,
        dropdownColor: AppTheme.barColor,
        underline: const SizedBox.shrink(),
        items: [7, 14, 30, 60, 90].map(_generateItem).toList(),
        onChanged: (value) {
          ref.read(selectedDaysProvider.notifier).state = value!;
        },
        value: selectedValue,
      ),
    );
  }

  DropdownMenuItem<int> _generateItem(int value) {
    return DropdownMenuItem(
      value: value,
      child: Text('$value days'),
    );
  }
}
