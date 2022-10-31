import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

import 'health/health_providers.dart';
import 'landing_screen.dart';

class CalorieDiffApp extends ConsumerStatefulWidget {
  const CalorieDiffApp({Key? key}) : super(key: key);

  @override
  ConsumerState<CalorieDiffApp> createState() => _CalorieDiffAppState();
}

class _CalorieDiffAppState extends ConsumerState<CalorieDiffApp>
    with WidgetsBindingObserver {
  _CalorieDiffAppState();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed) {
      _refresh();
    }
    super.didChangeAppLifecycleState(state);
  }

  @override
  Widget build(context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Calorie Diff',
      theme: _buildTheme(Brightness.dark),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Calorie Diff'),
          actions: [
            IconButton(
              icon: const Icon(Icons.refresh),
              onPressed: () => _refresh(),
            ),
          ],
        ),
        body: Container(
          padding: const EdgeInsets.all(16),
          child: const LandingScreen(),
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

  void _refresh() {
    ref.invalidate(healthDataProvider);
    ref.invalidate(historicHealthDataProvider);
  }
}
