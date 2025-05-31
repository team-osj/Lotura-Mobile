// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../models/laundry.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LaundryResponse {
  int get id;
  DeviceType get deviceType;
  int get state;

  /// Create a copy of LaundryResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LaundryResponseCopyWith<LaundryResponse> get copyWith =>
      _$LaundryResponseCopyWithImpl<LaundryResponse>(
          this as LaundryResponse, _$identity);

  /// Serializes this LaundryResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LaundryResponse &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.deviceType, deviceType) ||
                other.deviceType == deviceType) &&
            (identical(other.state, state) || other.state == state));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, deviceType, state);

  @override
  String toString() {
    return 'LaundryResponse(id: $id, deviceType: $deviceType, state: $state)';
  }
}

/// @nodoc
abstract mixin class $LaundryResponseCopyWith<$Res> {
  factory $LaundryResponseCopyWith(
          LaundryResponse value, $Res Function(LaundryResponse) _then) =
      _$LaundryResponseCopyWithImpl;
  @useResult
  $Res call({int id, DeviceType deviceType, int state});
}

/// @nodoc
class _$LaundryResponseCopyWithImpl<$Res>
    implements $LaundryResponseCopyWith<$Res> {
  _$LaundryResponseCopyWithImpl(this._self, this._then);

  final LaundryResponse _self;
  final $Res Function(LaundryResponse) _then;

  /// Create a copy of LaundryResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? deviceType = null,
    Object? state = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      deviceType: null == deviceType
          ? _self.deviceType
          : deviceType // ignore: cast_nullable_to_non_nullable
              as DeviceType,
      state: null == state
          ? _self.state
          : state // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _LaundryResponse implements LaundryResponse {
  const _LaundryResponse(
      {required this.id, required this.deviceType, required this.state});
  factory _LaundryResponse.fromJson(Map<String, dynamic> json) =>
      _$LaundryResponseFromJson(json);

  @override
  final int id;
  @override
  final DeviceType deviceType;
  @override
  final int state;

  /// Create a copy of LaundryResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$LaundryResponseCopyWith<_LaundryResponse> get copyWith =>
      __$LaundryResponseCopyWithImpl<_LaundryResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$LaundryResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LaundryResponse &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.deviceType, deviceType) ||
                other.deviceType == deviceType) &&
            (identical(other.state, state) || other.state == state));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, deviceType, state);

  @override
  String toString() {
    return 'LaundryResponse(id: $id, deviceType: $deviceType, state: $state)';
  }
}

/// @nodoc
abstract mixin class _$LaundryResponseCopyWith<$Res>
    implements $LaundryResponseCopyWith<$Res> {
  factory _$LaundryResponseCopyWith(
          _LaundryResponse value, $Res Function(_LaundryResponse) _then) =
      __$LaundryResponseCopyWithImpl;
  @override
  @useResult
  $Res call({int id, DeviceType deviceType, int state});
}

/// @nodoc
class __$LaundryResponseCopyWithImpl<$Res>
    implements _$LaundryResponseCopyWith<$Res> {
  __$LaundryResponseCopyWithImpl(this._self, this._then);

  final _LaundryResponse _self;
  final $Res Function(_LaundryResponse) _then;

  /// Create a copy of LaundryResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? deviceType = null,
    Object? state = null,
  }) {
    return _then(_LaundryResponse(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      deviceType: null == deviceType
          ? _self.deviceType
          : deviceType // ignore: cast_nullable_to_non_nullable
              as DeviceType,
      state: null == state
          ? _self.state
          : state // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

// dart format on
