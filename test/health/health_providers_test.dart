import 'package:calorie_diff/core/extensions.dart';
import 'package:calorie_diff/health/health_providers.dart';
import 'package:calorie_diff/models/health_data_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:health/health.dart';
import 'package:mocktail/mocktail.dart';

import '../mocks/core/health_providers_mocks.dart';

void main() {
  late MockHealthProvider mockHealthProvider;
  final mockNow = DateTime(2022, 1, 8);

  late ProviderContainer container;

  setUp(() {
    mockHealthProvider = MockHealthProvider();
    container = ProviderContainer(
      overrides: [
        healthFactoryProvider.overrideWith((_) => mockHealthProvider),
      ],
    );

    ExtendedDateTime.customTime = mockNow;
  });

  test('should return a HealthDataModel', () async {
    // arrange
    const types = [
      HealthDataType.ACTIVE_ENERGY_BURNED,
      HealthDataType.BASAL_ENERGY_BURNED,
      HealthDataType.DIETARY_ENERGY_CONSUMED,
    ];
    when(
      () => mockHealthProvider.getHealthDataFromTypes(
        DateTime(mockNow.year, mockNow.month, mockNow.day),
        mockNow,
        types,
      ),
    ).thenAnswer(
      (_) async => [
        HealthDataPoint(
          NumericHealthValue(100),
          HealthDataType.ACTIVE_ENERGY_BURNED,
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
          HealthDataType.BASAL_ENERGY_BURNED,
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
          HealthDataType.DIETARY_ENERGY_CONSUMED,
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
    final result = await container.read(healthDataProvider.future);
    // assert
    expect(result, isA<HealthDataModel>());
    expect(
      result,
      HealthDataModel(
        date: mockNow,
        burned: 225,
        consumed: 95,
        difference: -130,
      ),
    );
  });

  test('should return a list of HealthDataModel', () async {
    // arrange
    const types = [
      HealthDataType.ACTIVE_ENERGY_BURNED,
      HealthDataType.BASAL_ENERGY_BURNED,
      HealthDataType.DIETARY_ENERGY_CONSUMED,
    ];
    when(
      () => mockHealthProvider.getHealthDataFromTypes(
        DateTime(2022, 1, 1),
        mockNow,
        types,
      ),
    ).thenAnswer(
      (_) async => [
        HealthDataPoint(
          NumericHealthValue(100),
          HealthDataType.ACTIVE_ENERGY_BURNED,
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
          HealthDataType.BASAL_ENERGY_BURNED,
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
          HealthDataType.DIETARY_ENERGY_CONSUMED,
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
    final result = await container.read(historicHealthDataProvider(7).future);
    // assert
    expect(result, isA<List<HealthDataModel>>());
    expect(
      result,
      [
        HealthDataModel(
          date: mockNow,
          burned: 225,
          consumed: 95,
          difference: -130,
        )
      ],
    );
  });
}
