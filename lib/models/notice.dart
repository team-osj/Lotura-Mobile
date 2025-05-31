import 'package:freezed_annotation/freezed_annotation.dart';

part '../generated/models/notice.g.dart';

part '../generated/models/notice.freezed.dart';

@freezed
abstract class NoticeResponse with _$NoticeResponse {
  const factory NoticeResponse({
    required int id,
    required String title,
    required String contents,
    required DateTime date,
  }) = _NoticeResponse;

  factory NoticeResponse.fromJson(Map<String, dynamic> json) =>
      _$NoticeResponseFromJson(json);
}
