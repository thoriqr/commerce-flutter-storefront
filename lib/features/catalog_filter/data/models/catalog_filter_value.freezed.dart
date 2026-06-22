// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'catalog_filter_value.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CatalogFilterValue {

 String get value; String get label; int get count; String? get hexColor;
/// Create a copy of CatalogFilterValue
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CatalogFilterValueCopyWith<CatalogFilterValue> get copyWith => _$CatalogFilterValueCopyWithImpl<CatalogFilterValue>(this as CatalogFilterValue, _$identity);

  /// Serializes this CatalogFilterValue to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CatalogFilterValue&&(identical(other.value, value) || other.value == value)&&(identical(other.label, label) || other.label == label)&&(identical(other.count, count) || other.count == count)&&(identical(other.hexColor, hexColor) || other.hexColor == hexColor));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,value,label,count,hexColor);

@override
String toString() {
  return 'CatalogFilterValue(value: $value, label: $label, count: $count, hexColor: $hexColor)';
}


}

/// @nodoc
abstract mixin class $CatalogFilterValueCopyWith<$Res>  {
  factory $CatalogFilterValueCopyWith(CatalogFilterValue value, $Res Function(CatalogFilterValue) _then) = _$CatalogFilterValueCopyWithImpl;
@useResult
$Res call({
 String value, String label, int count, String? hexColor
});




}
/// @nodoc
class _$CatalogFilterValueCopyWithImpl<$Res>
    implements $CatalogFilterValueCopyWith<$Res> {
  _$CatalogFilterValueCopyWithImpl(this._self, this._then);

  final CatalogFilterValue _self;
  final $Res Function(CatalogFilterValue) _then;

/// Create a copy of CatalogFilterValue
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? value = null,Object? label = null,Object? count = null,Object? hexColor = freezed,}) {
  return _then(_self.copyWith(
value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,hexColor: freezed == hexColor ? _self.hexColor : hexColor // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [CatalogFilterValue].
extension CatalogFilterValuePatterns on CatalogFilterValue {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CatalogFilterValue value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CatalogFilterValue() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CatalogFilterValue value)  $default,){
final _that = this;
switch (_that) {
case _CatalogFilterValue():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CatalogFilterValue value)?  $default,){
final _that = this;
switch (_that) {
case _CatalogFilterValue() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String value,  String label,  int count,  String? hexColor)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CatalogFilterValue() when $default != null:
return $default(_that.value,_that.label,_that.count,_that.hexColor);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String value,  String label,  int count,  String? hexColor)  $default,) {final _that = this;
switch (_that) {
case _CatalogFilterValue():
return $default(_that.value,_that.label,_that.count,_that.hexColor);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String value,  String label,  int count,  String? hexColor)?  $default,) {final _that = this;
switch (_that) {
case _CatalogFilterValue() when $default != null:
return $default(_that.value,_that.label,_that.count,_that.hexColor);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CatalogFilterValue implements CatalogFilterValue {
  const _CatalogFilterValue({required this.value, required this.label, required this.count, required this.hexColor});
  factory _CatalogFilterValue.fromJson(Map<String, dynamic> json) => _$CatalogFilterValueFromJson(json);

@override final  String value;
@override final  String label;
@override final  int count;
@override final  String? hexColor;

/// Create a copy of CatalogFilterValue
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CatalogFilterValueCopyWith<_CatalogFilterValue> get copyWith => __$CatalogFilterValueCopyWithImpl<_CatalogFilterValue>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CatalogFilterValueToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CatalogFilterValue&&(identical(other.value, value) || other.value == value)&&(identical(other.label, label) || other.label == label)&&(identical(other.count, count) || other.count == count)&&(identical(other.hexColor, hexColor) || other.hexColor == hexColor));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,value,label,count,hexColor);

@override
String toString() {
  return 'CatalogFilterValue(value: $value, label: $label, count: $count, hexColor: $hexColor)';
}


}

/// @nodoc
abstract mixin class _$CatalogFilterValueCopyWith<$Res> implements $CatalogFilterValueCopyWith<$Res> {
  factory _$CatalogFilterValueCopyWith(_CatalogFilterValue value, $Res Function(_CatalogFilterValue) _then) = __$CatalogFilterValueCopyWithImpl;
@override @useResult
$Res call({
 String value, String label, int count, String? hexColor
});




}
/// @nodoc
class __$CatalogFilterValueCopyWithImpl<$Res>
    implements _$CatalogFilterValueCopyWith<$Res> {
  __$CatalogFilterValueCopyWithImpl(this._self, this._then);

  final _CatalogFilterValue _self;
  final $Res Function(_CatalogFilterValue) _then;

/// Create a copy of CatalogFilterValue
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? value = null,Object? label = null,Object? count = null,Object? hexColor = freezed,}) {
  return _then(_CatalogFilterValue(
value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,hexColor: freezed == hexColor ? _self.hexColor : hexColor // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
