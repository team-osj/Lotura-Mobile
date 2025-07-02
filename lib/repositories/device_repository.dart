import 'package:lotura/core/network/dio.dart';
import 'package:lotura/models/device.dart';

abstract class DeviceRepository {
  static Future<List<DeviceResponse>> getAllDevices() async {
    try {
      final response = await dio.get('/device');
      return (response.data as List)
          .map((item) => DeviceResponse.fromJson(item))
          .toList();
    } catch (err) {
      throw Exception(err);
    }
  }
}
