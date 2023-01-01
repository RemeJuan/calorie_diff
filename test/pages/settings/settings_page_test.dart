import 'package:calorie_diff/models/settings_model.dart';
import 'package:calorie_diff/pages/settings/macros.dart';
import 'package:calorie_diff/pages/settings/settings_page.dart';
import 'package:calorie_diff/providers/settings_providers.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../test_helpers.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  late List<Override> overrides;

  setUp(() {
    overrides = [
      settingsProvider.overrideWith((_) => SettingsModel.initial()),
    ];
  });

  testWidgets('should render Settings page widgets', (tester) async {
    FlutterError.onError = ignoreOverflowErrors;

    await tester.pumpApp(
      const SettingsPage(),
      overrides,
    );
    await tester.pumpAndSettle();
    expect(find.byType(SettingsMacros), findsOneWidget);
  });
}
