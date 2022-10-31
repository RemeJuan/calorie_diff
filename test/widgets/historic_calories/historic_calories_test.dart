import 'package:calorie_diff/health/health_providers.dart';
import 'package:calorie_diff/models/health_data_model.dart';
import 'package:calorie_diff/widgets/historic_calories/header_row.dart';
import 'package:calorie_diff/widgets/historic_calories/historic_calories.dart';
import 'package:calorie_diff/widgets/historic_calories/historic_row.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../test_helpers.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  group("HistoricCalories", () {
    testWidgets('loading', (tester) async {
      await tester.pumpApp(
        const HistoricCalories(),
        [],
      );

      expect(find.byKey(const Key("loading")), findsOneWidget);
    });

    testWidgets('success', (tester) async {
      await tester.pumpApp(
        const HistoricCalories(),
        [
          historicHealthDataProvider.overrideWithProvider(
            FutureProvider(
              (_) async => [
                HealthDataModel(
                  date: DateTime(2021, 10, 10),
                  active: 100,
                  rest: 100,
                  dietary: 100,
                ),
              ],
            ),
          ),
        ],
      );
      await tester.pumpAndSettle();

      expect(find.text("Past 7 Days"), findsOneWidget);
      expect(find.byType(HeaderRow), findsOneWidget);
      expect(find.byType(HistoricRow), findsOneWidget);

      expect(find.text("10 Oct 21"), findsOneWidget);
      expect(find.text("200"), findsOneWidget);
      expect(find.text("100"), findsNWidgets(2));
    });
  });
}
