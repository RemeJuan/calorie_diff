import 'package:calorie_diff/models/health_macros_model.dart';
import 'package:calorie_diff/models/settings_model.dart';
import 'package:calorie_diff/pages/settings/macros.dart';
import 'package:calorie_diff/providers/settings_providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../mocks/core_mocks.dart';
import '../../test_helpers.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  late MockSharedPreferences mockSharedPreferences;

  setUp(() {
    mockSharedPreferences = MockSharedPreferences();
  });

  testWidgets('should render only the toggle switch', (tester) async {
    await tester.pumpApp(
      const SettingsMacros(),
      [
        settingsProvider.overrideWith((_) => SettingsModel.initial()),
      ],
    );

    await tester.pumpAndSettle();

    expect(find.text("Enable Macros"), findsOneWidget);
    expect(find.byKey(const ValueKey("macros")), findsNothing);
  });

  testWidgets('should render only the macros form', (tester) async {
    await tester.pumpApp(
      const SettingsMacros(),
      [
        settingsProvider.overrideWith((_) => SettingsModel(
              macrosEnabled: true,
              macros: HealthMacrosModel.initial(),
            )),
      ],
    );

    await tester.pumpAndSettle();

    expect(find.text("Enable Macros"), findsOneWidget);
    expect(find.byKey(const ValueKey("macros")), findsOneWidget);
    expect(find.text("Carb"), findsOneWidget);
    expect(find.text("Protein"), findsOneWidget);
    expect(find.text("Fat"), findsOneWidget);
  });

  testWidgets('should render trigger update method', (tester) async {
    final model = SettingsModel(
      macrosEnabled: true,
      macros: HealthMacrosModel.initial(),
    );
    await tester.pumpApp(
      const SettingsMacros(),
      [
        settingsProvider.overrideWith((_) => model),
        updateSettingsProvider.overrideWith((_, __) => model),
      ],
    );

    await tester.pumpAndSettle();

    expect(find.text("Enable Macros"), findsOneWidget);
    expect(find.byKey(const ValueKey("macros")), findsOneWidget);

    await tester.tap(find.byType(ElevatedButton));
    await tester.pumpAndSettle();
  });

  testWidgets('should render trigger toggle switch', (tester) async {
    final model = SettingsModel(
      macrosEnabled: true,
      macros: HealthMacrosModel.initial(),
    );
    await tester.pumpApp(
      const SettingsMacros(),
      [
        settingsProvider.overrideWith((_) => model),
        updateSettingsProvider.overrideWith((_, __) => model),
      ],
    );

    await tester.pumpAndSettle();

    expect(find.text("Enable Macros"), findsOneWidget);
    expect(find.byKey(const ValueKey("macros")), findsOneWidget);

    await tester.tap(find.byType(Switch));
    await tester.pumpAndSettle();
  });
}
