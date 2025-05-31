// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../models/notice.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$NoticeResponse {
  int get id;
  String get title;
  String get contents;
  DateTime get date;

  /// Create a copy of NoticeResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $NoticeResponseCopyWith<NoticeResponse> get copyWith =>
      _$NoticeResponseCopyWithImpl<NoticeResponse>(
          this as NoticeResponse, _$identity);

  /// Serializes this NoticeResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is NoticeResponse &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.contents, contents) ||
                other.contents == contents) &&
            (identical(other.date, date) || other.date == date));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, contents, date);

  @override
  String toString() {
    return 'NoticeResponse(id: $id, title: $title, contents: $contents, date: $date)';
  }
}

/// @nodoc
abstract mixin class $NoticeResponseCopyWith<$Res> {
  factory $NoticeResponseCopyWith(
          NoticeResponse value, $Res Function(NoticeResponse) _then) =
      _$NoticeResponseCopyWithImpl;
  @useResult
  $Res call({int id, String title, String contents, DateTime date});
}

/// @nodoc
class _$NoticeResponseCopyWithImpl<$Res>
    implements $NoticeResponseCopyWith<$Res> {
  _$NoticeResponseCopyWithImpl(this._self, this._then);

  final NoticeResponse _self;
  final $Res Function(NoticeResponse) _then;

  /// Create a copy of NoticeResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? contents = null,
    Object? date = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      contents: null == contents
          ? _self.contents
          : contents // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _self.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _NoticeResponse implements NoticeResponse {
  const _NoticeResponse(
      {required this.id,
      required this.title,
      required this.contents,
      required this.date});
  factory _NoticeResponse.fromJson(Map<String, dynamic> json) =>
      _$NoticeResponseFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  final String contents;
  @override
  final DateTime date;

  /// Create a copy of NoticeResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$NoticeResponseCopyWith<_NoticeResponse> get copyWith =>
      __$NoticeResponseCopyWithImpl<_NoticeResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$NoticeResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NoticeResponse &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.contents, contents) ||
                other.contents == contents) &&
            (identical(other.date, date) || other.date == date));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, contents, date);

  @override
  String toString() {
    return 'NoticeResponse(id: $id, title: $title, contents: $contents, date: $date)';
  }
}

/// @nodoc
abstract mixin class _$NoticeResponseCopyWith<$Res>
    implements $NoticeResponseCopyWith<$Res> {
  factory _$NoticeResponseCopyWith(
          _NoticeResponse value, $Res Function(_NoticeResponse) _then) =
      __$NoticeResponseCopyWithImpl;
  @override
  @useResult
  $Res call({int id, String title, String contents, DateTime date});
}

/// @nodoc
class __$NoticeResponseCopyWithImpl<$Res>
    implements _$NoticeResponseCopyWith<$Res> {
  __$NoticeResponseCopyWithImpl(this._self, this._then);

  final _NoticeResponse _self;
  final $Res Function(_NoticeResponse) _then;

  /// Create a copy of NoticeResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? contents = null,
    Object? date = null,
  }) {
    return _then(_NoticeResponse(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      contents: null == contents
          ? _self.contents
          : contents // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _self.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

// dart format on
