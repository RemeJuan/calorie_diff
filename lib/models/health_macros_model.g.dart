// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'health_macros_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HealthMacrosModelImpl _$$HealthMacrosModelImplFromJson(
        Map<String, dynamic> json) =>
    _$HealthMacrosModelImpl(
      date: DateTime.parse(json['date'] as String),
      carb: (json['carb'] as num).toDouble(),
      fat: (json['fat'] as num).toDouble(),
      protein: (json['protein'] as num).toDouble(),
    );

Map<String, dynamic> _$$HealthMacrosModelImplToJson(
        _$HealthMacrosModelImpl instance) =>
    <String, dynamic>{
      'date': instance.date.toIso8601String(),
      'carb': instance.carb,
      'fat': instance.fat,
      'protein': instance.protein,
    };
