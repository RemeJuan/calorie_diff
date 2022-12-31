import 'package:calorie_diff/core/extensions.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'health_macros_model.freezed.dart';

part 'health_macros_model.g.dart';

@freezed
class HealthMacrosModel with _$HealthMacrosModel {
  const HealthMacrosModel._();

  const factory HealthMacrosModel({
    required DateTime date,
    required double carb,
    required double fat,
    required double protein,
  }) = _HealthMacrosModel;

  factory HealthMacrosModel.initial() => HealthMacrosModel(
        date: ExtendedDateTime.current,
        carb: 0,
        fat: 0,
        protein: 0,
      );

  factory HealthMacrosModel.fromJson(Map<String, dynamic> json) =>
      _$HealthMacrosModelFromJson(json);
}
