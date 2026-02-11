import 'dart:io';

import 'package:calorie_diff/core/core_providers.dart';
import 'package:calorie_diff/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:riverpod/src/framework.dart' show Override;

void setupTest() async {
  // For handling Image.network and SVGAsset.network calls
  HttpOverrides.global = null;
}

extension PumpApp on WidgetTester {
  Future<void> pumpApp(
    Widget widget, [
    List<Override> overrides = const [],
  ]) async {
    return pumpWidget(
      ProviderScope(
        overrides: overrides,
        child: MaterialApp(
          localizationsDelegates: const [
            S.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          home: Scaffold(body: widget),
        ),
      ),
    );
  }
}

/// Certain errors cause a test to fail, while not being critical for the test
/// requirements, this prevents those errors from cause what is in effect false
/// negatives.
void ignoreOverflowErrors(
  FlutterErrorDetails details, {
  bool forceReport = false,
}) {
  var ifIsOverflowError = false;
  var isUnableToLoadAsset = false;

  // Detect overflow error.
  final exception = details.exception;
  if (exception is FlutterError) {
    ifIsOverflowError = !exception.diagnostics.any(
      (e) => e.value.toString().startsWith("A RenderFlex overflowed by"),
    );
    isUnableToLoadAsset = !exception.diagnostics.any(
      (e) => e.value.toString().startsWith("Unable to load asset"),
    );
  }

  // Ignore if is overflow error.
  if (ifIsOverflowError || isUnableToLoadAsset) {
    debugPrint('Ignored Error');
  } else {
    FlutterError.dumpErrorToConsole(details, forceReport: forceReport);
  }
}

String fixture(String pathToFile) =>
    File('test/fixtures/$pathToFile').readAsStringSync();

class TestCallbackFunctions {
  void onTap() => {};
}

// Test-only notifier that wraps a PageController so we can override the
// NotifierProvider with a zero-arg factory returning a notifier instance.
// Placed here so multiple tests can reuse it without duplication.
class TestPageViewControllerNotifier extends PageViewControllerNotifier {
  final PageController controller;

  TestPageViewControllerNotifier(this.controller);

  @override
  PageController build() => controller;
}
