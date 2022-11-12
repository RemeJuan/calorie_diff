import 'package:flutter/material.dart';

class AppTheme {
  static Color? blueGrey = Colors.blueGrey[400];
  static Color barColor =
      HSLColor.fromColor(const Color.fromRGBO(23, 31, 44, 1))
          .withLightness(0.1)
          .toColor();
}
