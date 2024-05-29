// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'settings_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SettingsModelImpl _$$SettingsModelImplFromJson(Map<String, dynamic> json) =>
    _$SettingsModelImpl(
      macrosEnabled: json['macrosEnabled'] as bool,
      macros:
          HealthMacrosModel.fromJson(json['macros'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SettingsModelImplToJson(_$SettingsModelImpl instance) =>
    <String, dynamic>{
      'macrosEnabled': instance.macrosEnabled,
      'macros': instance.macros,
    };
