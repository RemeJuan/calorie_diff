import 'package:freezed_annotation/freezed_annotation.dart';

import 'health_macros_model.dart';

part 'settings_model.freezed.dart';

part 'settings_model.g.dart';

@freezed
class SettingsModel with _$SettingsModel {
  const SettingsModel._();

  const factory SettingsModel({
    required bool macrosEnabled,
    required HealthMacrosModel macros,
  }) = _SettingsModel;

  factory SettingsModel.initial() => SettingsModel(
        macrosEnabled: false,
        macros: HealthMacrosModel.initial(),
      );

  factory SettingsModel.fromJson(Map<String, dynamic> json) =>
      _$SettingsModelFromJson(json);
}
