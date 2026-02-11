import 'package:calorie_diff/core/core_providers.dart';
import 'package:calorie_diff/core/extensions.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../mocks/core_mocks.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  late ProviderContainer container;
  late MockSharedPreferences mockSharedPreferences;

  setUp(() {
    mockSharedPreferences = MockSharedPreferences();
    container = ProviderContainer();

    ExtendedDateTime.customTime = DateTime(2022, 1, 8);
  });

  test("sharedPreferencesProvider", () {
    // arrange
    // act
    try {
      container.read(sharedPreferencesProvider);
    } catch (e) {
      // assert
      // In Riverpod 3.0, exceptions are wrapped in ProviderException
      expect(e.toString(), contains('UnimplementedError'));
    }
  });

  group("mockSharedPreferences", () {
    setUp(() {
      container = ProviderContainer(
        overrides: [
          sharedPreferencesProvider.overrideWith((_) => mockSharedPreferences),
        ],
      );
    });

    group("introSeenProvider", () {
      test("should return false when no value set", () {
        when(mockSharedPreferences.getBool("intro_seen")).thenReturn(null);

        expect(container.read(introSeenProvider), false);
      });

      test("should return true", () {
        when(mockSharedPreferences.getBool("intro_seen")).thenReturn(true);

        expect(container.read(introSeenProvider), true);
      });
    });

    group("setIntroSeenProvider", () {
      test("should return false when no value set", () {
        when(
          mockSharedPreferences.setBool("intro_seen", true),
        ).thenAnswer((_) async => true);

        container.read(setIntroSeenProvider);

        verify(mockSharedPreferences.setBool("intro_seen", true)).called(1);
      });
    });

    group("lastLaunchProvider", () {
      test("should return null when no value set", () {
        when(mockSharedPreferences.getString("last_launch")).thenReturn(null);

        expect(
          container.read(lastLaunchProvider),
          DateTime(2022, 1, 8),
        );
      });

      test("should return a timestamp", () {
        when(mockSharedPreferences.getInt("last_launch")).thenReturn(123456789);

        final result = container.read(lastLaunchProvider);
        // In Riverpod 3.0 and different timezones, we need to compare the milliseconds
        expect(
          result.millisecondsSinceEpoch,
          123456789,
        );
      });
    });

    test("setLastLaunchProvider", () {
      // arrange
      when(
        mockSharedPreferences.setInt("last_launch", 1641600000000),
      ).thenAnswer((_) async => true);

      // act
      container.read(setLastLaunchProvider);

      // assert
      verify(
        mockSharedPreferences.setInt("last_launch", 1641600000000),
      ).called(1);
    });

    group("didLaunchTodayProvider", () {
      test("should return false when d, m and year do not match", () {
        container = ProviderContainer(
          overrides: [
            lastLaunchProvider.overrideWith((_) => DateTime(2022, 1, 7)),
          ],
        );

        expect(
          container.read(didLaunchTodayProvider),
          false,
        );
      });

      test("should return true", () {
        container = ProviderContainer(
          overrides: [
            lastLaunchProvider.overrideWith((_) => DateTime(2022, 1, 8)),
          ],
        );

        expect(container.read(didLaunchTodayProvider), true);
      });
    });
  });
}
