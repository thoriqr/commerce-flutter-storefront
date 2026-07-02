// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_cart_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AddCartRequest {

 int get variantId; int get quantity;
/// Create a copy of AddCartRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddCartRequestCopyWith<AddCartRequest> get copyWith => _$AddCartRequestCopyWithImpl<AddCartRequest>(this as AddCartRequest, _$identity);

  /// Serializes this AddCartRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddCartRequest&&(identical(other.variantId, variantId) || other.variantId == variantId)&&(identical(other.quantity, quantity) || other.quantity == quantity));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,variantId,quantity);

@override
String toString() {
  return 'AddCartRequest(variantId: $variantId, quantity: $quantity)';
}


}

/// @nodoc
abstract mixin class $AddCartRequestCopyWith<$Res>  {
  factory $AddCartRequestCopyWith(AddCartRequest value, $Res Function(AddCartRequest) _then) = _$AddCartRequestCopyWithImpl;
@useResult
$Res call({
 int variantId, int quantity
});




}
/// @nodoc
class _$AddCartRequestCopyWithImpl<$Res>
    implements $AddCartRequestCopyWith<$Res> {
  _$AddCartRequestCopyWithImpl(this._self, this._then);

  final AddCartRequest _self;
  final $Res Function(AddCartRequest) _then;

/// Create a copy of AddCartRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? variantId = null,Object? quantity = null,}) {
  return _then(_self.copyWith(
variantId: null == variantId ? _self.variantId : variantId // ignore: cast_nullable_to_non_nullable
as int,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [AddCartRequest].
extension AddCartRequestPatterns on AddCartRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AddCartRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AddCartRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AddCartRequest value)  $default,){
final _that = this;
switch (_that) {
case _AddCartRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AddCartRequest value)?  $default,){
final _that = this;
switch (_that) {
case _AddCartRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int variantId,  int quantity)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AddCartRequest() when $default != null:
return $default(_that.variantId,_that.quantity);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int variantId,  int quantity)  $default,) {final _that = this;
switch (_that) {
case _AddCartRequest():
return $default(_that.variantId,_that.quantity);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int variantId,  int quantity)?  $default,) {final _that = this;
switch (_that) {
case _AddCartRequest() when $default != null:
return $default(_that.variantId,_that.quantity);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AddCartRequest implements AddCartRequest {
  const _AddCartRequest({required this.variantId, required this.quantity});
  factory _AddCartRequest.fromJson(Map<String, dynamic> json) => _$AddCartRequestFromJson(json);

@override final  int variantId;
@override final  int quantity;

/// Create a copy of AddCartRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddCartRequestCopyWith<_AddCartRequest> get copyWith => __$AddCartRequestCopyWithImpl<_AddCartRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AddCartRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddCartRequest&&(identical(other.variantId, variantId) || other.variantId == variantId)&&(identical(other.quantity, quantity) || other.quantity == quantity));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,variantId,quantity);

@override
String toString() {
  return 'AddCartRequest(variantId: $variantId, quantity: $quantity)';
}


}

/// @nodoc
abstract mixin class _$AddCartRequestCopyWith<$Res> implements $AddCartRequestCopyWith<$Res> {
  factory _$AddCartRequestCopyWith(_AddCartRequest value, $Res Function(_AddCartRequest) _then) = __$AddCartRequestCopyWithImpl;
@override @useResult
$Res call({
 int variantId, int quantity
});




}
/// @nodoc
class __$AddCartRequestCopyWithImpl<$Res>
    implements _$AddCartRequestCopyWith<$Res> {
  __$AddCartRequestCopyWithImpl(this._self, this._then);

  final _AddCartRequest _self;
  final $Res Function(_AddCartRequest) _then;

/// Create a copy of AddCartRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? variantId = null,Object? quantity = null,}) {
  return _then(_AddCartRequest(
variantId: null == variantId ? _self.variantId : variantId // ignore: cast_nullable_to_non_nullable
as int,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
