import 'package:calorie_diff/health/health_providers.dart';
import 'package:calorie_diff/widgets/historic_calories/historic_calories.dart';
import 'package:calorie_diff/widgets/range_picker/range_picker.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HistoricPage extends HookConsumerWidget {
  const HistoricPage({Key? key}) : super(key: key);

  @override
  Widget build(context, ref) {
    final selectedValue = ref.watch(selectedDaysProvider);

    return ListView(
      children: [
        RangePicker(selectedValue: selectedValue),
        HistoricCalories(days: selectedValue, showLoader: true),
      ],
    );
  }
}
