// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'snap_token_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SnapTokenResponse {

 String get token; String get redirect_url;
/// Create a copy of SnapTokenResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SnapTokenResponseCopyWith<SnapTokenResponse> get copyWith => _$SnapTokenResponseCopyWithImpl<SnapTokenResponse>(this as SnapTokenResponse, _$identity);

  /// Serializes this SnapTokenResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SnapTokenResponse&&(identical(other.token, token) || other.token == token)&&(identical(other.redirect_url, redirect_url) || other.redirect_url == redirect_url));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,token,redirect_url);

@override
String toString() {
  return 'SnapTokenResponse(token: $token, redirect_url: $redirect_url)';
}


}

/// @nodoc
abstract mixin class $SnapTokenResponseCopyWith<$Res>  {
  factory $SnapTokenResponseCopyWith(SnapTokenResponse value, $Res Function(SnapTokenResponse) _then) = _$SnapTokenResponseCopyWithImpl;
@useResult
$Res call({
 String token, String redirect_url
});




}
/// @nodoc
class _$SnapTokenResponseCopyWithImpl<$Res>
    implements $SnapTokenResponseCopyWith<$Res> {
  _$SnapTokenResponseCopyWithImpl(this._self, this._then);

  final SnapTokenResponse _self;
  final $Res Function(SnapTokenResponse) _then;

/// Create a copy of SnapTokenResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? token = null,Object? redirect_url = null,}) {
  return _then(_self.copyWith(
token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,redirect_url: null == redirect_url ? _self.redirect_url : redirect_url // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [SnapTokenResponse].
extension SnapTokenResponsePatterns on SnapTokenResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SnapTokenResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SnapTokenResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SnapTokenResponse value)  $default,){
final _that = this;
switch (_that) {
case _SnapTokenResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SnapTokenResponse value)?  $default,){
final _that = this;
switch (_that) {
case _SnapTokenResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String token,  String redirect_url)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SnapTokenResponse() when $default != null:
return $default(_that.token,_that.redirect_url);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String token,  String redirect_url)  $default,) {final _that = this;
switch (_that) {
case _SnapTokenResponse():
return $default(_that.token,_that.redirect_url);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String token,  String redirect_url)?  $default,) {final _that = this;
switch (_that) {
case _SnapTokenResponse() when $default != null:
return $default(_that.token,_that.redirect_url);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SnapTokenResponse implements SnapTokenResponse {
  const _SnapTokenResponse({required this.token, required this.redirect_url});
  factory _SnapTokenResponse.fromJson(Map<String, dynamic> json) => _$SnapTokenResponseFromJson(json);

@override final  String token;
@override final  String redirect_url;

/// Create a copy of SnapTokenResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SnapTokenResponseCopyWith<_SnapTokenResponse> get copyWith => __$SnapTokenResponseCopyWithImpl<_SnapTokenResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SnapTokenResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SnapTokenResponse&&(identical(other.token, token) || other.token == token)&&(identical(other.redirect_url, redirect_url) || other.redirect_url == redirect_url));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,token,redirect_url);

@override
String toString() {
  return 'SnapTokenResponse(token: $token, redirect_url: $redirect_url)';
}


}

/// @nodoc
abstract mixin class _$SnapTokenResponseCopyWith<$Res> implements $SnapTokenResponseCopyWith<$Res> {
  factory _$SnapTokenResponseCopyWith(_SnapTokenResponse value, $Res Function(_SnapTokenResponse) _then) = __$SnapTokenResponseCopyWithImpl;
@override @useResult
$Res call({
 String token, String redirect_url
});




}
/// @nodoc
class __$SnapTokenResponseCopyWithImpl<$Res>
    implements _$SnapTokenResponseCopyWith<$Res> {
  __$SnapTokenResponseCopyWithImpl(this._self, this._then);

  final _SnapTokenResponse _self;
  final $Res Function(_SnapTokenResponse) _then;

/// Create a copy of SnapTokenResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? token = null,Object? redirect_url = null,}) {
  return _then(_SnapTokenResponse(
token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,redirect_url: null == redirect_url ? _self.redirect_url : redirect_url // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
