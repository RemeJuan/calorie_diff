import 'package:calorie_diff/models/health_macros_model.dart';
import 'package:calorie_diff/shared/utils/health_utils.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:health/health.dart';

import 'health_providers.dart';

final healthMacrosProvider =
    FutureProvider.family<HealthMacrosModel, DateTime>((ref, date) async {
  final health = ref.read(healthFactoryProvider);
  final types = ref.read(healthDataTypesProvider);
  final data = await health.getHealthDataFromTypes(
    startTime: DateTime(date.year, date.month, date.day, 0, 0, 0),
    endTime: DateTime(date.year, date.month, date.day, 23, 59, 59),
    types: types,
  );

  final clean = Health().removeDuplicates(data);
  final carb = HealthUtils.prepareDataEntry(
    clean,
    HealthDataType.DIETARY_CARBS_CONSUMED,
  );
  final fat = HealthUtils.prepareDataEntry(
    clean,
    HealthDataType.DIETARY_FATS_CONSUMED,
  );
  final protein = HealthUtils.prepareDataEntry(
    clean,
    HealthDataType.DIETARY_PROTEIN_CONSUMED,
  );
  return HealthMacrosModel(
    date: date,
    fat: HealthUtils.decimals(fat),
    carb: HealthUtils.decimals(carb),
    protein: HealthUtils.decimals(protein),
  );
});
