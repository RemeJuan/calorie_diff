import 'package:calorie_diff/core/extensions.dart';
import 'package:calorie_diff/models/health_macros_model.dart';
import 'package:calorie_diff/providers/health_providers.dart';
import 'package:calorie_diff/providers/macros_providers.dart';
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

  test('should return a HealthMacrosModel', () async {
    // arrange
    when(
      mockHealthProvider.getHealthDataFromTypes(
        DateTime(mockNow.year, mockNow.month, mockNow.day),
        mockNow,
        types,
      ),
    ).thenAnswer(
      (_) async => [
        HealthDataPoint(
          NumericHealthValue(100),
          HealthDataType.DIETARY_CARBS_CONSUMED,
          HealthDataUnit.KILOCALORIE,
          DateTime(mockNow.year, mockNow.month, mockNow.day),
          mockNow,
          PlatformType.IOS,
          '',
          '',
          '',
        ),
        HealthDataPoint(
          NumericHealthValue(125),
          HealthDataType.DIETARY_FATS_CONSUMED,
          HealthDataUnit.KILOCALORIE,
          DateTime(mockNow.year, mockNow.month, mockNow.day),
          mockNow,
          PlatformType.IOS,
          '',
          '',
          '',
        ),
        HealthDataPoint(
          NumericHealthValue(95),
          HealthDataType.DIETARY_PROTEIN_CONSUMED,
          HealthDataUnit.KILOCALORIE,
          DateTime(mockNow.year, mockNow.month, mockNow.day),
          mockNow,
          PlatformType.IOS,
          '',
          '',
          '',
        ),
      ],
    );
    // act
    final result = await container.read(healthMacrosProvider.future);
    // assert
    expect(result, isA<HealthMacrosModel>());
    expect(
      result,
      HealthMacrosModel(
        date: mockNow,
        carb: 100,
        fat: 125,
        protein: 95,
      ),
    );
  });
}
