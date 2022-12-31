import 'package:freezed_annotation/freezed_annotation.dart';

part 'health_macros_model.freezed.dart';

@freezed
class HealthMacrosModel with _$HealthMacrosModel {
  const HealthMacrosModel._();

  const factory HealthMacrosModel({
    required DateTime date,
    required double carb,
    required double fat,
    required double protein,
  }) = _HealthMacrosModel;
}
