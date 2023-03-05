import 'package:calorie_diff/core/extensions.dart';
import 'package:calorie_diff/models/health_calories_model.dart';
import 'package:calorie_diff/models/health_macros_model.dart';
import 'package:calorie_diff/models/settings_model.dart';
import 'package:calorie_diff/providers/calories_providers.dart';
import 'package:calorie_diff/providers/macros_providers.dart';
import 'package:calorie_diff/providers/settings_providers.dart';
import 'package:calorie_diff/widgets/historic_calories/header_row.dart';
import 'package:calorie_diff/widgets/historic_calories/historic_calories.dart';
import 'package:calorie_diff/widgets/historic_calories/historic_row.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../test_helpers.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  group("HistoricCalories", () {
    testWidgets('loading - empty', (tester) async {
      await tester.pumpApp(
        const HistoricCalories(days: 7, showLoader: false),
        [],
      );

      expect(find.byKey(const Key("loading")), findsOneWidget);
      expect(find.text("Calculating data..."), findsNothing);
    });

    testWidgets('loading - text', (tester) async {
      await tester.pumpApp(
        const HistoricCalories(days: 7, showLoader: true),
        [],
      );

      expect(find.byKey(const Key("loading")), findsOneWidget);
      expect(find.text("Calculating data..."), findsOneWidget);
    });

    testWidgets('success', (tester) async {
      ExtendedDateTime.customTime = DateTime(2022, 9, 10);

      await tester.pumpApp(
        const HistoricCalories(days: 7, showLoader: false),
        [
          historicHealthDataProvider.overrideWith(
            (_, __) async => [
              HealthCaloriesModel(
                date: DateTime(2021, 10, 10),
                burned: 200,
                consumed: 100,
                difference: 100,
              ),
            ],
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
            (_, __) => HealthMacrosModel(
              date: ExtendedDateTime.current,
              carb: 20,
              fat: 20,
              protein: 20,
            ),
          ),
        ],
      );
      await tester.pumpAndSettle();

      expect(find.text("Past 7 Days"), findsOneWidget);
      expect(find.byType(HeaderRow), findsOneWidget);
      expect(find.byType(HistoricRow), findsOneWidget);

      expect(find.text("10 Oct 21"), findsOneWidget);
      expect(find.text("200.0"), findsOneWidget);
      expect(find.text("100.0"), findsNWidgets(2));
    });
  });
}
