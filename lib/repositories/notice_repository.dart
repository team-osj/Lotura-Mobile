import 'package:lotura/core/network/dio.dart';
import 'package:lotura/models/notice.dart';

abstract class NoticeRepository {
  static Future<List<NoticeResponse>> getNoticeList() async {
    try {
      final response = await dio.get('/notices');
      return (response.data as List)
          .map((item) => NoticeResponse.fromJson(item))
          .toList();
    } catch (err) {
      throw Exception(err);
    }
  }

  static Future<NoticeResponse> getNoticeDetail({required String id}) async {
    try {
      final response = await dio.get('/notices/$id');
      return NoticeResponse.fromJson(response.data);
    } catch (err) {
      throw Exception(err);
    }
  }
}
