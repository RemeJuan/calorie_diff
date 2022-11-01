import 'package:calorie_diff/core/core_providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'app.dart';
import 'intro_screen/intro_screen.dart';

class RouteDelegate extends ConsumerWidget {
  const RouteDelegate({Key? key}) : super(key: key);

  @override
  Widget build(context, ref) {
    final seen = ref.watch(introSeenProvider);
    if (!seen) {
      return const IntroScreen();
    } else {
      return const CalorieDiffApp();
    }
  }
}
