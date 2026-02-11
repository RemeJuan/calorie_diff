import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:health/health.dart';

// Notifier for selected days
class SelectedDaysNotifier extends Notifier<int> {
  @override
  int build() => 7;

  void setDays(int days) {
    state = days;
  }
}

final selectedDaysProvider =
    NotifierProvider<SelectedDaysNotifier, int>(SelectedDaysNotifier.new);

final healthFactoryProvider = Provider<Health>((ref) => Health());
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
    HealthDataType.DIETARY_CARBS_CONSUMED,
    HealthDataType.DIETARY_FATS_CONSUMED,
    HealthDataType.DIETARY_PROTEIN_CONSUMED,
  ];
});
