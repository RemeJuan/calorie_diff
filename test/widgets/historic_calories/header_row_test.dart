import 'package:calorie_diff/widgets/historic_calories/header_row.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../test_helpers.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('should render HeaderRow', (tester) async {
    await tester.pumpApp(const HeaderRow(
      entries: ['Date', 'In', 'Out', 'Diff'],
    ));

    expect(find.byType(Text), findsNWidgets(4));
  });
}
