import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lotura/models/notice.dart';
import 'package:lotura/repositories/notice_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part '../generated/providers/notice.g.dart';

@riverpod
Future<List<NoticeResponse>> noticeList(Ref ref) async {
  return await NoticeRepository.getNoticeList();
}

@riverpod
Future<NoticeResponse> noticeDetail(Ref ref, String id) async {
  return await NoticeRepository.getNoticeDetail(id: id);
}
