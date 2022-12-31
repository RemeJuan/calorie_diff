import 'package:calorie_diff/core/core_providers.dart';
import 'package:calorie_diff/health/calories_providers.dart';
import 'package:calorie_diff/health/health_providers.dart';
import 'package:calorie_diff/landing_screen.dart';
import 'package:calorie_diff/models/health_calories_model.dart';
import 'package:calorie_diff/widgets/current_calories/current_calories.dart';
import 'package:calorie_diff/widgets/historic_calories/historic_calories.dart';
import 'package:calorie_diff/widgets/range_picker/range_picker.dart';
import 'package:flutter/material.dart';
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
        healthRequestAccessProvider.overrideWith(
          (_) async => throw Exception('error'),
        ),
      ],
    );

    await tester.pumpAndSettle();

    expect(find.text("Exception: error"), findsOneWidget);
  });

  testWidgets('renders current page widgets', (tester) async {
    final dataModel = HealthCaloriesModel(
      burned: 200,
      consumed: 100,
      difference: 100,
      date: DateTime.now(),
    );

    await tester.pumpApp(
      const LandingScreen(),
      [
        healthRequestAccessProvider.overrideWith((_) => false),
        healthCaloriesProvider.overrideWith((_) async => dataModel),
        historicHealthDataProvider.overrideWith((_, __) async => [dataModel]),
      ],
    );

    await tester.pumpAndSettle();

    expect(find.byType(CurrentCalories), findsOneWidget);
    expect(find.byType(HistoricCalories), findsOneWidget);
  });

  testWidgets('renders historic page widgets', (tester) async {
    final dataModel = HealthCaloriesModel(
      burned: 200,
      consumed: 100,
      difference: 100,
      date: DateTime.now(),
    );

    await tester.pumpApp(
      const LandingScreen(),
      [
        healthRequestAccessProvider.overrideWith((_) => false),
        healthCaloriesProvider.overrideWith((_) async => dataModel),
        historicHealthDataProvider.overrideWith((_, __) async => [dataModel]),
        pageViewControllerProvider.overrideWith(
          (_) => PageController(initialPage: 1),
        ),
      ],
    );

    await tester.pumpAndSettle();

    expect(find.byType(RangePicker), findsOneWidget);
    expect(find.byType(HistoricCalories), findsOneWidget);
  });
}
