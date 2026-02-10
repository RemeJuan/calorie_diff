import 'package:calorie_diff/intro_screen/widgets/intro_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod/src/framework.dart' show Override;
import 'package:flutter_test/flutter_test.dart';

import '../../test_helpers.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  late List<Override> overrides;

  setUp(() {
    overrides = [];
  });

  testWidgets('Should render IntroScreen', (tester) async {
    await tester.pumpApp(
      const IntroIcon(),
      overrides,
    );
    await tester.pumpAndSettle();

    expect(find.byIcon(Icons.directions_run), findsOneWidget);
  });
}
