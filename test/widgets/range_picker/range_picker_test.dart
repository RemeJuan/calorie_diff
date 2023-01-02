import 'package:calorie_diff/widgets/range_picker/range_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../test_helpers.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('should render default picker', (tester) async {
    //arrange
    await tester.pumpApp(
      const RangePicker(selectedValue: 7),
      [],
    );
    //act
    await tester.pumpAndSettle();
    //assert
    expect(find.text("7 days"), findsOneWidget);
    expect(find.byType(DropdownMenuItem<int>), findsNWidgets(3));
  });

  testWidgets('should update selected date range', (tester) async {
    //arrange
    await tester.pumpApp(
      const RangePicker(selectedValue: 7),
      [],
    );
    //act
    final buttonFinder = find.byType(DropdownButton<int>);
    await tester.tap(buttonFinder);
    await tester.pump();

    await tester.tap(find.text("14 days").last);
    await tester.pumpAndSettle();
    //assert
    expect(find.text("14 days"), findsOneWidget);
    expect(find.byType(DropdownMenuItem<int>), findsNWidgets(3));
  });
}
