// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shipping_cost.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ShippingCost {

 String get courier; List<ShippingService> get services;
/// Create a copy of ShippingCost
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ShippingCostCopyWith<ShippingCost> get copyWith => _$ShippingCostCopyWithImpl<ShippingCost>(this as ShippingCost, _$identity);

  /// Serializes this ShippingCost to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ShippingCost&&(identical(other.courier, courier) || other.courier == courier)&&const DeepCollectionEquality().equals(other.services, services));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,courier,const DeepCollectionEquality().hash(services));

@override
String toString() {
  return 'ShippingCost(courier: $courier, services: $services)';
}


}

/// @nodoc
abstract mixin class $ShippingCostCopyWith<$Res>  {
  factory $ShippingCostCopyWith(ShippingCost value, $Res Function(ShippingCost) _then) = _$ShippingCostCopyWithImpl;
@useResult
$Res call({
 String courier, List<ShippingService> services
});




}
/// @nodoc
class _$ShippingCostCopyWithImpl<$Res>
    implements $ShippingCostCopyWith<$Res> {
  _$ShippingCostCopyWithImpl(this._self, this._then);

  final ShippingCost _self;
  final $Res Function(ShippingCost) _then;

/// Create a copy of ShippingCost
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? courier = null,Object? services = null,}) {
  return _then(_self.copyWith(
courier: null == courier ? _self.courier : courier // ignore: cast_nullable_to_non_nullable
as String,services: null == services ? _self.services : services // ignore: cast_nullable_to_non_nullable
as List<ShippingService>,
  ));
}

}


/// Adds pattern-matching-related methods to [ShippingCost].
extension ShippingCostPatterns on ShippingCost {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ShippingCost value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ShippingCost() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ShippingCost value)  $default,){
final _that = this;
switch (_that) {
case _ShippingCost():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ShippingCost value)?  $default,){
final _that = this;
switch (_that) {
case _ShippingCost() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String courier,  List<ShippingService> services)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ShippingCost() when $default != null:
return $default(_that.courier,_that.services);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String courier,  List<ShippingService> services)  $default,) {final _that = this;
switch (_that) {
case _ShippingCost():
return $default(_that.courier,_that.services);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String courier,  List<ShippingService> services)?  $default,) {final _that = this;
switch (_that) {
case _ShippingCost() when $default != null:
return $default(_that.courier,_that.services);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ShippingCost implements ShippingCost {
  const _ShippingCost({required this.courier, required final  List<ShippingService> services}): _services = services;
  factory _ShippingCost.fromJson(Map<String, dynamic> json) => _$ShippingCostFromJson(json);

@override final  String courier;
 final  List<ShippingService> _services;
@override List<ShippingService> get services {
  if (_services is EqualUnmodifiableListView) return _services;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_services);
}


/// Create a copy of ShippingCost
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ShippingCostCopyWith<_ShippingCost> get copyWith => __$ShippingCostCopyWithImpl<_ShippingCost>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ShippingCostToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ShippingCost&&(identical(other.courier, courier) || other.courier == courier)&&const DeepCollectionEquality().equals(other._services, _services));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,courier,const DeepCollectionEquality().hash(_services));

@override
String toString() {
  return 'ShippingCost(courier: $courier, services: $services)';
}


}

/// @nodoc
abstract mixin class _$ShippingCostCopyWith<$Res> implements $ShippingCostCopyWith<$Res> {
  factory _$ShippingCostCopyWith(_ShippingCost value, $Res Function(_ShippingCost) _then) = __$ShippingCostCopyWithImpl;
@override @useResult
$Res call({
 String courier, List<ShippingService> services
});




}
/// @nodoc
class __$ShippingCostCopyWithImpl<$Res>
    implements _$ShippingCostCopyWith<$Res> {
  __$ShippingCostCopyWithImpl(this._self, this._then);

  final _ShippingCost _self;
  final $Res Function(_ShippingCost) _then;

/// Create a copy of ShippingCost
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? courier = null,Object? services = null,}) {
  return _then(_ShippingCost(
courier: null == courier ? _self.courier : courier // ignore: cast_nullable_to_non_nullable
as String,services: null == services ? _self._services : services // ignore: cast_nullable_to_non_nullable
as List<ShippingService>,
  ));
}


}


/// @nodoc
mixin _$ShippingService {

 String get name; String get code; String get service; String get description; int get cost; String get etd;
/// Create a copy of ShippingService
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ShippingServiceCopyWith<ShippingService> get copyWith => _$ShippingServiceCopyWithImpl<ShippingService>(this as ShippingService, _$identity);

  /// Serializes this ShippingService to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ShippingService&&(identical(other.name, name) || other.name == name)&&(identical(other.code, code) || other.code == code)&&(identical(other.service, service) || other.service == service)&&(identical(other.description, description) || other.description == description)&&(identical(other.cost, cost) || other.cost == cost)&&(identical(other.etd, etd) || other.etd == etd));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,code,service,description,cost,etd);

@override
String toString() {
  return 'ShippingService(name: $name, code: $code, service: $service, description: $description, cost: $cost, etd: $etd)';
}


}

/// @nodoc
abstract mixin class $ShippingServiceCopyWith<$Res>  {
  factory $ShippingServiceCopyWith(ShippingService value, $Res Function(ShippingService) _then) = _$ShippingServiceCopyWithImpl;
@useResult
$Res call({
 String name, String code, String service, String description, int cost, String etd
});




}
/// @nodoc
class _$ShippingServiceCopyWithImpl<$Res>
    implements $ShippingServiceCopyWith<$Res> {
  _$ShippingServiceCopyWithImpl(this._self, this._then);

  final ShippingService _self;
  final $Res Function(ShippingService) _then;

/// Create a copy of ShippingService
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? code = null,Object? service = null,Object? description = null,Object? cost = null,Object? etd = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,service: null == service ? _self.service : service // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,cost: null == cost ? _self.cost : cost // ignore: cast_nullable_to_non_nullable
as int,etd: null == etd ? _self.etd : etd // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ShippingService].
extension ShippingServicePatterns on ShippingService {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ShippingService value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ShippingService() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ShippingService value)  $default,){
final _that = this;
switch (_that) {
case _ShippingService():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ShippingService value)?  $default,){
final _that = this;
switch (_that) {
case _ShippingService() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  String code,  String service,  String description,  int cost,  String etd)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ShippingService() when $default != null:
return $default(_that.name,_that.code,_that.service,_that.description,_that.cost,_that.etd);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  String code,  String service,  String description,  int cost,  String etd)  $default,) {final _that = this;
switch (_that) {
case _ShippingService():
return $default(_that.name,_that.code,_that.service,_that.description,_that.cost,_that.etd);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  String code,  String service,  String description,  int cost,  String etd)?  $default,) {final _that = this;
switch (_that) {
case _ShippingService() when $default != null:
return $default(_that.name,_that.code,_that.service,_that.description,_that.cost,_that.etd);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ShippingService implements ShippingService {
  const _ShippingService({required this.name, required this.code, required this.service, required this.description, required this.cost, required this.etd});
  factory _ShippingService.fromJson(Map<String, dynamic> json) => _$ShippingServiceFromJson(json);

@override final  String name;
@override final  String code;
@override final  String service;
@override final  String description;
@override final  int cost;
@override final  String etd;

/// Create a copy of ShippingService
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ShippingServiceCopyWith<_ShippingService> get copyWith => __$ShippingServiceCopyWithImpl<_ShippingService>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ShippingServiceToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ShippingService&&(identical(other.name, name) || other.name == name)&&(identical(other.code, code) || other.code == code)&&(identical(other.service, service) || other.service == service)&&(identical(other.description, description) || other.description == description)&&(identical(other.cost, cost) || other.cost == cost)&&(identical(other.etd, etd) || other.etd == etd));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,code,service,description,cost,etd);

@override
String toString() {
  return 'ShippingService(name: $name, code: $code, service: $service, description: $description, cost: $cost, etd: $etd)';
}


}

/// @nodoc
abstract mixin class _$ShippingServiceCopyWith<$Res> implements $ShippingServiceCopyWith<$Res> {
  factory _$ShippingServiceCopyWith(_ShippingService value, $Res Function(_ShippingService) _then) = __$ShippingServiceCopyWithImpl;
@override @useResult
$Res call({
 String name, String code, String service, String description, int cost, String etd
});




}
/// @nodoc
class __$ShippingServiceCopyWithImpl<$Res>
    implements _$ShippingServiceCopyWith<$Res> {
  __$ShippingServiceCopyWithImpl(this._self, this._then);

  final _ShippingService _self;
  final $Res Function(_ShippingService) _then;

/// Create a copy of ShippingService
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? code = null,Object? service = null,Object? description = null,Object? cost = null,Object? etd = null,}) {
  return _then(_ShippingService(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,service: null == service ? _self.service : service // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,cost: null == cost ? _self.cost : cost // ignore: cast_nullable_to_non_nullable
as int,etd: null == etd ? _self.etd : etd // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
