import 'package:calorie_diff/core/extensions.dart';
import 'package:calorie_diff/models/health_calories_model.dart';
import 'package:calorie_diff/providers/calories_providers.dart';
import 'package:calorie_diff/providers/health_providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:health/health.dart';
import 'package:mockito/mockito.dart';

import '../mocks/core/health_providers_mocks.dart';

void main() {
  late MockHealthProvider mockHealthProvider;
  final mockNow = DateTime(2022, 1, 8);

  late ProviderContainer container;

  const types = [
    HealthDataType.ACTIVE_ENERGY_BURNED,
    HealthDataType.BASAL_ENERGY_BURNED,
    HealthDataType.DIETARY_ENERGY_CONSUMED,
    HealthDataType.DIETARY_CARBS_CONSUMED,
    HealthDataType.DIETARY_FATS_CONSUMED,
    HealthDataType.DIETARY_PROTEIN_CONSUMED,
  ];

  setUp(() {
    mockHealthProvider = MockHealthProvider();
    container = ProviderContainer(
      overrides: [
        healthFactoryProvider.overrideWith((_) => mockHealthProvider),
      ],
    );

    ExtendedDateTime.customTime = mockNow;
  });

  test('should return a HealthCaloriesModel', () async {
    // arrange
    when(
      mockHealthProvider.getHealthDataFromTypes(
        startTime: DateTime(mockNow.year, mockNow.month, mockNow.day),
        endTime: mockNow,
        types: types,
      ),
    ).thenAnswer(
      (_) async => [
        HealthDataPoint(
          value: NumericHealthValue(numericValue: 100),
          type: HealthDataType.ACTIVE_ENERGY_BURNED,
          unit: HealthDataUnit.KILOCALORIE,
          dateFrom: DateTime(mockNow.year, mockNow.month, mockNow.day),
          dateTo: mockNow,
          sourcePlatform: HealthPlatformType.appleHealth,
          sourceDeviceId: '',
          sourceId: '',
          sourceName: '',
        ),
        HealthDataPoint(
          value: NumericHealthValue(numericValue: 125),
          type: HealthDataType.BASAL_ENERGY_BURNED,
          unit: HealthDataUnit.KILOCALORIE,
          dateFrom: DateTime(mockNow.year, mockNow.month, mockNow.day),
          dateTo: mockNow,
          sourcePlatform: HealthPlatformType.appleHealth,
          sourceDeviceId: '',
          sourceId: '',
          sourceName: '',
        ),
        HealthDataPoint(
          value: NumericHealthValue(numericValue: 95),
          type: HealthDataType.DIETARY_ENERGY_CONSUMED,
          unit: HealthDataUnit.KILOCALORIE,
          dateFrom: DateTime(mockNow.year, mockNow.month, mockNow.day),
          dateTo: mockNow,
          sourcePlatform: HealthPlatformType.appleHealth,
          sourceDeviceId: '',
          sourceId: '',
          sourceName: '',
        ),
      ],
    );
    // act
    final result = await container.read(healthCaloriesProvider.future);
    // assert
    expect(result, isA<HealthCaloriesModel>());
    expect(
      result,
      HealthCaloriesModel(
        date: mockNow,
        burned: 225,
        consumed: 95,
        difference: -130,
      ),
    );
  });

  test('should return a list of HealthCaloriesModel', () async {
    // arrange
    when(
      mockHealthProvider.getHealthDataFromTypes(
        startTime: DateTime(2022, 1, 1),
        endTime: mockNow,
        types: types,
      ),
    ).thenAnswer(
      (_) async => [
        HealthDataPoint(
          value: NumericHealthValue(numericValue: 100),
          type: HealthDataType.ACTIVE_ENERGY_BURNED,
          unit: HealthDataUnit.KILOCALORIE,
          dateFrom: DateTime(mockNow.year, mockNow.month, mockNow.day),
          dateTo: mockNow,
          sourcePlatform: HealthPlatformType.appleHealth,
          sourceDeviceId: '',
          sourceId: '',
          sourceName: '',
        ),
        HealthDataPoint(
          value: NumericHealthValue(numericValue: 125),
          type: HealthDataType.BASAL_ENERGY_BURNED,
          unit: HealthDataUnit.KILOCALORIE,
          dateFrom: DateTime(mockNow.year, mockNow.month, mockNow.day),
          dateTo: mockNow,
          sourcePlatform: HealthPlatformType.appleHealth,
          sourceDeviceId: '',
          sourceId: '',
          sourceName: '',
        ),
        HealthDataPoint(
          value: NumericHealthValue(numericValue: 95),
          type: HealthDataType.DIETARY_ENERGY_CONSUMED,
          unit: HealthDataUnit.KILOCALORIE,
          dateFrom: DateTime(mockNow.year, mockNow.month, mockNow.day),
          dateTo: mockNow,
          sourcePlatform: HealthPlatformType.appleHealth,
          sourceDeviceId: '',
          sourceId: '',
          sourceName: '',
        ),
      ],
    );
    // act
    final result = await container.read(historicHealthDataProvider(7).future);
    // assert
    expect(result, isA<List<HealthCaloriesModel>>());
    expect(
      result,
      [
        HealthCaloriesModel(
          date: mockNow,
          burned: 225,
          consumed: 95,
          difference: -130,
        )
      ],
    );
  });
}
