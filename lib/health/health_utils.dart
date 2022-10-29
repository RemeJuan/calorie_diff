import 'package:health/health.dart';

class HealthUtils {
  static num combineData(List<HealthDataPoint> data) {
    final values = data.map((e) => num.parse(e.value.toString())).toList();

    return values.reduce((a, b) => a + b);
  }

  static List<HealthDataPoint> groupData(
    List<HealthDataPoint> data,
    HealthDataType type,
  ) {
    return data.where((e) => e.type == type).toList();
  }
}
