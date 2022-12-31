import 'package:calorie_diff/core/extensions.dart';
import 'package:calorie_diff/models/health_macros_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:health/health.dart';

import 'health_providers.dart';
import 'health_utils.dart';

final healthMacrosProvider = FutureProvider<HealthMacrosModel>((ref) async {
  final now = ExtendedDateTime.current;
  final health = ref.read(healthFactoryProvider);
  final types = ref.read(healthDataTypesProvider);

  final data = await health.getHealthDataFromTypes(
    DateTime(now.year, now.month, now.day),
    now,
    types,
  );

  final clean = HealthFactory.removeDuplicates(data);
  final carb = HealthUtils.prepareDataEntry(
    clean,
    HealthDataType.ACTIVE_ENERGY_BURNED,
  );
  final fat = HealthUtils.prepareDataEntry(
    clean,
    HealthDataType.BASAL_ENERGY_BURNED,
  );
  final protein = HealthUtils.prepareDataEntry(
    clean,
    HealthDataType.DIETARY_ENERGY_CONSUMED,
  );
  return HealthMacrosModel(
    date: now,
    fat: HealthUtils.decimals(fat),
    carb: HealthUtils.decimals(carb),
    protein: HealthUtils.decimals(protein),
  );
});
