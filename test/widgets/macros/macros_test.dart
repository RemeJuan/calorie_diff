import 'package:calorie_diff/core/extensions.dart';
import 'package:calorie_diff/models/health_macros_model.dart';
import 'package:calorie_diff/models/settings_model.dart';
import 'package:calorie_diff/providers/macros_providers.dart';
import 'package:calorie_diff/providers/settings_providers.dart';
import 'package:calorie_diff/widgets/macros/macros.dart';
import 'package:calorie_diff/widgets/shared/progress_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../test_helpers.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('Loading', (tester) async {
    await tester.pumpApp(
      const CurrentMacros(),
      [
        settingsProvider.overrideWith((ref) => SettingsModel.initial()),
      ],
    );

    expect(find.byKey(const Key('loading')), findsOneWidget);
  });

  testWidgets('Success', (tester) async {
    await tester.pumpApp(
      const CurrentMacros(),
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

    await tester.pumpAndSettle();
    final cardFinder = find.byType(ProgressCard);
    final carbsCardFinder = find.widgetWithText(ProgressCard, 'Carbs');
    final fatsCardFinder = find.widgetWithText(ProgressCard, 'Fats');
    final proteinCardFinder = find.widgetWithText(ProgressCard, 'Protein');

    expect(cardFinder, findsNWidgets(3));
    expect(carbsCardFinder, findsOneWidget);
    expect(fatsCardFinder, findsOneWidget);
    expect(proteinCardFinder, findsOneWidget);
  });

  testWidgets('error', (tester) async {
    await tester.pumpApp(
      const CurrentMacros(),
      [
        settingsProvider.overrideWith((ref) => SettingsModel.initial()),
        healthMacrosProvider.overrideWith((_, _) => throw Exception('error')),
      ],
    );

    expect(find.byKey(const Key("error")), findsOneWidget);
  });
}
