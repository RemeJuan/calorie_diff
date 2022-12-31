import 'package:calorie_diff/widgets/shared/progress_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../test_helpers.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('ProgressCard', (tester) async {
    await tester.pumpApp(
      const ProgressCard(
        label: "Carbs",
        data: 100,
        color: Colors.orange,
        target: 200,
      ),
    );
    await tester.pumpAndSettle();
    expect(find.text('Carbs'), findsOneWidget);
    expect(find.text('100'), findsOneWidget);
    expect(find.text(' / 200g'), findsOneWidget);
  });
}
