import 'package:calorie_diff/core/core_providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../mocks/core_mocks.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  late ProviderContainer container;
  late MockSharedPreferences mockSharedPreferences;

  setUp(() {
    mockSharedPreferences = MockSharedPreferences();
    container = ProviderContainer(
      overrides: [
        sharedPreferencesProvider.overrideWithValue(mockSharedPreferences),
      ],
    );
  });

  group("introSeenProvider", () {
    test("should return false when no value set", () {
      when(() => mockSharedPreferences.getBool("intro_seen")).thenReturn(null);

      expect(container.read(introSeenProvider), false);
    });

    test("should return true", () {
      when(() => mockSharedPreferences.getBool("intro_seen")).thenReturn(true);

      expect(container.read(introSeenProvider), true);
    });
  });

  group("setIntroSeenProvider", () {
    test("should return false when no value set", () {
      when(
        () => mockSharedPreferences.setBool("intro_seen", true),
      ).thenAnswer((_) async => true);

      container.read(setIntroSeenProvider);

      verify(() => mockSharedPreferences.setBool("intro_seen", true)).called(1);
    });
  });
}
