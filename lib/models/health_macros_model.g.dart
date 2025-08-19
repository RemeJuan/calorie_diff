// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'health_macros_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_HealthMacrosModel _$HealthMacrosModelFromJson(Map<String, dynamic> json) =>
    _HealthMacrosModel(
      date: DateTime.parse(json['date'] as String),
      carb: (json['carb'] as num).toDouble(),
      fat: (json['fat'] as num).toDouble(),
      protein: (json['protein'] as num).toDouble(),
    );

Map<String, dynamic> _$HealthMacrosModelToJson(_HealthMacrosModel instance) =>
    <String, dynamic>{
      'date': instance.date.toIso8601String(),
      'carb': instance.carb,
      'fat': instance.fat,
      'protein': instance.protein,
    };
