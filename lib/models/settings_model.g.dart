// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'settings_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SettingsModel _$SettingsModelFromJson(Map<String, dynamic> json) =>
    _SettingsModel(
      macrosEnabled: json['macrosEnabled'] as bool,
      macros: HealthMacrosModel.fromJson(
        json['macros'] as Map<String, dynamic>,
      ),
    );

Map<String, dynamic> _$SettingsModelToJson(_SettingsModel instance) =>
    <String, dynamic>{
      'macrosEnabled': instance.macrosEnabled,
      'macros': instance.macros,
    };
