import 'package:calorie_diff/health/health_utils.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:health/health.dart';

void main() {
  group("prepareDataEntry", () {
    test('should return the prepared data', () async {
      //arrange
      final activeEnergyDataPoint = HealthDataPoint(
        NumericHealthValue(1),
        HealthDataType.ACTIVE_ENERGY_BURNED,
        HealthDataUnit.KILOCALORIE,
        DateTime.now(),
        DateTime.now(),
        PlatformType.IOS,
        "_deviceId",
        "_sourceId",
        "_sourceName",
      );

      final basalEnergyDataPoint = HealthDataPoint(
        NumericHealthValue(1),
        HealthDataType.BASAL_ENERGY_BURNED,
        HealthDataUnit.KILOCALORIE,
        DateTime.now(),
        DateTime.now(),
        PlatformType.IOS,
        "_deviceId",
        "_sourceId",
        "_sourceName",
      );
      final data = [
        activeEnergyDataPoint,
        activeEnergyDataPoint,
        basalEnergyDataPoint,
        basalEnergyDataPoint,
      ];

      const type = HealthDataType.ACTIVE_ENERGY_BURNED;
      //act
      final result = HealthUtils.prepareDataEntry(data, type);
      //assert
      expect(result, 2);
    });
  });

  test('should return unique list of data from data', () async {
    //arrange
    final activeEnergyDataPoint = HealthDataPoint(
      NumericHealthValue(1),
      HealthDataType.ACTIVE_ENERGY_BURNED,
      HealthDataUnit.KILOCALORIE,
      DateTime(2022, 1, 1, 1, 1, 1),
      DateTime(2022, 1, 1, 1, 1, 1),
      PlatformType.IOS,
      "_deviceId",
      "_sourceId",
      "_sourceName",
    );

    final basalEnergyDataPoint = HealthDataPoint(
      NumericHealthValue(1),
      HealthDataType.BASAL_ENERGY_BURNED,
      HealthDataUnit.KILOCALORIE,
      DateTime(2022, 1, 2, 1, 1, 1),
      DateTime(2022, 1, 2, 1, 1, 1),
      PlatformType.IOS,
      "_deviceId",
      "_sourceId",
      "_sourceName",
    );
    final data = [
      activeEnergyDataPoint,
      activeEnergyDataPoint,
      basalEnergyDataPoint,
      basalEnergyDataPoint,
    ];
    //act
    final result = HealthUtils.getDates(data);
    //assert
    expect(result, [DateTime(2022, 1, 1), DateTime(2022, 1, 2)]);
  });

  test('should return data for specified date only', () async {
    //arrange
    final activeEnergyDataPoint = HealthDataPoint(
      NumericHealthValue(1),
      HealthDataType.ACTIVE_ENERGY_BURNED,
      HealthDataUnit.KILOCALORIE,
      DateTime(2022, 1, 1, 1, 1, 1),
      DateTime(2022, 1, 1, 1, 1, 1),
      PlatformType.IOS,
      "_deviceId",
      "_sourceId",
      "_sourceName",
    );

    final basalEnergyDataPoint = HealthDataPoint(
      NumericHealthValue(1),
      HealthDataType.BASAL_ENERGY_BURNED,
      HealthDataUnit.KILOCALORIE,
      DateTime(2022, 1, 2, 1, 1, 1),
      DateTime(2022, 1, 2, 1, 1, 1),
      PlatformType.IOS,
      "_deviceId",
      "_sourceId",
      "_sourceName",
    );
    final data = [
      activeEnergyDataPoint,
      activeEnergyDataPoint,
      basalEnergyDataPoint,
      basalEnergyDataPoint,
    ];
    //act
    final result = HealthUtils.filterByDate(data, DateTime(2022, 1, 1));
    //assert
    expect(result, [activeEnergyDataPoint, activeEnergyDataPoint]);
  });
}
