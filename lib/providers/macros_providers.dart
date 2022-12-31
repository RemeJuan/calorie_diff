import 'package:calorie_diff/core/extensions.dart';
import 'package:calorie_diff/models/health_macros_model.dart';
import 'package:calorie_diff/shared/utils/health_utils.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:health/health.dart';

import 'health_providers.dart';

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
    date: now,
    fat: HealthUtils.decimals(fat),
    carb: HealthUtils.decimals(carb),
    protein: HealthUtils.decimals(protein),
  );
});
