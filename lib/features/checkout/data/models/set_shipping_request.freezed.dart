// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'set_shipping_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SetShippingRequest {

 String get courierCode; String get courierService;
/// Create a copy of SetShippingRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SetShippingRequestCopyWith<SetShippingRequest> get copyWith => _$SetShippingRequestCopyWithImpl<SetShippingRequest>(this as SetShippingRequest, _$identity);

  /// Serializes this SetShippingRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SetShippingRequest&&(identical(other.courierCode, courierCode) || other.courierCode == courierCode)&&(identical(other.courierService, courierService) || other.courierService == courierService));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,courierCode,courierService);

@override
String toString() {
  return 'SetShippingRequest(courierCode: $courierCode, courierService: $courierService)';
}


}

/// @nodoc
abstract mixin class $SetShippingRequestCopyWith<$Res>  {
  factory $SetShippingRequestCopyWith(SetShippingRequest value, $Res Function(SetShippingRequest) _then) = _$SetShippingRequestCopyWithImpl;
@useResult
$Res call({
 String courierCode, String courierService
});




}
/// @nodoc
class _$SetShippingRequestCopyWithImpl<$Res>
    implements $SetShippingRequestCopyWith<$Res> {
  _$SetShippingRequestCopyWithImpl(this._self, this._then);

  final SetShippingRequest _self;
  final $Res Function(SetShippingRequest) _then;

/// Create a copy of SetShippingRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? courierCode = null,Object? courierService = null,}) {
  return _then(_self.copyWith(
courierCode: null == courierCode ? _self.courierCode : courierCode // ignore: cast_nullable_to_non_nullable
as String,courierService: null == courierService ? _self.courierService : courierService // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [SetShippingRequest].
extension SetShippingRequestPatterns on SetShippingRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SetShippingRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SetShippingRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SetShippingRequest value)  $default,){
final _that = this;
switch (_that) {
case _SetShippingRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SetShippingRequest value)?  $default,){
final _that = this;
switch (_that) {
case _SetShippingRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String courierCode,  String courierService)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SetShippingRequest() when $default != null:
return $default(_that.courierCode,_that.courierService);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String courierCode,  String courierService)  $default,) {final _that = this;
switch (_that) {
case _SetShippingRequest():
return $default(_that.courierCode,_that.courierService);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String courierCode,  String courierService)?  $default,) {final _that = this;
switch (_that) {
case _SetShippingRequest() when $default != null:
return $default(_that.courierCode,_that.courierService);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SetShippingRequest implements SetShippingRequest {
  const _SetShippingRequest({required this.courierCode, required this.courierService});
  factory _SetShippingRequest.fromJson(Map<String, dynamic> json) => _$SetShippingRequestFromJson(json);

@override final  String courierCode;
@override final  String courierService;

/// Create a copy of SetShippingRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SetShippingRequestCopyWith<_SetShippingRequest> get copyWith => __$SetShippingRequestCopyWithImpl<_SetShippingRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SetShippingRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SetShippingRequest&&(identical(other.courierCode, courierCode) || other.courierCode == courierCode)&&(identical(other.courierService, courierService) || other.courierService == courierService));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,courierCode,courierService);

@override
String toString() {
  return 'SetShippingRequest(courierCode: $courierCode, courierService: $courierService)';
}


}

/// @nodoc
abstract mixin class _$SetShippingRequestCopyWith<$Res> implements $SetShippingRequestCopyWith<$Res> {
  factory _$SetShippingRequestCopyWith(_SetShippingRequest value, $Res Function(_SetShippingRequest) _then) = __$SetShippingRequestCopyWithImpl;
@override @useResult
$Res call({
 String courierCode, String courierService
});




}
/// @nodoc
class __$SetShippingRequestCopyWithImpl<$Res>
    implements _$SetShippingRequestCopyWith<$Res> {
  __$SetShippingRequestCopyWithImpl(this._self, this._then);

  final _SetShippingRequest _self;
  final $Res Function(_SetShippingRequest) _then;

/// Create a copy of SetShippingRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? courierCode = null,Object? courierService = null,}) {
  return _then(_SetShippingRequest(
courierCode: null == courierCode ? _self.courierCode : courierCode // ignore: cast_nullable_to_non_nullable
as String,courierService: null == courierService ? _self.courierService : courierService // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
