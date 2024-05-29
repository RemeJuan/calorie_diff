// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'health_macros_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

HealthMacrosModel _$HealthMacrosModelFromJson(Map<String, dynamic> json) {
  return _HealthMacrosModel.fromJson(json);
}

/// @nodoc
mixin _$HealthMacrosModel {
  DateTime get date => throw _privateConstructorUsedError;
  double get carb => throw _privateConstructorUsedError;
  double get fat => throw _privateConstructorUsedError;
  double get protein => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HealthMacrosModelCopyWith<HealthMacrosModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HealthMacrosModelCopyWith<$Res> {
  factory $HealthMacrosModelCopyWith(
          HealthMacrosModel value, $Res Function(HealthMacrosModel) then) =
      _$HealthMacrosModelCopyWithImpl<$Res, HealthMacrosModel>;
  @useResult
  $Res call({DateTime date, double carb, double fat, double protein});
}

/// @nodoc
class _$HealthMacrosModelCopyWithImpl<$Res, $Val extends HealthMacrosModel>
    implements $HealthMacrosModelCopyWith<$Res> {
  _$HealthMacrosModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? carb = null,
    Object? fat = null,
    Object? protein = null,
  }) {
    return _then(_value.copyWith(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      carb: null == carb
          ? _value.carb
          : carb // ignore: cast_nullable_to_non_nullable
              as double,
      fat: null == fat
          ? _value.fat
          : fat // ignore: cast_nullable_to_non_nullable
              as double,
      protein: null == protein
          ? _value.protein
          : protein // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HealthMacrosModelImplCopyWith<$Res>
    implements $HealthMacrosModelCopyWith<$Res> {
  factory _$$HealthMacrosModelImplCopyWith(_$HealthMacrosModelImpl value,
          $Res Function(_$HealthMacrosModelImpl) then) =
      __$$HealthMacrosModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DateTime date, double carb, double fat, double protein});
}

/// @nodoc
class __$$HealthMacrosModelImplCopyWithImpl<$Res>
    extends _$HealthMacrosModelCopyWithImpl<$Res, _$HealthMacrosModelImpl>
    implements _$$HealthMacrosModelImplCopyWith<$Res> {
  __$$HealthMacrosModelImplCopyWithImpl(_$HealthMacrosModelImpl _value,
      $Res Function(_$HealthMacrosModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? carb = null,
    Object? fat = null,
    Object? protein = null,
  }) {
    return _then(_$HealthMacrosModelImpl(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      carb: null == carb
          ? _value.carb
          : carb // ignore: cast_nullable_to_non_nullable
              as double,
      fat: null == fat
          ? _value.fat
          : fat // ignore: cast_nullable_to_non_nullable
              as double,
      protein: null == protein
          ? _value.protein
          : protein // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HealthMacrosModelImpl extends _HealthMacrosModel {
  const _$HealthMacrosModelImpl(
      {required this.date,
      required this.carb,
      required this.fat,
      required this.protein})
      : super._();

  factory _$HealthMacrosModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$HealthMacrosModelImplFromJson(json);

  @override
  final DateTime date;
  @override
  final double carb;
  @override
  final double fat;
  @override
  final double protein;

  @override
  String toString() {
    return 'HealthMacrosModel(date: $date, carb: $carb, fat: $fat, protein: $protein)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HealthMacrosModelImpl &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.carb, carb) || other.carb == carb) &&
            (identical(other.fat, fat) || other.fat == fat) &&
            (identical(other.protein, protein) || other.protein == protein));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, date, carb, fat, protein);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HealthMacrosModelImplCopyWith<_$HealthMacrosModelImpl> get copyWith =>
      __$$HealthMacrosModelImplCopyWithImpl<_$HealthMacrosModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HealthMacrosModelImplToJson(
      this,
    );
  }
}

abstract class _HealthMacrosModel extends HealthMacrosModel {
  const factory _HealthMacrosModel(
      {required final DateTime date,
      required final double carb,
      required final double fat,
      required final double protein}) = _$HealthMacrosModelImpl;
  const _HealthMacrosModel._() : super._();

  factory _HealthMacrosModel.fromJson(Map<String, dynamic> json) =
      _$HealthMacrosModelImpl.fromJson;

  @override
  DateTime get date;
  @override
  double get carb;
  @override
  double get fat;
  @override
  double get protein;
  @override
  @JsonKey(ignore: true)
  _$$HealthMacrosModelImplCopyWith<_$HealthMacrosModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
