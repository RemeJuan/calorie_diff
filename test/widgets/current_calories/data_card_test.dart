import 'package:calorie_diff/widgets/current_calories/data_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../test_helpers.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('DataCard', (WidgetTester tester) async {
    await tester.pumpApp(
      const DataCard(
        icon: Icon(
          Icons.run_circle_outlined,
          color: Colors.orange,
          size: 36,
        ),
        label: "Burned",
        data: 100,
      ),
    );
    await tester.pumpAndSettle();
    expect(find.text('Burned'), findsOneWidget);
    expect(find.text('100'), findsOneWidget);
  });
}
