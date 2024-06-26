// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'settings_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SettingsModel _$SettingsModelFromJson(Map<String, dynamic> json) {
  return _SettingsModel.fromJson(json);
}

/// @nodoc
mixin _$SettingsModel {
  bool get macrosEnabled => throw _privateConstructorUsedError;
  HealthMacrosModel get macros => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SettingsModelCopyWith<SettingsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsModelCopyWith<$Res> {
  factory $SettingsModelCopyWith(
          SettingsModel value, $Res Function(SettingsModel) then) =
      _$SettingsModelCopyWithImpl<$Res, SettingsModel>;
  @useResult
  $Res call({bool macrosEnabled, HealthMacrosModel macros});

  $HealthMacrosModelCopyWith<$Res> get macros;
}

/// @nodoc
class _$SettingsModelCopyWithImpl<$Res, $Val extends SettingsModel>
    implements $SettingsModelCopyWith<$Res> {
  _$SettingsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? macrosEnabled = null,
    Object? macros = null,
  }) {
    return _then(_value.copyWith(
      macrosEnabled: null == macrosEnabled
          ? _value.macrosEnabled
          : macrosEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      macros: null == macros
          ? _value.macros
          : macros // ignore: cast_nullable_to_non_nullable
              as HealthMacrosModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $HealthMacrosModelCopyWith<$Res> get macros {
    return $HealthMacrosModelCopyWith<$Res>(_value.macros, (value) {
      return _then(_value.copyWith(macros: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SettingsModelImplCopyWith<$Res>
    implements $SettingsModelCopyWith<$Res> {
  factory _$$SettingsModelImplCopyWith(
          _$SettingsModelImpl value, $Res Function(_$SettingsModelImpl) then) =
      __$$SettingsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool macrosEnabled, HealthMacrosModel macros});

  @override
  $HealthMacrosModelCopyWith<$Res> get macros;
}

/// @nodoc
class __$$SettingsModelImplCopyWithImpl<$Res>
    extends _$SettingsModelCopyWithImpl<$Res, _$SettingsModelImpl>
    implements _$$SettingsModelImplCopyWith<$Res> {
  __$$SettingsModelImplCopyWithImpl(
      _$SettingsModelImpl _value, $Res Function(_$SettingsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? macrosEnabled = null,
    Object? macros = null,
  }) {
    return _then(_$SettingsModelImpl(
      macrosEnabled: null == macrosEnabled
          ? _value.macrosEnabled
          : macrosEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      macros: null == macros
          ? _value.macros
          : macros // ignore: cast_nullable_to_non_nullable
              as HealthMacrosModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SettingsModelImpl extends _SettingsModel {
  const _$SettingsModelImpl({required this.macrosEnabled, required this.macros})
      : super._();

  factory _$SettingsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SettingsModelImplFromJson(json);

  @override
  final bool macrosEnabled;
  @override
  final HealthMacrosModel macros;

  @override
  String toString() {
    return 'SettingsModel(macrosEnabled: $macrosEnabled, macros: $macros)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SettingsModelImpl &&
            (identical(other.macrosEnabled, macrosEnabled) ||
                other.macrosEnabled == macrosEnabled) &&
            (identical(other.macros, macros) || other.macros == macros));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, macrosEnabled, macros);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SettingsModelImplCopyWith<_$SettingsModelImpl> get copyWith =>
      __$$SettingsModelImplCopyWithImpl<_$SettingsModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SettingsModelImplToJson(
      this,
    );
  }
}

abstract class _SettingsModel extends SettingsModel {
  const factory _SettingsModel(
      {required final bool macrosEnabled,
      required final HealthMacrosModel macros}) = _$SettingsModelImpl;
  const _SettingsModel._() : super._();

  factory _SettingsModel.fromJson(Map<String, dynamic> json) =
      _$SettingsModelImpl.fromJson;

  @override
  bool get macrosEnabled;
  @override
  HealthMacrosModel get macros;
  @override
  @JsonKey(ignore: true)
  _$$SettingsModelImplCopyWith<_$SettingsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
