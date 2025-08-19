import 'package:freezed_annotation/freezed_annotation.dart';

part 'health_calories_model.freezed.dart';

@freezed
abstract class HealthCaloriesModel with _$HealthCaloriesModel {
  const HealthCaloriesModel._();

  const factory HealthCaloriesModel({
    required DateTime date,
    required double burned,
    required double consumed,
    required double difference,
  }) = _HealthCaloriesModel;
}
