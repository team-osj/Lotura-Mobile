import 'package:lotura/core/network/dio.dart';
import 'package:lotura/models/device.dart';

abstract class DeviceRepository {
  static const String _endpoint = '/device';
  static Future<List<DeviceResponse>> getAllDevices() async {
    try {
      final response = await dio.get(_endpoint);
      return (response.data as List)
          .map((item) => DeviceResponse.fromJson(item))
          .toList();
    } catch (err) {
      throw Exception(err);
    }
  }
}
