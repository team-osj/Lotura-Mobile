// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../models/laundry.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LaundryResponse _$LaundryResponseFromJson(Map<String, dynamic> json) {
  return _LaundryResponse.fromJson(json);
}

/// @nodoc
mixin _$LaundryResponse {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'deviceType')
  DeviceType get type => throw _privateConstructorUsedError;
  DeviceStatusType get state => throw _privateConstructorUsedError;

  /// Serializes this LaundryResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LaundryResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LaundryResponseCopyWith<LaundryResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LaundryResponseCopyWith<$Res> {
  factory $LaundryResponseCopyWith(
          LaundryResponse value, $Res Function(LaundryResponse) then) =
      _$LaundryResponseCopyWithImpl<$Res, LaundryResponse>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'deviceType') DeviceType type,
      DeviceStatusType state});
}

/// @nodoc
class _$LaundryResponseCopyWithImpl<$Res, $Val extends LaundryResponse>
    implements $LaundryResponseCopyWith<$Res> {
  _$LaundryResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LaundryResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? state = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as DeviceType,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as DeviceStatusType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LaundryResponseImplCopyWith<$Res>
    implements $LaundryResponseCopyWith<$Res> {
  factory _$$LaundryResponseImplCopyWith(_$LaundryResponseImpl value,
          $Res Function(_$LaundryResponseImpl) then) =
      __$$LaundryResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'deviceType') DeviceType type,
      DeviceStatusType state});
}

/// @nodoc
class __$$LaundryResponseImplCopyWithImpl<$Res>
    extends _$LaundryResponseCopyWithImpl<$Res, _$LaundryResponseImpl>
    implements _$$LaundryResponseImplCopyWith<$Res> {
  __$$LaundryResponseImplCopyWithImpl(
      _$LaundryResponseImpl _value, $Res Function(_$LaundryResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of LaundryResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? state = null,
  }) {
    return _then(_$LaundryResponseImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as DeviceType,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as DeviceStatusType,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LaundryResponseImpl implements _LaundryResponse {
  const _$LaundryResponseImpl(
      {required this.id,
      @JsonKey(name: 'deviceType') required this.type,
      required this.state});

  factory _$LaundryResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$LaundryResponseImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'deviceType')
  final DeviceType type;
  @override
  final DeviceStatusType state;

  @override
  String toString() {
    return 'LaundryResponse(id: $id, type: $type, state: $state)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LaundryResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.state, state) || other.state == state));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, type, state);

  /// Create a copy of LaundryResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LaundryResponseImplCopyWith<_$LaundryResponseImpl> get copyWith =>
      __$$LaundryResponseImplCopyWithImpl<_$LaundryResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LaundryResponseImplToJson(
      this,
    );
  }
}

abstract class _LaundryResponse implements LaundryResponse {
  const factory _LaundryResponse(
      {required final int id,
      @JsonKey(name: 'deviceType') required final DeviceType type,
      required final DeviceStatusType state}) = _$LaundryResponseImpl;

  factory _LaundryResponse.fromJson(Map<String, dynamic> json) =
      _$LaundryResponseImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'deviceType')
  DeviceType get type;
  @override
  DeviceStatusType get state;

  /// Create a copy of LaundryResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LaundryResponseImplCopyWith<_$LaundryResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
