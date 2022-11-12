import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

final sharedPreferencesProvider = Provider<SharedPreferences>((ref) {
  throw UnimplementedError();
});

final introSeenProvider = Provider<bool>((ref) {
  final prefs = ref.read(sharedPreferencesProvider);
  return prefs.getBool('intro_seen') ?? false;
});

final setIntroSeenProvider = FutureProvider<void>((ref) async {
  final prefs = ref.read(sharedPreferencesProvider);
  await prefs.setBool('intro_seen', true);
  ref.invalidate(introSeenProvider);
});

final pageViewControllerProvider = StateProvider<PageController>((ref) {
  return PageController(
    initialPage: 0,
    keepPage: true,
  );
});
