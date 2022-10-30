import 'package:calorie_diff/widgets/historic_calories/historic_row.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../test_helpers.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('should render HistoricRow', (tester) async {
    await tester.pumpApp(const HistoricRow(
      entries: ['10/09/2022', '200', '200', '200'],
    ));

    expect(find.byType(Text), findsNWidgets(4));
  });
}
