import 'dart:convert';

import 'package:calorie_diff/core/core_providers.dart';
import 'package:calorie_diff/core/extensions.dart';
import 'package:calorie_diff/models/health_macros_model.dart';
import 'package:calorie_diff/models/settings_model.dart';
import 'package:calorie_diff/providers/settings_providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../mocks/core_mocks.mocks.dart';

void main() {
  late MockSharedPreferences mockSharedPreferences;

  late ProviderContainer container;

  setUp(() {
    container = ProviderContainer(
      overrides: [
        sharedPreferencesProvider.overrideWith((_) => mockSharedPreferences),
      ],
    );
    mockSharedPreferences = MockSharedPreferences();

    ExtendedDateTime.customTime = DateTime(2022, 1, 8);
  });

  group('SettingsProvider', () {
    test('should return an empty SettingsModel', () async {
      // arrange
      when(mockSharedPreferences.getString('settings')).thenReturn(null);

      // act
      final result = container.read(settingsProvider);

      // assert
      expect(result, isA<SettingsModel>());
      expect(result, SettingsModel.initial());
    });

    test('should return a populated SettingsModel', () async {
      // arrange
      final model = SettingsModel(
        macrosEnabled: false,
        macros: HealthMacrosModel(
          carb: 0,
          fat: 0,
          protein: 0,
          date: ExtendedDateTime.current,
        ),
      );
      when(mockSharedPreferences.getString('settings')).thenReturn(
        jsonEncode(model.toJson()),
      );

      // act
      final result = container.read(settingsProvider);

      // assert
      expect(result, isA<SettingsModel>());
      expect(result, model);
    });
  });

  group('UpdateSettingsProvider', () {
    test('should return a SettingsModel', () async {
      // arrange
      final model = SettingsModel(
        macrosEnabled: false,
        macros: HealthMacrosModel(
          carb: 0,
          fat: 0,
          protein: 0,
          date: ExtendedDateTime.current,
        ),
      );

      // act
      final result = container.read(updateSettingsProvider(model));

      // assert
      verify(
        mockSharedPreferences.setString('settings', jsonEncode(model.toJson())),
      );
      expect(result, isA<SettingsModel>());
      expect(result, model);
    });
  });
}
