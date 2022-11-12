import 'package:calorie_diff/app.dart';
import 'package:calorie_diff/core/core_providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import 'mocks/core_mocks.dart';
import 'test_helpers.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  late MockPageController mockPageController;

  setUp(() {
    mockPageController = MockPageController();
  });

  testWidgets('should render about dialog', (tester) async {
    await tester.pumpApp(
      const CalorieDiffApp(),
      [],
    );

    await tester.tap(find.byIcon(Icons.info_outline));
    await tester.pumpAndSettle();

    expect(find.byType(AlertDialog), findsOneWidget);
    final textFinder = find.byWidgetPredicate(
      (w) => w is Text && w.data == 'Info' && w.style?.fontSize == 24,
    );
    expect(textFinder, findsOneWidget);
  });

  testWidgets('should verify animateToPage is called on icon tap',
      (tester) async {
    const duration = Duration(milliseconds: 300);
    const curve = Curves.easeInOut;
    when(
      () => mockPageController.animateToPage(
        1,
        duration: duration,
        curve: curve,
      ),
    ).thenAnswer((_) => Future.value());

    await tester.pumpApp(
      const CalorieDiffApp(),
      [
        pageViewControllerProvider.overrideWith((_) => mockPageController),
      ],
    );

    await tester.tap(find.byIcon(Icons.history));
    await tester.pumpAndSettle();

    verify(
      () => mockPageController.animateToPage(
        1,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      ),
    ).called(1);
  });
}
