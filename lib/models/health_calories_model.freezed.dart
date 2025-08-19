// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'health_calories_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HealthCaloriesModel {

 DateTime get date; double get burned; double get consumed; double get difference;
/// Create a copy of HealthCaloriesModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HealthCaloriesModelCopyWith<HealthCaloriesModel> get copyWith => _$HealthCaloriesModelCopyWithImpl<HealthCaloriesModel>(this as HealthCaloriesModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HealthCaloriesModel&&(identical(other.date, date) || other.date == date)&&(identical(other.burned, burned) || other.burned == burned)&&(identical(other.consumed, consumed) || other.consumed == consumed)&&(identical(other.difference, difference) || other.difference == difference));
}


@override
int get hashCode => Object.hash(runtimeType,date,burned,consumed,difference);

@override
String toString() {
  return 'HealthCaloriesModel(date: $date, burned: $burned, consumed: $consumed, difference: $difference)';
}


}

/// @nodoc
abstract mixin class $HealthCaloriesModelCopyWith<$Res>  {
  factory $HealthCaloriesModelCopyWith(HealthCaloriesModel value, $Res Function(HealthCaloriesModel) _then) = _$HealthCaloriesModelCopyWithImpl;
@useResult
$Res call({
 DateTime date, double burned, double consumed, double difference
});




}
/// @nodoc
class _$HealthCaloriesModelCopyWithImpl<$Res>
    implements $HealthCaloriesModelCopyWith<$Res> {
  _$HealthCaloriesModelCopyWithImpl(this._self, this._then);

  final HealthCaloriesModel _self;
  final $Res Function(HealthCaloriesModel) _then;

/// Create a copy of HealthCaloriesModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? date = null,Object? burned = null,Object? consumed = null,Object? difference = null,}) {
  return _then(_self.copyWith(
date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,burned: null == burned ? _self.burned : burned // ignore: cast_nullable_to_non_nullable
as double,consumed: null == consumed ? _self.consumed : consumed // ignore: cast_nullable_to_non_nullable
as double,difference: null == difference ? _self.difference : difference // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [HealthCaloriesModel].
extension HealthCaloriesModelPatterns on HealthCaloriesModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HealthCaloriesModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HealthCaloriesModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HealthCaloriesModel value)  $default,){
final _that = this;
switch (_that) {
case _HealthCaloriesModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HealthCaloriesModel value)?  $default,){
final _that = this;
switch (_that) {
case _HealthCaloriesModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( DateTime date,  double burned,  double consumed,  double difference)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HealthCaloriesModel() when $default != null:
return $default(_that.date,_that.burned,_that.consumed,_that.difference);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( DateTime date,  double burned,  double consumed,  double difference)  $default,) {final _that = this;
switch (_that) {
case _HealthCaloriesModel():
return $default(_that.date,_that.burned,_that.consumed,_that.difference);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( DateTime date,  double burned,  double consumed,  double difference)?  $default,) {final _that = this;
switch (_that) {
case _HealthCaloriesModel() when $default != null:
return $default(_that.date,_that.burned,_that.consumed,_that.difference);case _:
  return null;

}
}

}

/// @nodoc


class _HealthCaloriesModel extends HealthCaloriesModel {
  const _HealthCaloriesModel({required this.date, required this.burned, required this.consumed, required this.difference}): super._();
  

@override final  DateTime date;
@override final  double burned;
@override final  double consumed;
@override final  double difference;

/// Create a copy of HealthCaloriesModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HealthCaloriesModelCopyWith<_HealthCaloriesModel> get copyWith => __$HealthCaloriesModelCopyWithImpl<_HealthCaloriesModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HealthCaloriesModel&&(identical(other.date, date) || other.date == date)&&(identical(other.burned, burned) || other.burned == burned)&&(identical(other.consumed, consumed) || other.consumed == consumed)&&(identical(other.difference, difference) || other.difference == difference));
}


@override
int get hashCode => Object.hash(runtimeType,date,burned,consumed,difference);

@override
String toString() {
  return 'HealthCaloriesModel(date: $date, burned: $burned, consumed: $consumed, difference: $difference)';
}


}

/// @nodoc
abstract mixin class _$HealthCaloriesModelCopyWith<$Res> implements $HealthCaloriesModelCopyWith<$Res> {
  factory _$HealthCaloriesModelCopyWith(_HealthCaloriesModel value, $Res Function(_HealthCaloriesModel) _then) = __$HealthCaloriesModelCopyWithImpl;
@override @useResult
$Res call({
 DateTime date, double burned, double consumed, double difference
});




}
/// @nodoc
class __$HealthCaloriesModelCopyWithImpl<$Res>
    implements _$HealthCaloriesModelCopyWith<$Res> {
  __$HealthCaloriesModelCopyWithImpl(this._self, this._then);

  final _HealthCaloriesModel _self;
  final $Res Function(_HealthCaloriesModel) _then;

/// Create a copy of HealthCaloriesModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? date = null,Object? burned = null,Object? consumed = null,Object? difference = null,}) {
  return _then(_HealthCaloriesModel(
date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,burned: null == burned ? _self.burned : burned // ignore: cast_nullable_to_non_nullable
as double,consumed: null == consumed ? _self.consumed : consumed // ignore: cast_nullable_to_non_nullable
as double,difference: null == difference ? _self.difference : difference // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
