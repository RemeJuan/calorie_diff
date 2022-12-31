// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'settings_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SettingsModel _$$_SettingsModelFromJson(Map<String, dynamic> json) =>
    _$_SettingsModel(
      macrosEnabled: json['macrosEnabled'] as bool,
      macros:
          HealthMacrosModel.fromJson(json['macros'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_SettingsModelToJson(_$_SettingsModel instance) =>
    <String, dynamic>{
      'macrosEnabled': instance.macrosEnabled,
      'macros': instance.macros,
    };
