// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'health_macros_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$HealthMacrosModel {

 DateTime get date; double get carb; double get fat; double get protein;
/// Create a copy of HealthMacrosModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HealthMacrosModelCopyWith<HealthMacrosModel> get copyWith => _$HealthMacrosModelCopyWithImpl<HealthMacrosModel>(this as HealthMacrosModel, _$identity);

  /// Serializes this HealthMacrosModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HealthMacrosModel&&(identical(other.date, date) || other.date == date)&&(identical(other.carb, carb) || other.carb == carb)&&(identical(other.fat, fat) || other.fat == fat)&&(identical(other.protein, protein) || other.protein == protein));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,date,carb,fat,protein);

@override
String toString() {
  return 'HealthMacrosModel(date: $date, carb: $carb, fat: $fat, protein: $protein)';
}


}

/// @nodoc
abstract mixin class $HealthMacrosModelCopyWith<$Res>  {
  factory $HealthMacrosModelCopyWith(HealthMacrosModel value, $Res Function(HealthMacrosModel) _then) = _$HealthMacrosModelCopyWithImpl;
@useResult
$Res call({
 DateTime date, double carb, double fat, double protein
});




}
/// @nodoc
class _$HealthMacrosModelCopyWithImpl<$Res>
    implements $HealthMacrosModelCopyWith<$Res> {
  _$HealthMacrosModelCopyWithImpl(this._self, this._then);

  final HealthMacrosModel _self;
  final $Res Function(HealthMacrosModel) _then;

/// Create a copy of HealthMacrosModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? date = null,Object? carb = null,Object? fat = null,Object? protein = null,}) {
  return _then(_self.copyWith(
date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,carb: null == carb ? _self.carb : carb // ignore: cast_nullable_to_non_nullable
as double,fat: null == fat ? _self.fat : fat // ignore: cast_nullable_to_non_nullable
as double,protein: null == protein ? _self.protein : protein // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [HealthMacrosModel].
extension HealthMacrosModelPatterns on HealthMacrosModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HealthMacrosModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HealthMacrosModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HealthMacrosModel value)  $default,){
final _that = this;
switch (_that) {
case _HealthMacrosModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HealthMacrosModel value)?  $default,){
final _that = this;
switch (_that) {
case _HealthMacrosModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( DateTime date,  double carb,  double fat,  double protein)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HealthMacrosModel() when $default != null:
return $default(_that.date,_that.carb,_that.fat,_that.protein);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( DateTime date,  double carb,  double fat,  double protein)  $default,) {final _that = this;
switch (_that) {
case _HealthMacrosModel():
return $default(_that.date,_that.carb,_that.fat,_that.protein);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( DateTime date,  double carb,  double fat,  double protein)?  $default,) {final _that = this;
switch (_that) {
case _HealthMacrosModel() when $default != null:
return $default(_that.date,_that.carb,_that.fat,_that.protein);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _HealthMacrosModel extends HealthMacrosModel {
  const _HealthMacrosModel({required this.date, required this.carb, required this.fat, required this.protein}): super._();
  factory _HealthMacrosModel.fromJson(Map<String, dynamic> json) => _$HealthMacrosModelFromJson(json);

@override final  DateTime date;
@override final  double carb;
@override final  double fat;
@override final  double protein;

/// Create a copy of HealthMacrosModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HealthMacrosModelCopyWith<_HealthMacrosModel> get copyWith => __$HealthMacrosModelCopyWithImpl<_HealthMacrosModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$HealthMacrosModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HealthMacrosModel&&(identical(other.date, date) || other.date == date)&&(identical(other.carb, carb) || other.carb == carb)&&(identical(other.fat, fat) || other.fat == fat)&&(identical(other.protein, protein) || other.protein == protein));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,date,carb,fat,protein);

@override
String toString() {
  return 'HealthMacrosModel(date: $date, carb: $carb, fat: $fat, protein: $protein)';
}


}

/// @nodoc
abstract mixin class _$HealthMacrosModelCopyWith<$Res> implements $HealthMacrosModelCopyWith<$Res> {
  factory _$HealthMacrosModelCopyWith(_HealthMacrosModel value, $Res Function(_HealthMacrosModel) _then) = __$HealthMacrosModelCopyWithImpl;
@override @useResult
$Res call({
 DateTime date, double carb, double fat, double protein
});




}
/// @nodoc
class __$HealthMacrosModelCopyWithImpl<$Res>
    implements _$HealthMacrosModelCopyWith<$Res> {
  __$HealthMacrosModelCopyWithImpl(this._self, this._then);

  final _HealthMacrosModel _self;
  final $Res Function(_HealthMacrosModel) _then;

/// Create a copy of HealthMacrosModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? date = null,Object? carb = null,Object? fat = null,Object? protein = null,}) {
  return _then(_HealthMacrosModel(
date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,carb: null == carb ? _self.carb : carb // ignore: cast_nullable_to_non_nullable
as double,fat: null == fat ? _self.fat : fat // ignore: cast_nullable_to_non_nullable
as double,protein: null == protein ? _self.protein : protein // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
