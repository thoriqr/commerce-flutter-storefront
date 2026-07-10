// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'upsert_address_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$UpsertAddressState {

 Province? get province; City? get city; District? get district; bool get restoringSelection;
/// Create a copy of UpsertAddressState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpsertAddressStateCopyWith<UpsertAddressState> get copyWith => _$UpsertAddressStateCopyWithImpl<UpsertAddressState>(this as UpsertAddressState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpsertAddressState&&(identical(other.province, province) || other.province == province)&&(identical(other.city, city) || other.city == city)&&(identical(other.district, district) || other.district == district)&&(identical(other.restoringSelection, restoringSelection) || other.restoringSelection == restoringSelection));
}


@override
int get hashCode => Object.hash(runtimeType,province,city,district,restoringSelection);

@override
String toString() {
  return 'UpsertAddressState(province: $province, city: $city, district: $district, restoringSelection: $restoringSelection)';
}


}

/// @nodoc
abstract mixin class $UpsertAddressStateCopyWith<$Res>  {
  factory $UpsertAddressStateCopyWith(UpsertAddressState value, $Res Function(UpsertAddressState) _then) = _$UpsertAddressStateCopyWithImpl;
@useResult
$Res call({
 Province? province, City? city, District? district, bool restoringSelection
});


$ProvinceCopyWith<$Res>? get province;$CityCopyWith<$Res>? get city;$DistrictCopyWith<$Res>? get district;

}
/// @nodoc
class _$UpsertAddressStateCopyWithImpl<$Res>
    implements $UpsertAddressStateCopyWith<$Res> {
  _$UpsertAddressStateCopyWithImpl(this._self, this._then);

  final UpsertAddressState _self;
  final $Res Function(UpsertAddressState) _then;

/// Create a copy of UpsertAddressState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? province = freezed,Object? city = freezed,Object? district = freezed,Object? restoringSelection = null,}) {
  return _then(_self.copyWith(
province: freezed == province ? _self.province : province // ignore: cast_nullable_to_non_nullable
as Province?,city: freezed == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as City?,district: freezed == district ? _self.district : district // ignore: cast_nullable_to_non_nullable
as District?,restoringSelection: null == restoringSelection ? _self.restoringSelection : restoringSelection // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of UpsertAddressState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProvinceCopyWith<$Res>? get province {
    if (_self.province == null) {
    return null;
  }

  return $ProvinceCopyWith<$Res>(_self.province!, (value) {
    return _then(_self.copyWith(province: value));
  });
}/// Create a copy of UpsertAddressState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CityCopyWith<$Res>? get city {
    if (_self.city == null) {
    return null;
  }

  return $CityCopyWith<$Res>(_self.city!, (value) {
    return _then(_self.copyWith(city: value));
  });
}/// Create a copy of UpsertAddressState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DistrictCopyWith<$Res>? get district {
    if (_self.district == null) {
    return null;
  }

  return $DistrictCopyWith<$Res>(_self.district!, (value) {
    return _then(_self.copyWith(district: value));
  });
}
}


/// Adds pattern-matching-related methods to [UpsertAddressState].
extension UpsertAddressStatePatterns on UpsertAddressState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UpsertAddressState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UpsertAddressState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UpsertAddressState value)  $default,){
final _that = this;
switch (_that) {
case _UpsertAddressState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UpsertAddressState value)?  $default,){
final _that = this;
switch (_that) {
case _UpsertAddressState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Province? province,  City? city,  District? district,  bool restoringSelection)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UpsertAddressState() when $default != null:
return $default(_that.province,_that.city,_that.district,_that.restoringSelection);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Province? province,  City? city,  District? district,  bool restoringSelection)  $default,) {final _that = this;
switch (_that) {
case _UpsertAddressState():
return $default(_that.province,_that.city,_that.district,_that.restoringSelection);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Province? province,  City? city,  District? district,  bool restoringSelection)?  $default,) {final _that = this;
switch (_that) {
case _UpsertAddressState() when $default != null:
return $default(_that.province,_that.city,_that.district,_that.restoringSelection);case _:
  return null;

}
}

}

/// @nodoc


class _UpsertAddressState implements UpsertAddressState {
  const _UpsertAddressState({this.province, this.city, this.district, this.restoringSelection = false});
  

@override final  Province? province;
@override final  City? city;
@override final  District? district;
@override@JsonKey() final  bool restoringSelection;

/// Create a copy of UpsertAddressState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpsertAddressStateCopyWith<_UpsertAddressState> get copyWith => __$UpsertAddressStateCopyWithImpl<_UpsertAddressState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpsertAddressState&&(identical(other.province, province) || other.province == province)&&(identical(other.city, city) || other.city == city)&&(identical(other.district, district) || other.district == district)&&(identical(other.restoringSelection, restoringSelection) || other.restoringSelection == restoringSelection));
}


@override
int get hashCode => Object.hash(runtimeType,province,city,district,restoringSelection);

@override
String toString() {
  return 'UpsertAddressState(province: $province, city: $city, district: $district, restoringSelection: $restoringSelection)';
}


}

/// @nodoc
abstract mixin class _$UpsertAddressStateCopyWith<$Res> implements $UpsertAddressStateCopyWith<$Res> {
  factory _$UpsertAddressStateCopyWith(_UpsertAddressState value, $Res Function(_UpsertAddressState) _then) = __$UpsertAddressStateCopyWithImpl;
@override @useResult
$Res call({
 Province? province, City? city, District? district, bool restoringSelection
});


@override $ProvinceCopyWith<$Res>? get province;@override $CityCopyWith<$Res>? get city;@override $DistrictCopyWith<$Res>? get district;

}
/// @nodoc
class __$UpsertAddressStateCopyWithImpl<$Res>
    implements _$UpsertAddressStateCopyWith<$Res> {
  __$UpsertAddressStateCopyWithImpl(this._self, this._then);

  final _UpsertAddressState _self;
  final $Res Function(_UpsertAddressState) _then;

/// Create a copy of UpsertAddressState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? province = freezed,Object? city = freezed,Object? district = freezed,Object? restoringSelection = null,}) {
  return _then(_UpsertAddressState(
province: freezed == province ? _self.province : province // ignore: cast_nullable_to_non_nullable
as Province?,city: freezed == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as City?,district: freezed == district ? _self.district : district // ignore: cast_nullable_to_non_nullable
as District?,restoringSelection: null == restoringSelection ? _self.restoringSelection : restoringSelection // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of UpsertAddressState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProvinceCopyWith<$Res>? get province {
    if (_self.province == null) {
    return null;
  }

  return $ProvinceCopyWith<$Res>(_self.province!, (value) {
    return _then(_self.copyWith(province: value));
  });
}/// Create a copy of UpsertAddressState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CityCopyWith<$Res>? get city {
    if (_self.city == null) {
    return null;
  }

  return $CityCopyWith<$Res>(_self.city!, (value) {
    return _then(_self.copyWith(city: value));
  });
}/// Create a copy of UpsertAddressState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DistrictCopyWith<$Res>? get district {
    if (_self.district == null) {
    return null;
  }

  return $DistrictCopyWith<$Res>(_self.district!, (value) {
    return _then(_self.copyWith(district: value));
  });
}
}

// dart format on
