import 'package:calorie_diff/widgets/current_calories/current_calories.dart';
import 'package:calorie_diff/widgets/historic_calories/historic_calories.dart';
import 'package:calorie_diff/widgets/permissions_request.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

import 'health/health_providers.dart';

class CalorieDiffApp extends ConsumerWidget {
  const CalorieDiffApp({Key? key}) : super(key: key);

  @override
  Widget build(context, ref) {
    return MaterialApp(
      title: 'Calorie Diff',
      theme: _buildTheme(Brightness.dark),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Calorie Diff'),
          actions: [
            IconButton(
              icon: const Icon(Icons.refresh),
              onPressed: () {
                ref.invalidate(healthDataProvider);
                ref.invalidate(historicHealthDataProvider);
              },
            ),
          ],
        ),
        body: Container(
          alignment: Alignment.topCenter,
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              PermissionRequest(),
              CurrentCalories(),
              HistoricCalories(),
            ],
          ),
        ),
      ),
    );
  }

  ThemeData _buildTheme(brightness) {
    var baseTheme = ThemeData(brightness: brightness);

    return baseTheme.copyWith(
      textTheme: GoogleFonts.poppinsTextTheme(baseTheme.textTheme),
      scaffoldBackgroundColor: const Color.fromRGBO(23, 31, 44, 1),
      appBarTheme: const AppBarTheme(
        backgroundColor: Color.fromRGBO(23, 31, 44, 1),
        elevation: 0,
      ),
    );
  }
}
