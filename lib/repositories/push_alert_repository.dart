import 'package:lotura/core/network/dio.dart';
import 'package:lotura/models/push_alert.dart';

abstract class PushAlertRepository {
  static const String _endpoint = '/push-alerts';

  static Future<List<PushAlertResponse>> getPushAlertsList(
    String fcmToken,
  ) async {
    try {
      final response = await dio.get('$_endpoint/list/$fcmToken');
      return (response.data as List)
          .map((item) => PushAlertResponse.fromJson(item))
          .toList();
    } catch (err) {
      throw Exception(err);
    }
  }

  static Future<String> postPushAlert(
    PushAlertRequest request,
  ) async {
    try {
      final response = await dio.post(
        '$_endpoint/request',
        data: request,
      );
      return response.toString();
    } catch (err) {
      throw Exception(err);
    }
  }
}
