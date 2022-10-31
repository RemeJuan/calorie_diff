import 'package:health/health.dart';

class HealthUtils {
  static num prepareDataEntry(
    List<HealthDataPoint> data,
    HealthDataType type,
  ) {
    final grouped = _groupData(data, type);
    return _combineData(grouped);
  }

  static List<HealthDataPoint> filterByDate(
    List<HealthDataPoint> data,
    DateTime date,
  ) {
    return data
        .where(
          (e) =>
              date ==
              DateTime(e.dateFrom.year, e.dateFrom.month, e.dateFrom.day),
        )
        .toList();
  }

  static Set<DateTime> getDates(List<HealthDataPoint> data) {
    return data.map((e) {
      final fromDate = e.dateFrom;
      return DateTime(fromDate.year, fromDate.month, fromDate.day);
    }).toSet();
  }

  static num _combineData(List<HealthDataPoint> data) {
    final values = data.map((e) => num.parse(e.value.toString())).toList();

    if (values.isEmpty) {
      return 0;
    }

    return values.reduce((a, b) => decimals(a) + decimals(b));
  }

  static num decimals(num value) {
    return num.parse(value.toStringAsFixed(2));
  }

  static List<HealthDataPoint> _groupData(
    List<HealthDataPoint> data,
    HealthDataType type,
  ) {
    return data.where((e) => e.type == type).toList();
  }
}
