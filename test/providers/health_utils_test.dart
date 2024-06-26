import 'package:calorie_diff/shared/utils/health_utils.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:health/health.dart';

void main() {
  group("prepareDataEntry", () {
    test('should return the prepared data', () async {
      //arrange
      final activeEnergyDataPoint = HealthDataPoint(
        value: NumericHealthValue(numericValue: 1),
        type: HealthDataType.ACTIVE_ENERGY_BURNED,
        unit: HealthDataUnit.KILOCALORIE,
        dateFrom: DateTime.now(),
        dateTo: DateTime.now(),
        sourcePlatform: HealthPlatformType.appleHealth,
        sourceDeviceId: "_deviceId",
        sourceId: "_sourceId",
        sourceName: "_sourceName",
      );

      final basalEnergyDataPoint = HealthDataPoint(
        value: NumericHealthValue(numericValue: 1),
        type: HealthDataType.BASAL_ENERGY_BURNED,
        unit: HealthDataUnit.KILOCALORIE,
        dateFrom: DateTime.now(),
        dateTo: DateTime.now(),
        sourcePlatform: HealthPlatformType.appleHealth,
        sourceDeviceId: "_deviceId",
        sourceId: "_sourceId",
        sourceName: "_sourceName",
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
      value: NumericHealthValue(numericValue: 1),
      type: HealthDataType.ACTIVE_ENERGY_BURNED,
      unit: HealthDataUnit.KILOCALORIE,
      dateFrom: DateTime(2022, 1, 1, 1, 1, 1),
      dateTo: DateTime(2022, 1, 1, 1, 1, 1),
      sourcePlatform: HealthPlatformType.appleHealth,
      sourceDeviceId: "_deviceId",
      sourceId: "_sourceId",
      sourceName: "_sourceName",
    );

    final basalEnergyDataPoint = HealthDataPoint(
      value: NumericHealthValue(numericValue: 1),
      type: HealthDataType.BASAL_ENERGY_BURNED,
      unit: HealthDataUnit.KILOCALORIE,
      dateFrom: DateTime(2022, 1, 2, 1, 1, 1),
      dateTo: DateTime(2022, 1, 2, 1, 1, 1),
      sourcePlatform: HealthPlatformType.appleHealth,
      sourceDeviceId: "_deviceId",
      sourceId: "_sourceId",
      sourceName: "_sourceName",
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
      value: NumericHealthValue(numericValue: 1),
      type: HealthDataType.ACTIVE_ENERGY_BURNED,
      unit: HealthDataUnit.KILOCALORIE,
      dateFrom: DateTime(2022, 1, 1, 1, 1, 1),
      dateTo: DateTime(2022, 1, 1, 1, 1, 1),
      sourcePlatform: HealthPlatformType.appleHealth,
      sourceDeviceId: "_deviceId",
      sourceId: "_sourceId",
      sourceName: "_sourceName",
    );

    final basalEnergyDataPoint = HealthDataPoint(
      value: NumericHealthValue(numericValue: 1),
      type: HealthDataType.BASAL_ENERGY_BURNED,
      unit: HealthDataUnit.KILOCALORIE,
      dateFrom: DateTime(2022, 1, 2, 1, 1, 1),
      dateTo: DateTime(2022, 1, 2, 1, 1, 1),
      sourcePlatform: HealthPlatformType.appleHealth,
      sourceDeviceId: "_deviceId",
      sourceId: "_sourceId",
      sourceName: "_sourceName",
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

  test("decimals", () {
    expect(HealthUtils.decimals(1.2345), 1.23);
  });
}
