import 'package:calorie_diff/app.dart';
import 'package:calorie_diff/core/core_providers.dart';
import 'package:calorie_diff/intro_screen/intro_screen.dart';
import 'package:calorie_diff/route_delegate.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod/src/framework.dart' show Override;
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import 'mocks/core_mocks.dart';
import 'test_helpers.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  late MockSharedPreferences mockSharedPreferences;
  late List<Override> overrides;

  setUp(() {
    mockSharedPreferences = MockSharedPreferences();
    overrides = [
      sharedPreferencesProvider.overrideWithValue(mockSharedPreferences),
    ];
  });

  testWidgets('should display IntroScreen', (tester) async {
    when(mockSharedPreferences.getBool('intro_seen')).thenReturn(false);

    await tester.pumpApp(
      const RouteDelegate(),
      overrides,
    );
    await tester.pumpAndSettle();

    expect(find.byType(IntroScreen), findsOneWidget);
    expect(find.byType(CalorieDiffApp), findsNothing);
  });

  testWidgets('should display CalorieDiffApp', (tester) async {
    when(mockSharedPreferences.getBool('intro_seen')).thenReturn(true);

    await tester.pumpApp(
      const RouteDelegate(),
      overrides,
    );
    await tester.pumpAndSettle();

    expect(find.byType(CalorieDiffApp), findsOneWidget);
    expect(find.byType(IntroScreen), findsNothing);
  });
}
