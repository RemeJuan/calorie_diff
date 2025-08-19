import 'package:calorie_diff/core/extensions.dart';
import 'package:calorie_diff/models/health_macros_model.dart';
import 'package:calorie_diff/models/settings_model.dart';
import 'package:calorie_diff/providers/macros_providers.dart';
import 'package:calorie_diff/providers/settings_providers.dart';
import 'package:calorie_diff/widgets/historic_calories/historic_macros.dart';
import 'package:calorie_diff/widgets/historic_calories/historic_row.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../test_helpers.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    ExtendedDateTime.customTime = DateTime(2022, 9, 10);
  });

  testWidgets('should render HistoricRow', (tester) async {
    await tester.pumpApp(
      HistoricRow(
        entries: const ['10/09/2022', '200', '200', '200'],
        date: ExtendedDateTime.current,
      ),
      [
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

    expect(find.text("10/09/2022"), findsOneWidget);
    expect(find.text("200"), findsNWidgets(3));
    expect(find.byType(HistoricMacros), findsNothing);
  });

  testWidgets('should render HistoricMacros', (tester) async {
    await tester.pumpApp(
      HistoricRow(
        entries: const ['10/09/2022', '200', '200', '200'],
        date: ExtendedDateTime.current,
      ),
      [
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

    await tester.tap(find.byType(ExpansionTile));
    await tester.pumpAndSettle();

    expect(find.text("10/09/2022"), findsOneWidget);
    expect(find.text("200"), findsNWidgets(3));
    expect(find.byType(HistoricMacros), findsOneWidget);
  });
}
