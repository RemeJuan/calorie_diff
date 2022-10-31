import 'package:calorie_diff/health/health_providers.dart';
import 'package:calorie_diff/landing_screen.dart';
import 'package:calorie_diff/models/health_data_model.dart';
import 'package:calorie_diff/widgets/current_calories/current_calories.dart';
import 'package:calorie_diff/widgets/historic_calories/historic_calories.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';

import 'test_helpers.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('loading', (tester) async {
    await tester.pumpApp(
      const LandingScreen(),
      [],
    );

    expect(find.byKey(const Key('loading')), findsOneWidget);
  });

  testWidgets('error', (tester) async {
    await tester.pumpApp(
      const LandingScreen(),
      [
        healthRequestAccessProvider.overrideWithProvider(
          FutureProvider((_) async => throw Exception('error')),
        ),
      ],
    );

    await tester.pumpAndSettle();

    expect(find.text("Exception: error"), findsOneWidget);
  });

  group("success", () {
    testWidgets('does not have permission', (tester) async {
      final dataModel = HealthDataModel(
        active: 100,
        rest: 100,
        dietary: 100,
        date: DateTime.now(),
      );

      await tester.pumpApp(
        const LandingScreen(),
        [
          healthRequestAccessProvider.overrideWithProvider(
            FutureProvider((_) async => false),
          ),
          healthDataProvider.overrideWithProvider(
            FutureProvider((_) async => dataModel),
          ),
          historicHealthDataProvider.overrideWithProvider(
            FutureProvider(
              (_) async => [dataModel],
            ),
          ),
        ],
      );

      await tester.pumpAndSettle();

      expect(find.byType(CurrentCalories), findsOneWidget);
      expect(find.byType(HistoricCalories), findsOneWidget);
    });
  });
}
