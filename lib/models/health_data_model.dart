import 'package:freezed_annotation/freezed_annotation.dart';

part 'health_data_model.freezed.dart';

@freezed
class HealthDataModel with _$HealthDataModel {
  const HealthDataModel._();

  const factory HealthDataModel({
    required DateTime date,
    required double burned,
    required double consumed,
    required double difference,
  }) = _HealthDataModel;
}
