import 'dart:convert';

import 'package:calorie_diff/core/core_providers.dart';
import 'package:calorie_diff/models/settings_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final settingsProvider = Provider<SettingsModel>((ref) {
  final prefs = ref.read(sharedPreferencesProvider);
  final settings = prefs.getString('settings');

  if (settings != null) {
    return SettingsModel.fromJson(jsonDecode(settings));
  } else {
    return SettingsModel.initial();
  }
});

final updateSettingsProvider =
    Provider.family<SettingsModel, SettingsModel>((ref, settings) {
  final prefs = ref.read(sharedPreferencesProvider);
  prefs.setString('settings', jsonEncode(settings));
  ref.invalidate(settingsProvider);
  return settings;
});
