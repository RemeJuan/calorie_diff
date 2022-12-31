// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'health_macros_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_HealthMacrosModel _$$_HealthMacrosModelFromJson(Map<String, dynamic> json) =>
    _$_HealthMacrosModel(
      date: DateTime.parse(json['date'] as String),
      carb: (json['carb'] as num).toDouble(),
      fat: (json['fat'] as num).toDouble(),
      protein: (json['protein'] as num).toDouble(),
    );

Map<String, dynamic> _$$_HealthMacrosModelToJson(
        _$_HealthMacrosModel instance) =>
    <String, dynamic>{
      'date': instance.date.toIso8601String(),
      'carb': instance.carb,
      'fat': instance.fat,
      'protein': instance.protein,
    };
