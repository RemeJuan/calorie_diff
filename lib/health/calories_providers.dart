import 'package:calorie_diff/core/extensions.dart';
import 'package:calorie_diff/models/health_calories_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:health/health.dart';

import 'health_providers.dart';
import 'health_utils.dart';

final healthCaloriesProvider = FutureProvider<HealthCaloriesModel>((ref) async {
  final now = ExtendedDateTime.current;
  final health = ref.read(healthFactoryProvider);
  final types = ref.read(healthDataTypesProvider);

  final data = await health.getHealthDataFromTypes(
    DateTime(now.year, now.month, now.day),
    now,
    types,
  );

  final clean = HealthFactory.removeDuplicates(data);
  final active = HealthUtils.prepareDataEntry(
    clean,
    HealthDataType.ACTIVE_ENERGY_BURNED,
  );
  final rest = HealthUtils.prepareDataEntry(
    clean,
    HealthDataType.BASAL_ENERGY_BURNED,
  );
  final dietary = HealthUtils.prepareDataEntry(
    clean,
    HealthDataType.DIETARY_ENERGY_CONSUMED,
  );
  final difference = dietary - (active + rest);
  return HealthCaloriesModel(
    date: now,
    burned: HealthUtils.decimals(active + rest),
    consumed: HealthUtils.decimals(dietary),
    difference: HealthUtils.decimals(difference),
  );
});

final historicHealthDataProvider =
    FutureProvider.family<List<HealthCaloriesModel>, int>((
  ref, [
  int days = 7,
]) async {
  final now = ExtendedDateTime.current;
  final start = now.subtract(Duration(days: days));
  final end = DateTime(now.year, now.month, now.day);

  final health = ref.read(healthFactoryProvider);
  final types = ref.read(healthDataTypesProvider);

  final data = await health.getHealthDataFromTypes(
    DateTime(start.year, start.month, start.day),
    end,
    types,
  );

  final clean = HealthFactory.removeDuplicates(data);
  final dates = HealthUtils.getDates(clean);

  return dates.map((date) {
    final active = HealthUtils.prepareDataEntry(
      HealthUtils.filterByDate(clean, date),
      HealthDataType.ACTIVE_ENERGY_BURNED,
    );
    final rest = HealthUtils.prepareDataEntry(
      HealthUtils.filterByDate(clean, date),
      HealthDataType.BASAL_ENERGY_BURNED,
    );
    final dietary = HealthUtils.prepareDataEntry(
      HealthUtils.filterByDate(clean, date),
      HealthDataType.DIETARY_ENERGY_CONSUMED,
    );
    final difference = dietary - (active + rest);
    return HealthCaloriesModel(
      date: date,
      burned: HealthUtils.decimals(active + rest),
      consumed: HealthUtils.decimals(dietary),
      difference: HealthUtils.decimals(difference),
    );
  }).toList();
});
