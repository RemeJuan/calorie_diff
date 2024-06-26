// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'health_calories_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HealthCaloriesModel {
  DateTime get date => throw _privateConstructorUsedError;
  double get burned => throw _privateConstructorUsedError;
  double get consumed => throw _privateConstructorUsedError;
  double get difference => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HealthCaloriesModelCopyWith<HealthCaloriesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HealthCaloriesModelCopyWith<$Res> {
  factory $HealthCaloriesModelCopyWith(
          HealthCaloriesModel value, $Res Function(HealthCaloriesModel) then) =
      _$HealthCaloriesModelCopyWithImpl<$Res, HealthCaloriesModel>;
  @useResult
  $Res call({DateTime date, double burned, double consumed, double difference});
}

/// @nodoc
class _$HealthCaloriesModelCopyWithImpl<$Res, $Val extends HealthCaloriesModel>
    implements $HealthCaloriesModelCopyWith<$Res> {
  _$HealthCaloriesModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? burned = null,
    Object? consumed = null,
    Object? difference = null,
  }) {
    return _then(_value.copyWith(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      burned: null == burned
          ? _value.burned
          : burned // ignore: cast_nullable_to_non_nullable
              as double,
      consumed: null == consumed
          ? _value.consumed
          : consumed // ignore: cast_nullable_to_non_nullable
              as double,
      difference: null == difference
          ? _value.difference
          : difference // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HealthCaloriesModelImplCopyWith<$Res>
    implements $HealthCaloriesModelCopyWith<$Res> {
  factory _$$HealthCaloriesModelImplCopyWith(_$HealthCaloriesModelImpl value,
          $Res Function(_$HealthCaloriesModelImpl) then) =
      __$$HealthCaloriesModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DateTime date, double burned, double consumed, double difference});
}

/// @nodoc
class __$$HealthCaloriesModelImplCopyWithImpl<$Res>
    extends _$HealthCaloriesModelCopyWithImpl<$Res, _$HealthCaloriesModelImpl>
    implements _$$HealthCaloriesModelImplCopyWith<$Res> {
  __$$HealthCaloriesModelImplCopyWithImpl(_$HealthCaloriesModelImpl _value,
      $Res Function(_$HealthCaloriesModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? burned = null,
    Object? consumed = null,
    Object? difference = null,
  }) {
    return _then(_$HealthCaloriesModelImpl(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      burned: null == burned
          ? _value.burned
          : burned // ignore: cast_nullable_to_non_nullable
              as double,
      consumed: null == consumed
          ? _value.consumed
          : consumed // ignore: cast_nullable_to_non_nullable
              as double,
      difference: null == difference
          ? _value.difference
          : difference // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$HealthCaloriesModelImpl extends _HealthCaloriesModel {
  const _$HealthCaloriesModelImpl(
      {required this.date,
      required this.burned,
      required this.consumed,
      required this.difference})
      : super._();

  @override
  final DateTime date;
  @override
  final double burned;
  @override
  final double consumed;
  @override
  final double difference;

  @override
  String toString() {
    return 'HealthCaloriesModel(date: $date, burned: $burned, consumed: $consumed, difference: $difference)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HealthCaloriesModelImpl &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.burned, burned) || other.burned == burned) &&
            (identical(other.consumed, consumed) ||
                other.consumed == consumed) &&
            (identical(other.difference, difference) ||
                other.difference == difference));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, date, burned, consumed, difference);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HealthCaloriesModelImplCopyWith<_$HealthCaloriesModelImpl> get copyWith =>
      __$$HealthCaloriesModelImplCopyWithImpl<_$HealthCaloriesModelImpl>(
          this, _$identity);
}

abstract class _HealthCaloriesModel extends HealthCaloriesModel {
  const factory _HealthCaloriesModel(
      {required final DateTime date,
      required final double burned,
      required final double consumed,
      required final double difference}) = _$HealthCaloriesModelImpl;
  const _HealthCaloriesModel._() : super._();

  @override
  DateTime get date;
  @override
  double get burned;
  @override
  double get consumed;
  @override
  double get difference;
  @override
  @JsonKey(ignore: true)
  _$$HealthCaloriesModelImplCopyWith<_$HealthCaloriesModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
