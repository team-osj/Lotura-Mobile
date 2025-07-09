// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../models/push_alert.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PushAlertResponse _$PushAlertResponseFromJson(Map<String, dynamic> json) {
  return _PushAlertResponse.fromJson(json);
}

/// @nodoc
mixin _$PushAlertResponse {
  int get deviceId => throw _privateConstructorUsedError;
  @JsonKey(name: 'state')
  DeviceStatusType get status => throw _privateConstructorUsedError;

  /// Serializes this PushAlertResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PushAlertResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PushAlertResponseCopyWith<PushAlertResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PushAlertResponseCopyWith<$Res> {
  factory $PushAlertResponseCopyWith(
          PushAlertResponse value, $Res Function(PushAlertResponse) then) =
      _$PushAlertResponseCopyWithImpl<$Res, PushAlertResponse>;
  @useResult
  $Res call({int deviceId, @JsonKey(name: 'state') DeviceStatusType status});
}

/// @nodoc
class _$PushAlertResponseCopyWithImpl<$Res, $Val extends PushAlertResponse>
    implements $PushAlertResponseCopyWith<$Res> {
  _$PushAlertResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PushAlertResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deviceId = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      deviceId: null == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as DeviceStatusType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PushAlertResponseImplCopyWith<$Res>
    implements $PushAlertResponseCopyWith<$Res> {
  factory _$$PushAlertResponseImplCopyWith(_$PushAlertResponseImpl value,
          $Res Function(_$PushAlertResponseImpl) then) =
      __$$PushAlertResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int deviceId, @JsonKey(name: 'state') DeviceStatusType status});
}

/// @nodoc
class __$$PushAlertResponseImplCopyWithImpl<$Res>
    extends _$PushAlertResponseCopyWithImpl<$Res, _$PushAlertResponseImpl>
    implements _$$PushAlertResponseImplCopyWith<$Res> {
  __$$PushAlertResponseImplCopyWithImpl(_$PushAlertResponseImpl _value,
      $Res Function(_$PushAlertResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of PushAlertResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deviceId = null,
    Object? status = null,
  }) {
    return _then(_$PushAlertResponseImpl(
      deviceId: null == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as DeviceStatusType,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PushAlertResponseImpl implements _PushAlertResponse {
  const _$PushAlertResponseImpl(
      {required this.deviceId, @JsonKey(name: 'state') required this.status});

  factory _$PushAlertResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$PushAlertResponseImplFromJson(json);

  @override
  final int deviceId;
  @override
  @JsonKey(name: 'state')
  final DeviceStatusType status;

  @override
  String toString() {
    return 'PushAlertResponse(deviceId: $deviceId, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PushAlertResponseImpl &&
            (identical(other.deviceId, deviceId) ||
                other.deviceId == deviceId) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, deviceId, status);

  /// Create a copy of PushAlertResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PushAlertResponseImplCopyWith<_$PushAlertResponseImpl> get copyWith =>
      __$$PushAlertResponseImplCopyWithImpl<_$PushAlertResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PushAlertResponseImplToJson(
      this,
    );
  }
}

abstract class _PushAlertResponse implements PushAlertResponse {
  const factory _PushAlertResponse(
          {required final int deviceId,
          @JsonKey(name: 'state') required final DeviceStatusType status}) =
      _$PushAlertResponseImpl;

  factory _PushAlertResponse.fromJson(Map<String, dynamic> json) =
      _$PushAlertResponseImpl.fromJson;

  @override
  int get deviceId;
  @override
  @JsonKey(name: 'state')
  DeviceStatusType get status;

  /// Create a copy of PushAlertResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PushAlertResponseImplCopyWith<_$PushAlertResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PushAlertRequest {
  String get deviceId => throw _privateConstructorUsedError;
  String get token => throw _privateConstructorUsedError;
  int get expectState => throw _privateConstructorUsedError;

  /// Serializes this PushAlertRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PushAlertRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PushAlertRequestCopyWith<PushAlertRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PushAlertRequestCopyWith<$Res> {
  factory $PushAlertRequestCopyWith(
          PushAlertRequest value, $Res Function(PushAlertRequest) then) =
      _$PushAlertRequestCopyWithImpl<$Res, PushAlertRequest>;
  @useResult
  $Res call({String deviceId, String token, int expectState});
}

/// @nodoc
class _$PushAlertRequestCopyWithImpl<$Res, $Val extends PushAlertRequest>
    implements $PushAlertRequestCopyWith<$Res> {
  _$PushAlertRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PushAlertRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deviceId = null,
    Object? token = null,
    Object? expectState = null,
  }) {
    return _then(_value.copyWith(
      deviceId: null == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      expectState: null == expectState
          ? _value.expectState
          : expectState // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PushAlertRequestImplCopyWith<$Res>
    implements $PushAlertRequestCopyWith<$Res> {
  factory _$$PushAlertRequestImplCopyWith(_$PushAlertRequestImpl value,
          $Res Function(_$PushAlertRequestImpl) then) =
      __$$PushAlertRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String deviceId, String token, int expectState});
}

/// @nodoc
class __$$PushAlertRequestImplCopyWithImpl<$Res>
    extends _$PushAlertRequestCopyWithImpl<$Res, _$PushAlertRequestImpl>
    implements _$$PushAlertRequestImplCopyWith<$Res> {
  __$$PushAlertRequestImplCopyWithImpl(_$PushAlertRequestImpl _value,
      $Res Function(_$PushAlertRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of PushAlertRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deviceId = null,
    Object? token = null,
    Object? expectState = null,
  }) {
    return _then(_$PushAlertRequestImpl(
      deviceId: null == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      expectState: null == expectState
          ? _value.expectState
          : expectState // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable(createFactory: false)
class _$PushAlertRequestImpl implements _PushAlertRequest {
  const _$PushAlertRequestImpl(
      {required this.deviceId, required this.token, required this.expectState});

  @override
  final String deviceId;
  @override
  final String token;
  @override
  final int expectState;

  @override
  String toString() {
    return 'PushAlertRequest(deviceId: $deviceId, token: $token, expectState: $expectState)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PushAlertRequestImpl &&
            (identical(other.deviceId, deviceId) ||
                other.deviceId == deviceId) &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.expectState, expectState) ||
                other.expectState == expectState));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, deviceId, token, expectState);

  /// Create a copy of PushAlertRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PushAlertRequestImplCopyWith<_$PushAlertRequestImpl> get copyWith =>
      __$$PushAlertRequestImplCopyWithImpl<_$PushAlertRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PushAlertRequestImplToJson(
      this,
    );
  }
}

abstract class _PushAlertRequest implements PushAlertRequest {
  const factory _PushAlertRequest(
      {required final String deviceId,
      required final String token,
      required final int expectState}) = _$PushAlertRequestImpl;

  @override
  String get deviceId;
  @override
  String get token;
  @override
  int get expectState;

  /// Create a copy of PushAlertRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PushAlertRequestImplCopyWith<_$PushAlertRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
