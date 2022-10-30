import 'package:calorie_diff/health/health_utils.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:health/health.dart';

void main() {
  group("combineData", () {
    test("has data", () async {
      // arrange
      final healthDataPoint = HealthDataPoint(
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

      final data = [
        healthDataPoint,
        healthDataPoint,
      ];

      // act
      final result = HealthUtils.combineData(data);

      // assert
      expect(result, 2);
    });

    test("not has data", () {
      final data = <HealthDataPoint>[];

      final result = HealthUtils.combineData(data);
      expect(result, 0);
    });
  });

  group("groupData", () {
    test('should ', () async {
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
      final result = HealthUtils.groupData(data, type);
      //assert
      expect(result.length, 2);
      expect(result.first.type, type);
      expect(result.last.type, type);
    });
  });
}
