import 'package:calorie_diff/health/health_providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PermissionRequest extends ConsumerWidget {
  const PermissionRequest({Key? key}) : super(key: key);

  @override
  Widget build(context, ref) {
    final hasPermissions = ref.watch(hasHealthDataAccessProvider);

    return hasPermissions.when(
      data: (data) {
        if (data == true) {
          return const SizedBox.shrink();
        }

        return Column(
          children: [
            ..._textEntry(
              'This app requires access to some of your health data. ',
            ),
            ..._textEntry(
              'We require Active, Resting and Dietary Energy Burned. ',
            ),
            ..._textEntry(
              'Tap the button to grant access ',
            ),
            ElevatedButton(
              onPressed: () async => await ref.read(
                healthRequestAccessProvider,
              ),
              child: const Text('Grant Access'),
            ),
          ],
        );
      },
      error: (e, s) => const SizedBox.shrink(key: Key('error')),
      loading: () => const SizedBox.shrink(key: Key('loading')),
    );
  }

  List<Widget> _textEntry(String text) {
    return [
      Text(text),
      const SizedBox(height: 8),
    ];
  }
}
