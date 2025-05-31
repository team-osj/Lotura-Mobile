// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../models/notice.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_NoticeResponse _$NoticeResponseFromJson(Map<String, dynamic> json) =>
    _NoticeResponse(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      contents: json['contents'] as String,
      date: DateTime.parse(json['date'] as String),
    );

Map<String, dynamic> _$NoticeResponseToJson(_NoticeResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'contents': instance.contents,
      'date': instance.date.toIso8601String(),
    };
