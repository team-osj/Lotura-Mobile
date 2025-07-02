// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../models/device.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DeviceResponse _$DeviceResponseFromJson(Map<String, dynamic> json) {
  return _DeviceResponse.fromJson(json);
}

/// @nodoc
mixin _$DeviceResponse {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'state')
  DeviceStatusType get status => throw _privateConstructorUsedError;
  DeviceType get deviceType => throw _privateConstructorUsedError;
  LocateType? get roomType => throw _privateConstructorUsedError;

  /// Serializes this DeviceResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DeviceResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DeviceResponseCopyWith<DeviceResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeviceResponseCopyWith<$Res> {
  factory $DeviceResponseCopyWith(
          DeviceResponse value, $Res Function(DeviceResponse) then) =
      _$DeviceResponseCopyWithImpl<$Res, DeviceResponse>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'state') DeviceStatusType status,
      DeviceType deviceType,
      LocateType? roomType});
}

/// @nodoc
class _$DeviceResponseCopyWithImpl<$Res, $Val extends DeviceResponse>
    implements $DeviceResponseCopyWith<$Res> {
  _$DeviceResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DeviceResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? status = null,
    Object? deviceType = null,
    Object? roomType = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as DeviceStatusType,
      deviceType: null == deviceType
          ? _value.deviceType
          : deviceType // ignore: cast_nullable_to_non_nullable
              as DeviceType,
      roomType: freezed == roomType
          ? _value.roomType
          : roomType // ignore: cast_nullable_to_non_nullable
              as LocateType?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DeviceResponseImplCopyWith<$Res>
    implements $DeviceResponseCopyWith<$Res> {
  factory _$$DeviceResponseImplCopyWith(_$DeviceResponseImpl value,
          $Res Function(_$DeviceResponseImpl) then) =
      __$$DeviceResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'state') DeviceStatusType status,
      DeviceType deviceType,
      LocateType? roomType});
}

/// @nodoc
class __$$DeviceResponseImplCopyWithImpl<$Res>
    extends _$DeviceResponseCopyWithImpl<$Res, _$DeviceResponseImpl>
    implements _$$DeviceResponseImplCopyWith<$Res> {
  __$$DeviceResponseImplCopyWithImpl(
      _$DeviceResponseImpl _value, $Res Function(_$DeviceResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of DeviceResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? status = null,
    Object? deviceType = null,
    Object? roomType = freezed,
  }) {
    return _then(_$DeviceResponseImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as DeviceStatusType,
      deviceType: null == deviceType
          ? _value.deviceType
          : deviceType // ignore: cast_nullable_to_non_nullable
              as DeviceType,
      roomType: freezed == roomType
          ? _value.roomType
          : roomType // ignore: cast_nullable_to_non_nullable
              as LocateType?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DeviceResponseImpl implements _DeviceResponse {
  const _$DeviceResponseImpl(
      {required this.id,
      @JsonKey(name: 'state') required this.status,
      required this.deviceType,
      this.roomType});

  factory _$DeviceResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeviceResponseImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'state')
  final DeviceStatusType status;
  @override
  final DeviceType deviceType;
  @override
  final LocateType? roomType;

  @override
  String toString() {
    return 'DeviceResponse(id: $id, status: $status, deviceType: $deviceType, roomType: $roomType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeviceResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.deviceType, deviceType) ||
                other.deviceType == deviceType) &&
            (identical(other.roomType, roomType) ||
                other.roomType == roomType));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, status, deviceType, roomType);

  /// Create a copy of DeviceResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeviceResponseImplCopyWith<_$DeviceResponseImpl> get copyWith =>
      __$$DeviceResponseImplCopyWithImpl<_$DeviceResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeviceResponseImplToJson(
      this,
    );
  }
}

abstract class _DeviceResponse implements DeviceResponse {
  const factory _DeviceResponse(
      {required final int id,
      @JsonKey(name: 'state') required final DeviceStatusType status,
      required final DeviceType deviceType,
      final LocateType? roomType}) = _$DeviceResponseImpl;

  factory _DeviceResponse.fromJson(Map<String, dynamic> json) =
      _$DeviceResponseImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'state')
  DeviceStatusType get status;
  @override
  DeviceType get deviceType;
  @override
  LocateType? get roomType;

  /// Create a copy of DeviceResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeviceResponseImplCopyWith<_$DeviceResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
