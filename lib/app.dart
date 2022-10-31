import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'health/health_providers.dart';
import 'landing_screen.dart';

part 'info_popup.dart';

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
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calorie Diff'),
        leading: IconButton(
          onPressed: () => _showAboutDialog(context),
          icon: const Icon(Icons.info_outline),
        ),
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
    );
  }

  void _refresh() {
    ref.invalidate(healthDataProvider);
    ref.invalidate(historicHealthDataProvider);
  }
}
