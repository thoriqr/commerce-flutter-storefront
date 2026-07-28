// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_login_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AuthLoginResult {

 int get userId; String get accessToken; String get refreshToken;
/// Create a copy of AuthLoginResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuthLoginResultCopyWith<AuthLoginResult> get copyWith => _$AuthLoginResultCopyWithImpl<AuthLoginResult>(this as AuthLoginResult, _$identity);

  /// Serializes this AuthLoginResult to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthLoginResult&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.accessToken, accessToken) || other.accessToken == accessToken)&&(identical(other.refreshToken, refreshToken) || other.refreshToken == refreshToken));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,accessToken,refreshToken);

@override
String toString() {
  return 'AuthLoginResult(userId: $userId, accessToken: $accessToken, refreshToken: $refreshToken)';
}


}

/// @nodoc
abstract mixin class $AuthLoginResultCopyWith<$Res>  {
  factory $AuthLoginResultCopyWith(AuthLoginResult value, $Res Function(AuthLoginResult) _then) = _$AuthLoginResultCopyWithImpl;
@useResult
$Res call({
 int userId, String accessToken, String refreshToken
});




}
/// @nodoc
class _$AuthLoginResultCopyWithImpl<$Res>
    implements $AuthLoginResultCopyWith<$Res> {
  _$AuthLoginResultCopyWithImpl(this._self, this._then);

  final AuthLoginResult _self;
  final $Res Function(AuthLoginResult) _then;

/// Create a copy of AuthLoginResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userId = null,Object? accessToken = null,Object? refreshToken = null,}) {
  return _then(_self.copyWith(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int,accessToken: null == accessToken ? _self.accessToken : accessToken // ignore: cast_nullable_to_non_nullable
as String,refreshToken: null == refreshToken ? _self.refreshToken : refreshToken // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [AuthLoginResult].
extension AuthLoginResultPatterns on AuthLoginResult {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AuthLoginResult value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AuthLoginResult() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AuthLoginResult value)  $default,){
final _that = this;
switch (_that) {
case _AuthLoginResult():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AuthLoginResult value)?  $default,){
final _that = this;
switch (_that) {
case _AuthLoginResult() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int userId,  String accessToken,  String refreshToken)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AuthLoginResult() when $default != null:
return $default(_that.userId,_that.accessToken,_that.refreshToken);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int userId,  String accessToken,  String refreshToken)  $default,) {final _that = this;
switch (_that) {
case _AuthLoginResult():
return $default(_that.userId,_that.accessToken,_that.refreshToken);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int userId,  String accessToken,  String refreshToken)?  $default,) {final _that = this;
switch (_that) {
case _AuthLoginResult() when $default != null:
return $default(_that.userId,_that.accessToken,_that.refreshToken);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AuthLoginResult implements AuthLoginResult {
  const _AuthLoginResult({required this.userId, required this.accessToken, required this.refreshToken});
  factory _AuthLoginResult.fromJson(Map<String, dynamic> json) => _$AuthLoginResultFromJson(json);

@override final  int userId;
@override final  String accessToken;
@override final  String refreshToken;

/// Create a copy of AuthLoginResult
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AuthLoginResultCopyWith<_AuthLoginResult> get copyWith => __$AuthLoginResultCopyWithImpl<_AuthLoginResult>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AuthLoginResultToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuthLoginResult&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.accessToken, accessToken) || other.accessToken == accessToken)&&(identical(other.refreshToken, refreshToken) || other.refreshToken == refreshToken));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,accessToken,refreshToken);

@override
String toString() {
  return 'AuthLoginResult(userId: $userId, accessToken: $accessToken, refreshToken: $refreshToken)';
}


}

/// @nodoc
abstract mixin class _$AuthLoginResultCopyWith<$Res> implements $AuthLoginResultCopyWith<$Res> {
  factory _$AuthLoginResultCopyWith(_AuthLoginResult value, $Res Function(_AuthLoginResult) _then) = __$AuthLoginResultCopyWithImpl;
@override @useResult
$Res call({
 int userId, String accessToken, String refreshToken
});




}
/// @nodoc
class __$AuthLoginResultCopyWithImpl<$Res>
    implements _$AuthLoginResultCopyWith<$Res> {
  __$AuthLoginResultCopyWithImpl(this._self, this._then);

  final _AuthLoginResult _self;
  final $Res Function(_AuthLoginResult) _then;

/// Create a copy of AuthLoginResult
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userId = null,Object? accessToken = null,Object? refreshToken = null,}) {
  return _then(_AuthLoginResult(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int,accessToken: null == accessToken ? _self.accessToken : accessToken // ignore: cast_nullable_to_non_nullable
as String,refreshToken: null == refreshToken ? _self.refreshToken : refreshToken // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
