// Test the IconContainer weidget

import 'package:calorie_diff/shared/widgets/icon_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../test_helpers.dart';

void main() {
  testWidgets('IconContainer widget test', (tester) async {
    // Build our app and trigger a frame.
    await tester.pumpApp(
      const IconContainer(
        child: Icon(Icons.ac_unit),
      ),
    );

    final iconFinder = find.byIcon(Icons.ac_unit);
    expect(iconFinder, findsOneWidget);
  });
}
