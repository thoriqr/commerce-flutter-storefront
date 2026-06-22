// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'catalog_filter_group.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CatalogFilterGroup {

 String get name; String get label; List<CatalogFilterValue> get values;
/// Create a copy of CatalogFilterGroup
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CatalogFilterGroupCopyWith<CatalogFilterGroup> get copyWith => _$CatalogFilterGroupCopyWithImpl<CatalogFilterGroup>(this as CatalogFilterGroup, _$identity);

  /// Serializes this CatalogFilterGroup to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CatalogFilterGroup&&(identical(other.name, name) || other.name == name)&&(identical(other.label, label) || other.label == label)&&const DeepCollectionEquality().equals(other.values, values));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,label,const DeepCollectionEquality().hash(values));

@override
String toString() {
  return 'CatalogFilterGroup(name: $name, label: $label, values: $values)';
}


}

/// @nodoc
abstract mixin class $CatalogFilterGroupCopyWith<$Res>  {
  factory $CatalogFilterGroupCopyWith(CatalogFilterGroup value, $Res Function(CatalogFilterGroup) _then) = _$CatalogFilterGroupCopyWithImpl;
@useResult
$Res call({
 String name, String label, List<CatalogFilterValue> values
});




}
/// @nodoc
class _$CatalogFilterGroupCopyWithImpl<$Res>
    implements $CatalogFilterGroupCopyWith<$Res> {
  _$CatalogFilterGroupCopyWithImpl(this._self, this._then);

  final CatalogFilterGroup _self;
  final $Res Function(CatalogFilterGroup) _then;

/// Create a copy of CatalogFilterGroup
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? label = null,Object? values = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,values: null == values ? _self.values : values // ignore: cast_nullable_to_non_nullable
as List<CatalogFilterValue>,
  ));
}

}


/// Adds pattern-matching-related methods to [CatalogFilterGroup].
extension CatalogFilterGroupPatterns on CatalogFilterGroup {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CatalogFilterGroup value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CatalogFilterGroup() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CatalogFilterGroup value)  $default,){
final _that = this;
switch (_that) {
case _CatalogFilterGroup():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CatalogFilterGroup value)?  $default,){
final _that = this;
switch (_that) {
case _CatalogFilterGroup() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  String label,  List<CatalogFilterValue> values)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CatalogFilterGroup() when $default != null:
return $default(_that.name,_that.label,_that.values);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  String label,  List<CatalogFilterValue> values)  $default,) {final _that = this;
switch (_that) {
case _CatalogFilterGroup():
return $default(_that.name,_that.label,_that.values);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  String label,  List<CatalogFilterValue> values)?  $default,) {final _that = this;
switch (_that) {
case _CatalogFilterGroup() when $default != null:
return $default(_that.name,_that.label,_that.values);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CatalogFilterGroup implements CatalogFilterGroup {
  const _CatalogFilterGroup({required this.name, required this.label, required final  List<CatalogFilterValue> values}): _values = values;
  factory _CatalogFilterGroup.fromJson(Map<String, dynamic> json) => _$CatalogFilterGroupFromJson(json);

@override final  String name;
@override final  String label;
 final  List<CatalogFilterValue> _values;
@override List<CatalogFilterValue> get values {
  if (_values is EqualUnmodifiableListView) return _values;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_values);
}


/// Create a copy of CatalogFilterGroup
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CatalogFilterGroupCopyWith<_CatalogFilterGroup> get copyWith => __$CatalogFilterGroupCopyWithImpl<_CatalogFilterGroup>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CatalogFilterGroupToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CatalogFilterGroup&&(identical(other.name, name) || other.name == name)&&(identical(other.label, label) || other.label == label)&&const DeepCollectionEquality().equals(other._values, _values));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,label,const DeepCollectionEquality().hash(_values));

@override
String toString() {
  return 'CatalogFilterGroup(name: $name, label: $label, values: $values)';
}


}

/// @nodoc
abstract mixin class _$CatalogFilterGroupCopyWith<$Res> implements $CatalogFilterGroupCopyWith<$Res> {
  factory _$CatalogFilterGroupCopyWith(_CatalogFilterGroup value, $Res Function(_CatalogFilterGroup) _then) = __$CatalogFilterGroupCopyWithImpl;
@override @useResult
$Res call({
 String name, String label, List<CatalogFilterValue> values
});




}
/// @nodoc
class __$CatalogFilterGroupCopyWithImpl<$Res>
    implements _$CatalogFilterGroupCopyWith<$Res> {
  __$CatalogFilterGroupCopyWithImpl(this._self, this._then);

  final _CatalogFilterGroup _self;
  final $Res Function(_CatalogFilterGroup) _then;

/// Create a copy of CatalogFilterGroup
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? label = null,Object? values = null,}) {
  return _then(_CatalogFilterGroup(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,values: null == values ? _self._values : values // ignore: cast_nullable_to_non_nullable
as List<CatalogFilterValue>,
  ));
}


}

// dart format on
