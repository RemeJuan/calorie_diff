import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:health/health.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'health_data_model.dart';
import 'health_utils.dart';

final sharedPreferencesProvider = Provider<SharedPreferences>((ref) {
  throw UnimplementedError();
});

final healthFactoryProvider = Provider<HealthFactory>((ref) => HealthFactory());
final healthRequestAccessProvider = FutureProvider<bool?>((ref) {
  final health = ref.read(healthFactoryProvider);
  final types = ref.read(healthDataTypesProvider);

  return health.requestAuthorization(types);
});
final hasHealthDataAccessProvider = FutureProvider<bool?>((ref) async {
  final types = ref.watch(healthDataTypesProvider);

  return HealthFactory.hasPermissions(types);
});

final healthDataTypesProvider = Provider<List<HealthDataType>>((ref) {
  return [
    HealthDataType.ACTIVE_ENERGY_BURNED,
    HealthDataType.BASAL_ENERGY_BURNED,
    HealthDataType.DIETARY_ENERGY_CONSUMED,
  ];
});

final healthDataProvider = FutureProvider<HealthDataModel>((ref) async {
  final health = ref.read(healthFactoryProvider);
  final types = ref.read(healthDataTypesProvider);

  final data = await health.getHealthDataFromTypes(
    DateTime.now().subtract(const Duration(days: 1)),
    DateTime.now(),
    types,
  );
  final clean = HealthFactory.removeDuplicates(data);

  return HealthDataModel(
    active: HealthUtils.combineData(HealthUtils.groupData(
      clean,
      HealthDataType.ACTIVE_ENERGY_BURNED,
    )),
    rest: HealthUtils.combineData(HealthUtils.groupData(
      clean,
      HealthDataType.BASAL_ENERGY_BURNED,
    )),
    dietary: HealthUtils.combineData(HealthUtils.groupData(
      clean,
      HealthDataType.DIETARY_ENERGY_CONSUMED,
    )),
  );
});
