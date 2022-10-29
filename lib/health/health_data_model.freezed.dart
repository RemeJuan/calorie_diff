// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'health_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HealthDataModel {
  num get active => throw _privateConstructorUsedError;
  num get rest => throw _privateConstructorUsedError;
  num get dietary => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HealthDataModelCopyWith<HealthDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HealthDataModelCopyWith<$Res> {
  factory $HealthDataModelCopyWith(
          HealthDataModel value, $Res Function(HealthDataModel) then) =
      _$HealthDataModelCopyWithImpl<$Res, HealthDataModel>;
  @useResult
  $Res call({num active, num rest, num dietary});
}

/// @nodoc
class _$HealthDataModelCopyWithImpl<$Res, $Val extends HealthDataModel>
    implements $HealthDataModelCopyWith<$Res> {
  _$HealthDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? active = null,
    Object? rest = null,
    Object? dietary = null,
  }) {
    return _then(_value.copyWith(
      active: null == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as num,
      rest: null == rest
          ? _value.rest
          : rest // ignore: cast_nullable_to_non_nullable
              as num,
      dietary: null == dietary
          ? _value.dietary
          : dietary // ignore: cast_nullable_to_non_nullable
              as num,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_HealthDataModelCopyWith<$Res>
    implements $HealthDataModelCopyWith<$Res> {
  factory _$$_HealthDataModelCopyWith(
          _$_HealthDataModel value, $Res Function(_$_HealthDataModel) then) =
      __$$_HealthDataModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({num active, num rest, num dietary});
}

/// @nodoc
class __$$_HealthDataModelCopyWithImpl<$Res>
    extends _$HealthDataModelCopyWithImpl<$Res, _$_HealthDataModel>
    implements _$$_HealthDataModelCopyWith<$Res> {
  __$$_HealthDataModelCopyWithImpl(
      _$_HealthDataModel _value, $Res Function(_$_HealthDataModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? active = null,
    Object? rest = null,
    Object? dietary = null,
  }) {
    return _then(_$_HealthDataModel(
      active: null == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as num,
      rest: null == rest
          ? _value.rest
          : rest // ignore: cast_nullable_to_non_nullable
              as num,
      dietary: null == dietary
          ? _value.dietary
          : dietary // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc

class _$_HealthDataModel extends _HealthDataModel {
  const _$_HealthDataModel(
      {required this.active, required this.rest, required this.dietary})
      : super._();

  @override
  final num active;
  @override
  final num rest;
  @override
  final num dietary;

  @override
  String toString() {
    return 'HealthDataModel(active: $active, rest: $rest, dietary: $dietary)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HealthDataModel &&
            (identical(other.active, active) || other.active == active) &&
            (identical(other.rest, rest) || other.rest == rest) &&
            (identical(other.dietary, dietary) || other.dietary == dietary));
  }

  @override
  int get hashCode => Object.hash(runtimeType, active, rest, dietary);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HealthDataModelCopyWith<_$_HealthDataModel> get copyWith =>
      __$$_HealthDataModelCopyWithImpl<_$_HealthDataModel>(this, _$identity);
}

abstract class _HealthDataModel extends HealthDataModel {
  const factory _HealthDataModel(
      {required final num active,
      required final num rest,
      required final num dietary}) = _$_HealthDataModel;
  const _HealthDataModel._() : super._();

  @override
  num get active;
  @override
  num get rest;
  @override
  num get dietary;
  @override
  @JsonKey(ignore: true)
  _$$_HealthDataModelCopyWith<_$_HealthDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}
