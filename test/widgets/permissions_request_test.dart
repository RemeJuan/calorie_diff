import 'package:calorie_diff/health/health_providers.dart';
import 'package:calorie_diff/widgets/permissions_request.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:health/health.dart';
import 'package:mocktail/mocktail.dart';

import '../mocks/core/core_providers_mocks.dart';
import '../test_helpers.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  late MockHealthProvider mockHealthProvider;
  late List<Override> overrides;

  setUp(() {
    mockHealthProvider = MockHealthProvider();
    overrides = [
      healthFactoryProvider.overrideWithValue(mockHealthProvider),
      healthDataTypesProvider.overrideWithValue(
        [HealthDataType.ACTIVE_ENERGY_BURNED],
      ),
    ];
  });

  group('PermissionRequest', () {
    testWidgets('is loading', (tester) async {
      when(() => mockHealthProvider.requestAuthorization([
            HealthDataType.ACTIVE_ENERGY_BURNED,
          ])).thenAnswer(
        (_) async => true,
      );

      await tester.pumpApp(
        const PermissionRequest(),
        overrides,
      );

      await tester.pump();
      expect(find.text("Grant Access"), findsNothing);
      expect(find.byKey(const Key("loading")), findsOneWidget);
    });

    testWidgets('should request authorization', (tester) async {
      when(() => mockHealthProvider.requestAuthorization([
            HealthDataType.ACTIVE_ENERGY_BURNED,
          ])).thenAnswer(
        (_) async => true,
      );

      await tester.pumpApp(
        const PermissionRequest(),
        [
          ...overrides,
          hasHealthDataAccessProvider.overrideWithProvider(
            FutureProvider((_) async => false),
          ),
        ],
      );

      await tester.pumpAndSettle();
      await tester.tap(find.text("Grant Access"));
      await tester.pump();

      verify(() => mockHealthProvider.requestAuthorization([
            HealthDataType.ACTIVE_ENERGY_BURNED,
          ])).called(1);
    });

    testWidgets('is error', (tester) async {
      when(() => mockHealthProvider.requestAuthorization([
            HealthDataType.ACTIVE_ENERGY_BURNED,
          ])).thenAnswer(
        (_) async => true,
      );

      await tester.pumpApp(
        const PermissionRequest(),
        [
          ...overrides,
          hasHealthDataAccessProvider.overrideWithProvider(
            FutureProvider((_) async => throw Exception()),
          ),
        ],
      );

      await tester.pump();
      expect(find.text("Grant Access"), findsNothing);
      expect(find.byKey(const Key("error")), findsOneWidget);
    });
  });
}
