import 'package:calorie_diff/core/core_providers.dart';
import 'package:calorie_diff/health/health_providers.dart';
import 'package:calorie_diff/intro_screen/intro_screen.dart';
import 'package:calorie_diff/intro_screen/widgets/intro_icon.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:mocktail/mocktail.dart';

import '../mocks/core_mocks.dart';
import '../test_helpers.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  late List<Override> overrides;
  late MockSharedPreferences mockSharedPreferences;

  setUp(() {
    mockSharedPreferences = MockSharedPreferences();
    overrides = [
      healthRequestAccessProvider.overrideWithProvider(
        FutureProvider((ref) async => true),
      ),
      sharedPreferencesProvider.overrideWithValue(mockSharedPreferences),
    ];
  });

  testWidgets('Should render IntroScreen', (tester) async {
    await tester.pumpApp(
      const IntroScreen(),
      overrides,
    );
    await tester.pumpAndSettle();

    expect(find.byType(IntroductionScreen), findsOneWidget);
    expect(find.byType(IntroIcon), findsOneWidget);
  });

  testWidgets('handles permission request', (tester) async {
    await tester.pumpApp(
      const IntroScreen(),
      overrides,
    );
    await tester.pumpAndSettle();

    await tester.tap(find.text('Grant'));
    await tester.pump();

    verify(() => mockSharedPreferences.setBool("intro_seen", true)).called(1);
  });
}
