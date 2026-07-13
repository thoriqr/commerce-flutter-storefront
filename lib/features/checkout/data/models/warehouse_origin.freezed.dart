// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'warehouse_origin.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$WarehouseOrigin {

 String get name; String get province; String get city; String get district;
/// Create a copy of WarehouseOrigin
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WarehouseOriginCopyWith<WarehouseOrigin> get copyWith => _$WarehouseOriginCopyWithImpl<WarehouseOrigin>(this as WarehouseOrigin, _$identity);

  /// Serializes this WarehouseOrigin to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WarehouseOrigin&&(identical(other.name, name) || other.name == name)&&(identical(other.province, province) || other.province == province)&&(identical(other.city, city) || other.city == city)&&(identical(other.district, district) || other.district == district));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,province,city,district);

@override
String toString() {
  return 'WarehouseOrigin(name: $name, province: $province, city: $city, district: $district)';
}


}

/// @nodoc
abstract mixin class $WarehouseOriginCopyWith<$Res>  {
  factory $WarehouseOriginCopyWith(WarehouseOrigin value, $Res Function(WarehouseOrigin) _then) = _$WarehouseOriginCopyWithImpl;
@useResult
$Res call({
 String name, String province, String city, String district
});




}
/// @nodoc
class _$WarehouseOriginCopyWithImpl<$Res>
    implements $WarehouseOriginCopyWith<$Res> {
  _$WarehouseOriginCopyWithImpl(this._self, this._then);

  final WarehouseOrigin _self;
  final $Res Function(WarehouseOrigin) _then;

/// Create a copy of WarehouseOrigin
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? province = null,Object? city = null,Object? district = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,province: null == province ? _self.province : province // ignore: cast_nullable_to_non_nullable
as String,city: null == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String,district: null == district ? _self.district : district // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [WarehouseOrigin].
extension WarehouseOriginPatterns on WarehouseOrigin {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WarehouseOrigin value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WarehouseOrigin() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WarehouseOrigin value)  $default,){
final _that = this;
switch (_that) {
case _WarehouseOrigin():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WarehouseOrigin value)?  $default,){
final _that = this;
switch (_that) {
case _WarehouseOrigin() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  String province,  String city,  String district)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WarehouseOrigin() when $default != null:
return $default(_that.name,_that.province,_that.city,_that.district);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  String province,  String city,  String district)  $default,) {final _that = this;
switch (_that) {
case _WarehouseOrigin():
return $default(_that.name,_that.province,_that.city,_that.district);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  String province,  String city,  String district)?  $default,) {final _that = this;
switch (_that) {
case _WarehouseOrigin() when $default != null:
return $default(_that.name,_that.province,_that.city,_that.district);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WarehouseOrigin implements WarehouseOrigin {
  const _WarehouseOrigin({required this.name, required this.province, required this.city, required this.district});
  factory _WarehouseOrigin.fromJson(Map<String, dynamic> json) => _$WarehouseOriginFromJson(json);

@override final  String name;
@override final  String province;
@override final  String city;
@override final  String district;

/// Create a copy of WarehouseOrigin
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WarehouseOriginCopyWith<_WarehouseOrigin> get copyWith => __$WarehouseOriginCopyWithImpl<_WarehouseOrigin>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WarehouseOriginToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WarehouseOrigin&&(identical(other.name, name) || other.name == name)&&(identical(other.province, province) || other.province == province)&&(identical(other.city, city) || other.city == city)&&(identical(other.district, district) || other.district == district));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,province,city,district);

@override
String toString() {
  return 'WarehouseOrigin(name: $name, province: $province, city: $city, district: $district)';
}


}

/// @nodoc
abstract mixin class _$WarehouseOriginCopyWith<$Res> implements $WarehouseOriginCopyWith<$Res> {
  factory _$WarehouseOriginCopyWith(_WarehouseOrigin value, $Res Function(_WarehouseOrigin) _then) = __$WarehouseOriginCopyWithImpl;
@override @useResult
$Res call({
 String name, String province, String city, String district
});




}
/// @nodoc
class __$WarehouseOriginCopyWithImpl<$Res>
    implements _$WarehouseOriginCopyWith<$Res> {
  __$WarehouseOriginCopyWithImpl(this._self, this._then);

  final _WarehouseOrigin _self;
  final $Res Function(_WarehouseOrigin) _then;

/// Create a copy of WarehouseOrigin
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? province = null,Object? city = null,Object? district = null,}) {
  return _then(_WarehouseOrigin(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,province: null == province ? _self.province : province // ignore: cast_nullable_to_non_nullable
as String,city: null == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String,district: null == district ? _self.district : district // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
