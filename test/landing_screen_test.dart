import 'package:calorie_diff/core/core_providers.dart';
import 'package:calorie_diff/core/extensions.dart';
import 'package:calorie_diff/landing_screen.dart';
import 'package:calorie_diff/models/health_calories_model.dart';
import 'package:calorie_diff/models/health_macros_model.dart';
import 'package:calorie_diff/models/settings_model.dart';
import 'package:calorie_diff/providers/calories_providers.dart';
import 'package:calorie_diff/providers/health_providers.dart';
import 'package:calorie_diff/providers/macros_providers.dart';
import 'package:calorie_diff/providers/settings_providers.dart';
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
        healthRequestAccessProvider.overrideWith((_) async {
          throw Exception('error');
        }),
      ],
    );

    // Wait for async operations and error to be rendered
    await tester.pump();
    await tester.pump();

    // In Riverpod 3.0, error messages may be formatted differently
    expect(find.textContaining("error"), findsOneWidget);
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
        historicHealthDataProvider.overrideWith((_, _) async => [dataModel]),
        settingsProvider.overrideWith((_) => SettingsModel.initial()),
      ],
    );

    await tester.pumpAndSettle();

    expect(find.byType(CurrentCalories), findsOneWidget);
    expect(find.byType(HistoricCalories), findsOneWidget);
  });

  testWidgets('renders historic page widgets', (tester) async {
    ExtendedDateTime.customTime = DateTime(2022, 9, 10);

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
        historicHealthDataProvider.overrideWith((_, _) async => [dataModel]),
        pageViewControllerProvider.overrideWith(
          (_) => PageController(initialPage: 1),
        ),
        settingsProvider.overrideWith(
          (ref) => SettingsModel(
            macros: HealthMacrosModel(
              carb: 2000,
              fat: 50,
              protein: 100,
              date: ExtendedDateTime.current,
            ),
            macrosEnabled: true,
          ),
        ),
        healthMacrosProvider.overrideWith(
          (_, _) => HealthMacrosModel(
            date: ExtendedDateTime.current,
            carb: 20,
            fat: 20,
            protein: 20,
          ),
        ),
      ],
    );

    await tester.pumpAndSettle();

    expect(find.byType(RangePicker), findsOneWidget);
    expect(find.byType(HistoricCalories), findsOneWidget);
  });
}
