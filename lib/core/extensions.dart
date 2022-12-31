import 'package:flutter/widgets.dart';

extension ExtendedDateTime on DateTime {
  static DateTime? _customTime;

  static DateTime get current {
    return _customTime ?? DateTime.now();
  }

  static set customTime(DateTime customTime) {
    _customTime = customTime;
  }
}

extension TextEditingControllerExt on TextEditingController {
  void selectAll() {
    if (text.isEmpty) return;
    selection = TextSelection(baseOffset: 0, extentOffset: text.length);
  }
}
