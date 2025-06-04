// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../models/notice.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NoticeResponseImpl _$$NoticeResponseImplFromJson(Map<String, dynamic> json) =>
    _$NoticeResponseImpl(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      contents: json['contents'] as String,
      date: DateTime.parse(json['date'] as String),
    );

Map<String, dynamic> _$$NoticeResponseImplToJson(
        _$NoticeResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'contents': instance.contents,
      'date': instance.date.toIso8601String(),
    };
