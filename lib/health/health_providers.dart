import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:health/health.dart';

import '../models/health_data_model.dart';
import 'health_utils.dart';

final healthFactoryProvider = Provider<HealthFactory>((ref) => HealthFactory());
final healthRequestAccessProvider = FutureProvider<bool?>((ref) async {
  final health = ref.read(healthFactoryProvider);
  final types = ref.read(healthDataTypesProvider);

  return await health.requestAuthorization(types);
});

final healthDataTypesProvider = Provider<List<HealthDataType>>((ref) {
  return [
    HealthDataType.ACTIVE_ENERGY_BURNED,
    HealthDataType.BASAL_ENERGY_BURNED,
    HealthDataType.DIETARY_ENERGY_CONSUMED,
  ];
});

final healthDataProvider = FutureProvider<HealthDataModel>((ref) async {
  final now = DateTime.now();
  final health = ref.read(healthFactoryProvider);
  final types = ref.read(healthDataTypesProvider);

  final data = await health.getHealthDataFromTypes(
    DateTime(now.year, now.month, now.day),
    now,
    types,
  );

  final clean = HealthFactory.removeDuplicates(data);

  return HealthDataModel(
    date: now,
    active: HealthUtils.prepareDataEntry(
      clean,
      HealthDataType.ACTIVE_ENERGY_BURNED,
    ),
    rest: HealthUtils.prepareDataEntry(
      clean,
      HealthDataType.BASAL_ENERGY_BURNED,
    ),
    dietary: HealthUtils.prepareDataEntry(
      clean,
      HealthDataType.DIETARY_ENERGY_CONSUMED,
    ),
  );
});

final historicHealthDataProvider =
    FutureProvider<List<HealthDataModel>>((ref) async {
  final now = DateTime.now();
  final start = now.subtract(const Duration(days: 7));
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
    return HealthDataModel(
      date: date,
      active: active,
      rest: rest,
      dietary: dietary,
    );
  }).toList();
});
