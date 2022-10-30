import 'package:calorie_diff/health/health_providers.dart';
import 'package:calorie_diff/widgets/permissions_request.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:health/health.dart';
import 'package:mocktail/mocktail.dart';

import '../mocks/core/health_providers_mocks.dart';
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
}
