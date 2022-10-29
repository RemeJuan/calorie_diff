import 'package:calorie_diff/widgets/permissions_request.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'health/health_providers.dart';

class CalorieDiffApp extends ConsumerWidget {
  const CalorieDiffApp({Key? key}) : super(key: key);

  @override
  Widget build(context, ref) {
    return MaterialApp(
      title: 'Calorie Diff',
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Calorie Diff'),
        ),
        body: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const PermissionRequest(),
              ElevatedButton(
                onPressed: () async {
                  final data = ref.watch(healthDataProvider);
                  print(data);
                },
                child: const Text('Get Health Data'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
