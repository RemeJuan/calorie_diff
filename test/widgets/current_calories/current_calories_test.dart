import 'package:calorie_diff/health/health_data_model.dart';
import 'package:calorie_diff/health/health_providers.dart';
import 'package:calorie_diff/widgets/current_calories/current_calories.dart';
import 'package:calorie_diff/widgets/current_calories/data_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../test_helpers.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('Loading', (tester) async {
    await tester.pumpApp(
      const CurrentCalories(),
      [],
    );

    expect(find.byType(CircularProgressIndicator), findsOneWidget);
  });

  testWidgets('Loading/Success', (tester) async {
    await tester.pumpApp(
      const CurrentCalories(),
      [
        healthDataProvider.overrideWithProvider(
          FutureProvider(
            (_) => const HealthDataModel(active: 20, rest: 20, dietary: 20),
          ),
        ),
      ],
    );

    await tester.pumpAndSettle();
    final cardFinder = find.byType(DataCard);
    final burnedCardFinder = find.widgetWithText(DataCard, 'Burned');

    expect(cardFinder, findsNWidgets(3));
    expect(burnedCardFinder, findsOneWidget);
  });

  testWidgets('error', (tester) async {
    await tester.pumpApp(
      const CurrentCalories(),
      [
        healthDataProvider.overrideWithProvider(
          FutureProvider((_) => throw Exception('error')),
        ),
      ],
    );

    expect(find.byKey(const Key("error")), findsOneWidget);
  });
}
