import 'package:calorie_diff/models/health_calories_model.dart';
import 'package:calorie_diff/models/settings_model.dart';
import 'package:calorie_diff/providers/calories_providers.dart';
import 'package:calorie_diff/providers/settings_providers.dart';
import 'package:calorie_diff/widgets/current_calories/current_calories.dart';
import 'package:calorie_diff/widgets/shared/data_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../test_helpers.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('Loading', (tester) async {
    await tester.pumpApp(
      const CurrentCalories(),
      [
        settingsProvider.overrideWithValue(SettingsModel.initial()),
      ],
    );

    expect(find.byKey(const Key('loading')), findsOneWidget);
  });

  testWidgets('Success', (tester) async {
    await tester.pumpApp(
      const CurrentCalories(),
      [
        settingsProvider.overrideWithValue(SettingsModel.initial()),
        healthCaloriesProvider.overrideWith(
          (_) => HealthCaloriesModel(
            date: DateTime.now(),
            burned: 40,
            consumed: 20,
            difference: 20,
          ),
        ),
      ],
    );

    await tester.pumpAndSettle();
    final cardFinder = find.byType(DataCard);
    final burnedCardFinder = find.widgetWithText(DataCard, 'Out');

    expect(cardFinder, findsNWidgets(3));
    expect(burnedCardFinder, findsOneWidget);
  });

  testWidgets('error', (tester) async {
    await tester.pumpApp(
      const CurrentCalories(),
      [
        settingsProvider.overrideWithValue(SettingsModel.initial()),
        healthCaloriesProvider.overrideWith((_) => throw Exception('error')),
      ],
    );

    expect(find.byKey(const Key("error")), findsOneWidget);
  });
}
