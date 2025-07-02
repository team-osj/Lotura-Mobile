import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lotura/core/type/device_status_type.dart';
import 'package:lotura/core/type/device_type.dart';
import 'package:lotura/core/type/locate_type.dart';

part '../generated/models/device.freezed.dart';
part '../generated/models/device.g.dart';

@freezed
class DeviceResponse with _$DeviceResponse {
  const factory DeviceResponse({
    required int id,
    @JsonKey(name: 'state')
    required DeviceStatusType status,
    required DeviceType deviceType,
    LocateType? roomType,
  }) = _DeviceResponse;

  factory DeviceResponse.fromJson(Map<String, dynamic> json) =>
      _$DeviceResponseFromJson(json);
}
